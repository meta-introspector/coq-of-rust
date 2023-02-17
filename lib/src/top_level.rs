extern crate rustc_hir;
extern crate rustc_middle;

use crate::expression::*;
use crate::header::*;
use crate::path::*;
use crate::render::*;
use crate::ty::*;
use pretty::RcDoc;

#[derive(Debug)]
enum TraitItem {
    Definition { ty: Type },
    Type,
}

/// Representation of top-level hir [Item]s in coq-of-rust
/// See https://doc.rust-lang.org/reference/items.html
#[derive(Debug)]
enum TopLevelItem {
    Definition {
        name: String,
        args: Vec<(String, Type)>,
        ret_ty: Option<Type>,
        body: Expr,
    },
    TypeAlias {
        name: String,
        ty: Box<Type>,
    },
    TypeRecord {
        name: String,
        fields: Vec<(String, Type)>,
    },
    Module {
        name: String,
        body: TopLevel,
    },
    Impl {
        self_ty: Type,
        of_trait: Option<Path>,
        body: TopLevel,
    },
    Trait {
        name: String,
        body: Vec<(String, TraitItem)>,
    },
    Error(String),
}

#[derive(Debug)]
pub struct TopLevel(Vec<TopLevelItem>);

/// [compile_top_level_item] compiles hir [Item]s into coq-of-rust (optional)
/// items.
/// - See https://doc.rust-lang.org/stable/nightly-rustc/rustc_hir/struct.Item.html
///   and the doc for [TopLevelItem]
/// - [rustc_middle::hir::map::Map] is intuitively the type for hir environments
/// - Method [body] allows retrievient the body of an identifier [body_id] in an
///   hir environment [hir]
fn compile_top_level_item(
    tcx: rustc_middle::ty::TyCtxt,
    item: &rustc_hir::Item,
) -> Vec<TopLevelItem> {
    match &item.kind {
        rustc_hir::ItemKind::ExternCrate(_) => vec![],
        rustc_hir::ItemKind::Use(_, _) => vec![],
        // rustc_hir::ItemKind::Static(_, _, body_id) => {
        //     let expr = tcx.hir().body(*body_id).value;
        //     vec![TopLevelItem::Definition {
        //         name: item.ident.name.to_string(),
        //         args: vec![],
        //         ret_ty: None,
        //         body: compile_expr(tcx, expr),
        //     }]
        // }
        // rustc_hir::ItemKind::Const(_, body_id) => {
        //     let expr = tcx.hir().body(*body_id).value;
        //     vec![TopLevelItem::Definition {
        //         name: item.ident.name.to_string(),
        //         args: vec![],
        //         ret_ty: None,
        //         body: compile_expr(tcx, expr),
        //     }]
        // }
        // rustc_hir::ItemKind::Fn(_fn_sig, _, body_id) => {
        //     let expr = tcx.hir().body(*body_id).value;
        //     vec![TopLevelItem::Definition {
        //         name: item.ident.name.to_string(),
        //         args: vec![],
        //         ret_ty: None,
        //         body: compile_expr(tcx, expr),
        //     }]
        // }
        rustc_hir::ItemKind::Macro(_, _) => vec![],
        rustc_hir::ItemKind::Mod(module) => {
            let items = module
                .item_ids
                .iter()
                .flat_map(|item_id| {
                    let item = tcx.hir().item(*item_id);
                    compile_top_level_item(tcx, item)
                })
                .collect();
            vec![TopLevelItem::Module {
                name: item.ident.name.to_string(),
                body: TopLevel(items),
            }]
        }
        rustc_hir::ItemKind::ForeignMod { .. } => {
            vec![TopLevelItem::Error("ForeignMod".to_string())]
        }
        rustc_hir::ItemKind::GlobalAsm(_) => vec![TopLevelItem::Error("GlobalAsm".to_string())],
        rustc_hir::ItemKind::TyAlias(_, _) => vec![TopLevelItem::Error("TyAlias".to_string())],
        rustc_hir::ItemKind::OpaqueTy(_) => vec![TopLevelItem::Error("OpaqueTy".to_string())],
        rustc_hir::ItemKind::Enum(_, _) => vec![TopLevelItem::Error("Enum".to_string())],
        rustc_hir::ItemKind::Struct(body, _) => match body {
            rustc_hir::VariantData::Struct(fields, _) => {
                let fields = fields
                    .iter()
                    .map(|field| (field.ident.name.to_string(), compile_type(field.ty)))
                    .collect();
                vec![TopLevelItem::TypeRecord {
                    name: item.ident.name.to_string(),
                    fields,
                }]
            }
            rustc_hir::VariantData::Tuple(fields, _, _) => {
                let ty = Box::new(Type::Tuple(
                    fields.iter().map(|field| compile_type(field.ty)).collect(),
                ));
                vec![TopLevelItem::TypeAlias {
                    name: item.ident.name.to_string(),
                    ty,
                }]
            }
            rustc_hir::VariantData::Unit(_, _) => vec![TopLevelItem::Error("Struct".to_string())],
        },
        rustc_hir::ItemKind::Union(_, _) => vec![TopLevelItem::Error("Union".to_string())],
        rustc_hir::ItemKind::Trait(_, _, _, _, items) => {
            vec![TopLevelItem::Trait {
                name: item.ident.name.to_string(),
                body: items
                    .iter()
                    .map(|item| {
                        let item = tcx.hir().trait_item(item.id);
                        let body = match &item.kind {
                            rustc_hir::TraitItemKind::Const(ty, _) => TraitItem::Definition {
                                ty: compile_type(ty),
                            },
                            rustc_hir::TraitItemKind::Fn(fn_sig, _) => TraitItem::Definition {
                                ty: compile_fn_decl(fn_sig.decl),
                            },
                            rustc_hir::TraitItemKind::Type(_, _) => TraitItem::Type,
                        };
                        (item.ident.name.to_string(), body)
                    })
                    .collect(),
            }]
        }
        rustc_hir::ItemKind::TraitAlias(_, _) => {
            vec![TopLevelItem::Error("TraitAlias".to_string())]
        }
        rustc_hir::ItemKind::Impl(rustc_hir::Impl {
            items,
            self_ty,
            of_trait,
            ..
        }) => {
            let items = items
                .iter()
                .flat_map(|item| {
                    let item = tcx.hir().impl_item(item.id);
                    match &item.kind {
                        // rustc_hir::ImplItemKind::Const(_, body_id) => {
                        //     let expr = tcx.hir().body(*body_id).value;
                        //     vec![TopLevelItem::Definition {
                        //         name: item.ident.name.to_string(),
                        //         args: vec![],
                        //         ret_ty: None,
                        //         body: compile_expr(tcx, expr),
                        //     }]
                        // }
                        rustc_hir::ImplItemKind::Fn(fn_sig, body_id) => {
                            let cr = tcx.typeck_body(*body_id);
                            // println!();
                            // println!("cr: {:?}", cr);
                            // println!();
                            let arg_names = tcx.hir().body(*body_id).params.iter().map(|param| {
                                match param.pat.kind {
                                    rustc_hir::PatKind::Binding(_, _, ident, _) => {
                                        ident.name.to_string()
                                    }
                                    _ => "Pattern".to_string(),
                                }
                            });
                            let arg_tys = fn_sig.decl.inputs.iter().map(compile_type);
                            let ret_ty = compile_fn_ret_ty(&fn_sig.decl.output);
                            let expr = tcx.hir().body(*body_id).value;
                            vec![TopLevelItem::Definition {
                                name: item.ident.name.to_string(),
                                args: arg_names.zip(arg_tys).collect(),
                                ret_ty,
                                body: compile_expr(tcx, cr, expr),
                            }]
                        }
                        rustc_hir::ImplItemKind::Type(ty) => vec![TopLevelItem::TypeAlias {
                            name: item.ident.name.to_string(),
                            ty: Box::new(compile_type(ty)),
                        }],
                        _ => vec![],
                    }
                })
                .collect();
            let self_ty = compile_type(self_ty);
            vec![TopLevelItem::Impl {
                self_ty,
                of_trait: of_trait
                    .as_ref()
                    .map(|trait_ref| compile_path(trait_ref.path)),
                body: TopLevel(items),
            }]
        }
        _ => vec![],
    }
}

