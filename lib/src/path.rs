extern crate rustc_hir;

use pretty::RcDoc;
use std::fmt;

#[derive(Debug)]
pub struct Path {
    segments: Vec<String>,
}

impl fmt::Display for Path {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        let segments = self.segments.join("::");
        write!(f, "{segments}")
    }
}

impl Path {
    pub fn local(name: String) -> Path {
        Path {
            segments: vec![name],
        }
    }
}

pub fn compile_path(path: &rustc_hir::Path) -> Path {
    Path {
        segments: path
            .segments
            .iter()
            .map(|segment| to_valid_coq_name(segment.ident.name.to_string()))
            .collect(),
    }
}

fn prefix_last_by_impl(path: &mut Path) {
    let last = path.segments.pop().unwrap();
    path.segments.push(format!("Impl{last}"));
}

pub fn compile_qpath(qpath: &rustc_hir::QPath) -> Path {
    match qpath {
        rustc_hir::QPath::Resolved(_, path) => compile_path(path),
        rustc_hir::QPath::TypeRelative(ty, segment) => {
            let ty = match ty.kind {
                rustc_hir::TyKind::Path(rustc_hir::QPath::Resolved(_, path)) => {
                    let mut path = compile_path(path);
                    prefix_last_by_impl(&mut path);
                    path
                }
                _ => Path::local("ComplexTypePath".to_string()),
            };
            Path {
                segments: vec![ty.to_string(), segment.ident.name.to_string()],
            }
        }
        rustc_hir::QPath::LangItem(lang_item, _, _) => Path {
            segments: vec![lang_item.name().to_string()],
        },
    }
}

fn to_valid_coq_name(str: String) -> String {
    str.chars()
        .map(|char| if char == '$' { '_' } else { char })
        .collect()
}

impl Path {
    pub fn to_doc(&self) -> RcDoc<()> {
        RcDoc::intersperse(self.segments.iter().map(RcDoc::text), RcDoc::text("."))
    }
}