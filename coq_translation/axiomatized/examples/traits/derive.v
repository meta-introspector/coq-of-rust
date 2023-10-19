(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Centimeters.
  Unset Primitive Projections.
  Record t `{State.Trait} : Set := {
    x0 : f64;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_0 `{State.Trait} : Notation.Dot "0" := {
    Notation.dot x := let* x := M.read x in Pure x.(x0) : M _;
  }.
End Centimeters.
Definition Centimeters `{State.Trait} : Set := M.val Centimeters.t.

Module Impl_core_marker_StructuralPartialEq_for_derive_Centimeters.
  Definition Self `{State.Trait} := derive.Centimeters.
  
  Global Instance I `{State.Trait}
    : core.marker.StructuralPartialEq.Trait Self := {
  }.
  Global Hint Resolve I : core.
End Impl_core_marker_StructuralPartialEq_for_derive_Centimeters.

Module Impl_core_cmp_PartialEq_for_derive_Centimeters.
  Definition Self `{State.Trait} := derive.Centimeters.
  
  Parameter eq :
      forall `{State.Trait},
      (ref Self) -> (ref derive.Centimeters) -> M bool.
  
  Global Instance Method_eq `{State.Trait} : Notation.Dot "eq" := {
    Notation.dot := eq;
  }.
  
  Global Instance I `{State.Trait}
    : core.cmp.PartialEq.Trait Self (Rhs := core.cmp.PartialEq.Default.Rhs Self)
      := {
    core.cmp.PartialEq.eq := eq;
  }.
  Global Hint Resolve I : core.
End Impl_core_cmp_PartialEq_for_derive_Centimeters.

Module Impl_core_cmp_PartialOrd_for_derive_Centimeters.
  Definition Self `{State.Trait} := derive.Centimeters.
  
  Parameter partial_cmp :
      forall `{State.Trait},
      (ref Self) ->
        (ref derive.Centimeters) ->
        M (core.option.Option core.cmp.Ordering).
  
  Global Instance Method_partial_cmp `{State.Trait} :
    Notation.Dot "partial_cmp" := {
    Notation.dot := partial_cmp;
  }.
  
  Global Instance I `{State.Trait}
    : core.cmp.PartialOrd.Trait Self
        (Rhs := core.cmp.PartialOrd.Default.Rhs Self)
      := {
    core.cmp.PartialOrd.partial_cmp := partial_cmp;
  }.
  Global Hint Resolve I : core.
End Impl_core_cmp_PartialOrd_for_derive_Centimeters.

Module Inches.
  Unset Primitive Projections.
  Record t `{State.Trait} : Set := {
    x0 : i32;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_0 `{State.Trait} : Notation.Dot "0" := {
    Notation.dot x := let* x := M.read x in Pure x.(x0) : M _;
  }.
End Inches.
Definition Inches `{State.Trait} : Set := M.val Inches.t.

Module Impl_core_fmt_Debug_for_derive_Inches.
  Definition Self `{State.Trait} := derive.Inches.
  
  Parameter fmt :
      forall `{State.Trait},
      (ref Self) -> (mut_ref core.fmt.Formatter) -> M core.fmt.Result.
  
  Global Instance Method_fmt `{State.Trait} : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I `{State.Trait} : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
  Global Hint Resolve I : core.
End Impl_core_fmt_Debug_for_derive_Inches.

Module Impl_derive_Inches_2.
  Definition Self := derive.Inches.
  
  Parameter to_centimeters :
      forall `{State.Trait},
      (ref Self) -> M derive.Centimeters.
  
  Global Instance Method_to_centimeters `{State.Trait} :
    Notation.Dot "to_centimeters" := {
    Notation.dot := to_centimeters;
  }.
End Impl_derive_Inches_2.

Module Seconds.
  Unset Primitive Projections.
  Record t `{State.Trait} : Set := {
    x0 : i32;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_0 `{State.Trait} : Notation.Dot "0" := {
    Notation.dot x := let* x := M.read x in Pure x.(x0) : M _;
  }.
End Seconds.
Definition Seconds `{State.Trait} : Set := M.val Seconds.t.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{State.Trait}, M unit.