pub fn compile_top_level(tcx: rustc_middle::ty::TyCtxt) -> TopLevel {
    TopLevel(
        tcx.hir()
            .items()
            .flat_map(|item_id| {
                let item = tcx.hir().item(item_id);
                compile_top_level_item(tcx, item)
            })
            .collect(),
    )
}

impl TraitItem {
    fn to_doc(&self) -> RcDoc {
        match self {
            TraitItem::Definition { ty } => ty.to_doc(),
            TraitItem::Type => RcDoc::text("Set"),
        }
    }
}

impl TopLevelItem {
    fn to_doc(&self) -> RcDoc {
        match self {
            TopLevelItem::Definition {
                name,
                args,
                ret_ty,
                body,
            } => indent(RcDoc::concat([
                RcDoc::concat([
                    RcDoc::text("Definition"),
                    RcDoc::line(),
                    RcDoc::text(name),
                    RcDoc::line(),
                    if args.is_empty() {
                        RcDoc::text("(_ : unit)")
                    } else {
                        RcDoc::intersperse(
                            args.iter().map(|(name, ty)| {
                                RcDoc::concat([indent(
                                    RcDoc::concat([
                                        RcDoc::text("("),
                                        RcDoc::text(name),
                                        RcDoc::line(),
                                        RcDoc::text(":"),
                                        RcDoc::line(),
                                        ty.to_doc(),
                                        RcDoc::text(")"),
                                    ])
                                    .group(),
                                )])
                            }),
                            RcDoc::line(),
                        )
                    },
                    RcDoc::line(),
                    indent(RcDoc::concat([
                        match ret_ty {
                            Some(ty) => RcDoc::concat([
                                RcDoc::text(":"),
                                RcDoc::line(),
                                ty.to_doc(),
                                RcDoc::line(),
                            ]),
                            None => RcDoc::nil(),
                        },
                        RcDoc::text(":="),
                    ]))
                    .group(),
                ])
                .group(),
                RcDoc::concat([
                    RcDoc::hardline().append(body.to_doc(false)),
                    RcDoc::text("."),
                ]),
            ])),
            TopLevelItem::Module { name, body } => indent(RcDoc::concat([
                RcDoc::text("Module"),
                RcDoc::space(),
                RcDoc::text(name),
                RcDoc::space(),
                RcDoc::text(":="),
                RcDoc::hardline().append(body.to_doc()).group(),
                RcDoc::text("."),
            ])),
            TopLevelItem::TypeAlias { name, ty } => indent(RcDoc::concat([
                RcDoc::concat([
                    RcDoc::text("Definition"),
                    RcDoc::space(),
                    RcDoc::text(name),
                    RcDoc::space(),
                    RcDoc::text(":"),
                    RcDoc::space(),
                    RcDoc::text("Set"),
                    RcDoc::space(),
                    RcDoc::text(":="),
                ])
                .group(),
                RcDoc::hardline(),
                ty.to_doc(),
                RcDoc::text("."),
            ])),
            TopLevelItem::TypeRecord { name, fields } => {
                let fields = fields.iter().map(|(name, ty)| {
                    RcDoc::concat([
                        RcDoc::hardline(),
                        indent(RcDoc::concat([
                            RcDoc::text(name),
                            RcDoc::line(),
                            RcDoc::text(":"),
                            RcDoc::line(),
                            ty.to_doc(),
                            RcDoc::text(";"),
                        ]))
                        .group(),
                    ])
                });
                RcDoc::concat([
                    indent(RcDoc::concat([
                        RcDoc::text("Module"),
                        RcDoc::line(),
                        RcDoc::text(name),
                        RcDoc::text("."),
                    ]))
                    .group(),
                    indent(RcDoc::concat([
                        RcDoc::hardline(),
                        indent(RcDoc::concat([
                            RcDoc::text("Record"),
                            RcDoc::line(),
                            RcDoc::text("t"),
                            RcDoc::line(),
                            indent(RcDoc::concat([
                                RcDoc::text(":"),
                                RcDoc::line(),
                                RcDoc::text("Set"),
                                RcDoc::line(),
                                RcDoc::text(":="),
                                RcDoc::line(),
                                RcDoc::text("{"),
                            ]))
                            .group(),
                        ]))
                        .group(),
                        indent(RcDoc::concat([RcDoc::intersperse(fields, RcDoc::nil())])),
                        RcDoc::hardline(),
                        RcDoc::text("}."),
                    ])),
                    RcDoc::hardline(),
                    indent(RcDoc::concat([
                        RcDoc::text("End"),
                        RcDoc::line(),
                        RcDoc::text(name),
                        RcDoc::text("."),
                    ]))
                    .group(),
                    RcDoc::hardline(),
                    indent(RcDoc::concat([
                        RcDoc::text("Definition"),
                        RcDoc::line(),
                        RcDoc::text(name),
                        RcDoc::line(),
                        RcDoc::text(":"),
                        RcDoc::line(),
                        RcDoc::text("Set"),
                        RcDoc::line(),
                        RcDoc::text(":="),
                        RcDoc::line(),
                        RcDoc::text(name),
                        RcDoc::text("."),
                        RcDoc::text("t"),
                        RcDoc::text("."),
                    ]))
                    .group(),
                ])
            }
            TopLevelItem::Impl {
                self_ty,
                of_trait,
                body,
            } => RcDoc::concat([
                RcDoc::text("(* Impl ["),
                self_ty.to_doc(),
                RcDoc::text("] "),
                match of_trait {
                    Some(trait_ty) => RcDoc::concat([
                        RcDoc::text("of trait ["),
                        trait_ty.to_doc(),
                        RcDoc::text("]"),
                    ]),
                    None => RcDoc::nil(),
                },
                RcDoc::text("*)"),
                RcDoc::hardline(),
                indent(RcDoc::concat([
                    RcDoc::text("Module"),
                    RcDoc::line(),
                    RcDoc::text("Impl"),
                    self_ty.to_doc(),
                    RcDoc::text("."),
                ]))
                .group(),
                indent(RcDoc::concat([RcDoc::hardline(), body.to_doc()])),
                RcDoc::hardline(),
                indent(RcDoc::concat([
                    RcDoc::text("End"),
                    RcDoc::line(),
                    RcDoc::text("Impl"),
                    self_ty.to_doc(),
                    RcDoc::text("."),
                ]))
                .group(),
                RcDoc::hardline(),
                RcDoc::text("(* End impl ["),
                self_ty.to_doc(),
                RcDoc::text("] *)"),
            ]),
            TopLevelItem::Trait { name, body } => RcDoc::concat([
                indent(RcDoc::concat([
                    RcDoc::concat([
                        RcDoc::text("Class"),
                        RcDoc::line(),
                        RcDoc::text(name),
                        RcDoc::line(),
                        RcDoc::text(":"),
                        RcDoc::line(),
                        RcDoc::text("Set"),
                        RcDoc::line(),
                        RcDoc::text(":="),
                        RcDoc::line(),
                        RcDoc::text("{"),
                    ])
                    .group(),
                    RcDoc::concat(body.iter().map(|(name, item)| {
                        RcDoc::concat([
                            RcDoc::hardline(),
                            indent(RcDoc::concat([
                                RcDoc::text(name),
                                RcDoc::line(),
                                RcDoc::text(":"),
                                RcDoc::line(),
                                item.to_doc(),
                                RcDoc::text(";"),
                            ]))
                            .group(),
                        ])
                    })),
                ])),
                RcDoc::hardline(),
                RcDoc::text("}."),
            ]),
            TopLevelItem::Error(message) => RcDoc::concat([
                RcDoc::text("Error"),
                RcDoc::space(),
                RcDoc::text(message),
                RcDoc::text("."),
            ]),
        }
    }
}

impl TopLevel {
    fn to_doc(&self) -> RcDoc {
        RcDoc::intersperse(
            self.0.iter().map(|item| item.to_doc()),
            RcDoc::hardline().append(RcDoc::hardline()),
        )
    }

    pub fn to_pretty(&self, width: usize) -> String {
        let mut w = Vec::new();
        self.to_doc().render(width, &mut w).unwrap();
        format!("{}\n{}", HEADER, String::from_utf8(w).unwrap())
    }
}
