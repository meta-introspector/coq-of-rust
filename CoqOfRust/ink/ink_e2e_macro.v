(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition
    ALREADY_BUILT_CONTRACTS
    `{H : State.Trait} :
    std.thread.local.LocalKey
      (core.cell.RefCell
        (std.collections.hash.map.HashMap
          alloc.string.String
          alloc.string.String)) :=
  run
    (std.thread.local.LocalKey::["new"]
      ink_e2e_macro.codegen.ALREADY_BUILT_CONTRACTS.__getit).

Parameter already_built_contracts : forall `{H : State.Trait},
    M (H := H)
      (std.collections.hash.map.HashMap
        alloc.string.String
        alloc.string.String).

Parameter set_already_built_contracts : forall `{H : State.Trait},
    std.collections.hash.map.HashMap alloc.string.String alloc.string.String ->
    M (H := H) unit.

Module InkE2ETest.
  Unset Primitive Projections.
  Record t : Set := {
    test : ink_e2e_macro.ir.InkE2ETest;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_test : Notation.Dot "test" := {
    Notation.dot '(Build_t x0) := x0;
  }.
End InkE2ETest.
Definition InkE2ETest : Set := @InkE2ETest.t.

Module E2EConfig.
  Unset Primitive Projections.
  Record t : Set := {
    whitelisted_attributes : ink_ir.ir.utils.WhitelistedAttributes;
    additional_contracts : alloc.vec.Vec alloc.string.String;
    environment : core.option.Option syn.path.Path;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_whitelisted_attributes :
      Notation.Dot "whitelisted_attributes" := {
    Notation.dot '(Build_t x0 _ _) := x0;
  }.
  Global Instance Get_additional_contracts :
      Notation.Dot "additional_contracts" := {
    Notation.dot '(Build_t _ x1 _) := x1;
  }.
  Global Instance Get_environment : Notation.Dot "environment" := {
    Notation.dot '(Build_t _ _ x2) := x2;
  }.
End E2EConfig.
Definition E2EConfig : Set := @E2EConfig.t.

Module InkE2ETest.
  Unset Primitive Projections.
  Record t : Set := {
    item_fn : ink_e2e_macro.ir.E2EFn;
    config : ink_e2e_macro.config.E2EConfig;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_item_fn : Notation.Dot "item_fn" := {
    Notation.dot '(Build_t x0 _) := x0;
  }.
  Global Instance Get_config : Notation.Dot "config" := {
    Notation.dot '(Build_t _ x1) := x1;
  }.
End InkE2ETest.
Definition InkE2ETest : Set := @InkE2ETest.t.

Module E2EFn.
  Unset Primitive Projections.
  Record t : Set := {
    item_fn : syn.item.ItemFn;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_item_fn : Notation.Dot "item_fn" := {
    Notation.dot '(Build_t x0) := x0;
  }.
End E2EFn.
Definition E2EFn : Set := @E2EFn.t.

Parameter test : forall `{H : State.Trait},
    proc_macro.TokenStream ->
    proc_macro.TokenStream ->
    M (H := H) proc_macro.TokenStream.
