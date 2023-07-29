(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Borrowed.
  Unset Primitive Projections.
  Record t : Set := {
    x : ref i32;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_x : Notation.Dot "x" := {
    Notation.dot '(Build_t x0) := x0;
  }.
End Borrowed.
Definition Borrowed : Set := @Borrowed.t.

Module Impl_core_fmt_Debug_for_scoping_rules_lifetimes_traits_Borrowed.
  Definition Self := scoping_rules_lifetimes_traits.Borrowed.
  
  Parameter debug_struct_field1_finish : core.fmt.Formatter -> string -> 
    string -> StaticRef_i32 -> 
    M (H := H) core.fmt.Result.
  
  Global Instance Deb_debug_struct_field1_finish : Notation.DoubleColon
    core.fmt.Formatter "debug_struct_field1_finish" := {
    Notation.double_colon := debug_struct_field1_finish; }.
  
  Parameter fmt : forall `{H : State.Trait},
      ref Self ->
      mut_ref core.fmt.Formatter ->
      M (H := H) core.fmt.Result.
  
  Global Instance Method_fmt `{H : State.Trait} : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt `{H : State.Trait} := fmt;
  }.
End Impl_core_fmt_Debug_for_scoping_rules_lifetimes_traits_Borrowed.

Module Impl_core_default_Default_for_scoping_rules_lifetimes_traits_Borrowed.
  Definition Self := scoping_rules_lifetimes_traits.Borrowed.
  
  Parameter default : forall `{H : State.Trait}, M (H := H) Self.
  
  Global Instance AssociatedFunction_default `{H : State.Trait} :
    Notation.DoubleColon Self "default" := {
    Notation.double_colon := default;
  }.
  
  Global Instance I : core.default.Default.Trait Self := {
    core.default.Default.default `{H : State.Trait} := default;
  }.
End Impl_core_default_Default_for_scoping_rules_lifetimes_traits_Borrowed.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{H : State.Trait}, M (H := H) unit.
