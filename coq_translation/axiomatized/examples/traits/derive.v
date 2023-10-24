(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Centimeters.
  Section Centimeters.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Record t : Set := {
      x0 : f64;
    }.
    Global Set Primitive Projections.
    
    Global Instance Get_0 : Notation.Dot "0" := {
      Notation.dot x := let* x := M.read x in Pure x.(x0) : M _;
    }.
  End Centimeters.
End Centimeters.
Definition Centimeters `{ℋ : State.Trait} : Set := M.val Centimeters.t.

Module Impl_core_marker_StructuralPartialEq_for_derive_Centimeters.
  Section Impl_core_marker_StructuralPartialEq_for_derive_Centimeters.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := derive.Centimeters.
    
    Global Instance ℐ : core.marker.StructuralPartialEq.Trait Self := {
    }.
  End Impl_core_marker_StructuralPartialEq_for_derive_Centimeters.
  Global Hint Resolve ℐ : core.
End Impl_core_marker_StructuralPartialEq_for_derive_Centimeters.

Module Impl_core_cmp_PartialEq_for_derive_Centimeters.
  Section Impl_core_cmp_PartialEq_for_derive_Centimeters.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := derive.Centimeters.
    
    Parameter eq : (ref Self) -> (ref derive.Centimeters) -> M bool.
    
    Global Instance AssociatedFunction_eq : Notation.DoubleColon Self "eq" := {
      Notation.double_colon := eq;
    }.
    
    Global Instance ℐ :
      core.cmp.PartialEq.Trait Self
        (Rhs := core.cmp.PartialEq.Default.Rhs Self) := {
      core.cmp.PartialEq.eq := eq;
    }.
  End Impl_core_cmp_PartialEq_for_derive_Centimeters.
  Global Hint Resolve ℐ : core.
End Impl_core_cmp_PartialEq_for_derive_Centimeters.

Module Impl_core_cmp_PartialOrd_for_derive_Centimeters.
  Section Impl_core_cmp_PartialOrd_for_derive_Centimeters.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := derive.Centimeters.
    
    Parameter partial_cmp :
        (ref Self) ->
          (ref derive.Centimeters) ->
          M (core.option.Option core.cmp.Ordering).
    
    Global Instance AssociatedFunction_partial_cmp :
      Notation.DoubleColon Self "partial_cmp" := {
      Notation.double_colon := partial_cmp;
    }.
    
    Global Instance ℐ :
      core.cmp.PartialOrd.Trait Self
        (Rhs := core.cmp.PartialOrd.Default.Rhs Self) := {
      core.cmp.PartialOrd.partial_cmp := partial_cmp;
    }.
  End Impl_core_cmp_PartialOrd_for_derive_Centimeters.
  Global Hint Resolve ℐ : core.
End Impl_core_cmp_PartialOrd_for_derive_Centimeters.

Module Inches.
  Section Inches.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Record t : Set := {
      x0 : i32;
    }.
    Global Set Primitive Projections.
    
    Global Instance Get_0 : Notation.Dot "0" := {
      Notation.dot x := let* x := M.read x in Pure x.(x0) : M _;
    }.
  End Inches.
End Inches.
Definition Inches `{ℋ : State.Trait} : Set := M.val Inches.t.

Module Impl_core_fmt_Debug_for_derive_Inches.
  Section Impl_core_fmt_Debug_for_derive_Inches.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := derive.Inches.
    
    Parameter fmt :
        (ref Self) -> (mut_ref core.fmt.Formatter) -> M core.fmt.Result.
    
    Global Instance AssociatedFunction_fmt :
      Notation.DoubleColon Self "fmt" := {
      Notation.double_colon := fmt;
    }.
    
    Global Instance ℐ : core.fmt.Debug.Trait Self := {
      core.fmt.Debug.fmt := fmt;
    }.
  End Impl_core_fmt_Debug_for_derive_Inches.
  Global Hint Resolve ℐ : core.
End Impl_core_fmt_Debug_for_derive_Inches.

Module Impl_derive_Inches_2.
  Section Impl_derive_Inches_2.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := derive.Inches.
    
    Parameter to_centimeters : (ref Self) -> M derive.Centimeters.
    
    Global Instance AssociatedFunction_to_centimeters :
      Notation.DoubleColon Self "to_centimeters" := {
      Notation.double_colon := to_centimeters;
    }.
  End Impl_derive_Inches_2.
End Impl_derive_Inches_2.

Module Seconds.
  Section Seconds.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Record t : Set := {
      x0 : i32;
    }.
    Global Set Primitive Projections.
    
    Global Instance Get_0 : Notation.Dot "0" := {
      Notation.dot x := let* x := M.read x in Pure x.(x0) : M _;
    }.
  End Seconds.
End Seconds.
Definition Seconds `{ℋ : State.Trait} : Set := M.val Seconds.t.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{ℋ : State.Trait}, M unit.
