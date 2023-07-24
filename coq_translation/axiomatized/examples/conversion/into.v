(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Number.
  Unset Primitive Projections.
  Record t : Set := {
    value : i32;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_value : Notation.Dot "value" := {
    Notation.dot '(Build_t x0) := x0;
  }.
End Number.
Definition Number : Set := Number.t.

Module Impl_core_fmt_Debug_for_into_Number.
  Definition Self := into.Number.
  
  Parameter debug_struct_field1_finish : core.fmt.Formatter -> string -> 
    string -> i32 -> 
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
End Impl_core_fmt_Debug_for_into_Number.

Module Impl_core_convert_From_for_into_Number.
  Definition Self := into.Number.
  
  Parameter from : forall `{H : State.Trait}, i32 -> M (H := H) Self.
  
  Global Instance AssociatedFunction_from `{H : State.Trait} :
    Notation.DoubleColon Self "from" := {
    Notation.double_colon := from;
  }.
  
  Global Instance I : core.convert.From.Trait Self (T := i32) := {
    core.convert.From.from `{H : State.Trait} := from;
  }.
End Impl_core_convert_From_for_into_Number.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{H : State.Trait}, M (H := H) unit.
