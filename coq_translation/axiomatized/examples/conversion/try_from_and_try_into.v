(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module EvenNumber.
  Section EvenNumber.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Record t : Set := {
      x0 : i32;
    }.
    Global Set Primitive Projections.
    
    Global Instance Get_0 : Notation.Dot "0" := {
      Notation.dot x := let* x := M.read x in Pure x.(x0) : M _;
    }.
  End EvenNumber.
End EvenNumber.
Definition EvenNumber `{ℋ : State.Trait} : Set := M.val EvenNumber.t.

Module Impl_core_fmt_Debug_for_try_from_and_try_into_EvenNumber.
  Section Impl_core_fmt_Debug_for_try_from_and_try_into_EvenNumber.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := try_from_and_try_into.EvenNumber.
    
    Parameter fmt :
        (ref Self) -> (mut_ref core.fmt.Formatter) -> M core.fmt.Result.
    
    Global Instance AssociatedFunction_fmt :
      Notation.DoubleColon Self "fmt" := {
      Notation.double_colon := fmt;
    }.
    
    Global Instance ℐ : core.fmt.Debug.Trait Self := {
      core.fmt.Debug.fmt := fmt;
    }.
  End Impl_core_fmt_Debug_for_try_from_and_try_into_EvenNumber.
  Global Hint Resolve ℐ : core.
End Impl_core_fmt_Debug_for_try_from_and_try_into_EvenNumber.

Module
  Impl_core_marker_StructuralPartialEq_for_try_from_and_try_into_EvenNumber.
  Section
    Impl_core_marker_StructuralPartialEq_for_try_from_and_try_into_EvenNumber.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := try_from_and_try_into.EvenNumber.
    
    Global Instance ℐ : core.marker.StructuralPartialEq.Trait Self := {
    }.
  End Impl_core_marker_StructuralPartialEq_for_try_from_and_try_into_EvenNumber.
  Global Hint Resolve ℐ : core.
End Impl_core_marker_StructuralPartialEq_for_try_from_and_try_into_EvenNumber.

Module Impl_core_cmp_PartialEq_for_try_from_and_try_into_EvenNumber.
  Section Impl_core_cmp_PartialEq_for_try_from_and_try_into_EvenNumber.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := try_from_and_try_into.EvenNumber.
    
    Parameter eq :
        (ref Self) -> (ref try_from_and_try_into.EvenNumber) -> M bool.
    
    Global Instance AssociatedFunction_eq : Notation.DoubleColon Self "eq" := {
      Notation.double_colon := eq;
    }.
    
    Global Instance ℐ :
      core.cmp.PartialEq.Trait Self
        (Rhs := core.cmp.PartialEq.Default.Rhs Self) := {
      core.cmp.PartialEq.eq := eq;
    }.
  End Impl_core_cmp_PartialEq_for_try_from_and_try_into_EvenNumber.
  Global Hint Resolve ℐ : core.
End Impl_core_cmp_PartialEq_for_try_from_and_try_into_EvenNumber.

Module Impl_core_convert_TryFrom_for_try_from_and_try_into_EvenNumber.
  Section Impl_core_convert_TryFrom_for_try_from_and_try_into_EvenNumber.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := try_from_and_try_into.EvenNumber.
    
    Definition Error : Set := unit.
    
    Parameter try_from : i32 -> M (core.result.Result Self Error).
    
    Global Instance AssociatedFunction_try_from :
      Notation.DoubleColon Self "try_from" := {
      Notation.double_colon := try_from;
    }.
    
    Global Instance ℐ : core.convert.TryFrom.Trait Self (T := i32) := {
      core.convert.TryFrom.Error := Error;
      core.convert.TryFrom.try_from := try_from;
    }.
  End Impl_core_convert_TryFrom_for_try_from_and_try_into_EvenNumber.
  Global Hint Resolve ℐ : core.
End Impl_core_convert_TryFrom_for_try_from_and_try_into_EvenNumber.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{ℋ : State.Trait}, M unit.
