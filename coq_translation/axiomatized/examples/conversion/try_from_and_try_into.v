(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module EvenNumber.
  Unset Primitive Projections.
  Record t : Set := {
    _ : i32;
  }.
  Global Set Primitive Projections.
  
    Global Instance Get_0 : Notation.Dot 0 := {
      Notation.dot '(Build_t x0) := x0;
    }.
End EvenNumber.
Definition EvenNumber := EvenNumber.t.

Module Impl_core_fmt_Debug_for_try_from_and_try_into_EvenNumber.
  Definition Self := try_from_and_try_into.EvenNumber.
  
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
End Impl_core_fmt_Debug_for_try_from_and_try_into_EvenNumber.

Module
  Impl_core_marker_StructuralPartialEq_for_try_from_and_try_into_EvenNumber.
  Definition Self := try_from_and_try_into.EvenNumber.
  
  Global Instance I : core.marker.StructuralPartialEq.Trait Self :=
    core.marker.StructuralPartialEq.Build_Trait _.
End Impl_core_marker_StructuralPartialEq_for_try_from_and_try_into_EvenNumber.

Module Impl_core_cmp_PartialEq_for_try_from_and_try_into_EvenNumber.
  Definition Self := try_from_and_try_into.EvenNumber.
  
  Parameter eq : forall `{H : State.Trait},
      ref Self ->
      ref try_from_and_try_into.EvenNumber ->
      M (H := H) bool.
  
  Global Instance Method_eq `{H : State.Trait} : Notation.Dot "eq" := {
    Notation.dot := eq;
  }.
  
  Global Instance I : core.cmp.PartialEq.Trait Self := {
    core.cmp.PartialEq.eq `{H : State.Trait} := eq;
  }.
End Impl_core_cmp_PartialEq_for_try_from_and_try_into_EvenNumber.

Module Impl_core_convert_TryFrom_for_try_from_and_try_into_EvenNumber.
  Definition Self := try_from_and_try_into.EvenNumber.
  
  Definition Error : Set := unit.
  
  Parameter try_from : forall `{H : State.Trait},
      i32 ->
      M (H := H) (core.result.Result Self ImplSelf.Error).
  
  Global Instance AssociatedFunction_try_from `{H : State.Trait} :
    Notation.DoubleColon Self "try_from" := {
    Notation.double_colon := try_from;
  }.
  
  Global Instance I : core.convert.TryFrom.Trait Self (T := i32) := {
    core.convert.TryFrom.try_from `{H : State.Trait} := try_from;
  }.
End Impl_core_convert_TryFrom_for_try_from_and_try_into_EvenNumber.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{H : State.Trait}, M (H := H) unit.
