(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Inch.
  Inductive t `{ℋ : State.Trait} : Set :=
  .
End Inch.
Definition Inch `{ℋ : State.Trait} : Set := Inch.t.

Module
  Impl_core_fmt_Debug_for_generics_phantom_type_test_case_unit_clarification_Inch.
  Section
    Impl_core_fmt_Debug_for_generics_phantom_type_test_case_unit_clarification_Inch.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set :=
      generics_phantom_type_test_case_unit_clarification.Inch.
    
    Parameter fmt :
        (ref Self) -> (mut_ref core.fmt.Formatter) -> M ltac:(core.fmt.Result).
    
    Global Instance AssociatedFunction_fmt :
      Notation.DoubleColon Self "fmt" := {
      Notation.double_colon := fmt;
    }.
    
    Global Instance ℐ : core.fmt.Debug.Trait Self := {
      core.fmt.Debug.fmt := fmt;
    }.
  End
    Impl_core_fmt_Debug_for_generics_phantom_type_test_case_unit_clarification_Inch.
End
  Impl_core_fmt_Debug_for_generics_phantom_type_test_case_unit_clarification_Inch.

Module
  Impl_core_clone_Clone_for_generics_phantom_type_test_case_unit_clarification_Inch.
  Section
    Impl_core_clone_Clone_for_generics_phantom_type_test_case_unit_clarification_Inch.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set :=
      generics_phantom_type_test_case_unit_clarification.Inch.
    
    Parameter clone :
        (ref Self) -> M generics_phantom_type_test_case_unit_clarification.Inch.
    
    Global Instance AssociatedFunction_clone :
      Notation.DoubleColon Self "clone" := {
      Notation.double_colon := clone;
    }.
    
    Global Instance ℐ : core.clone.Clone.Trait Self := {
      core.clone.Clone.clone := clone;
    }.
  End
    Impl_core_clone_Clone_for_generics_phantom_type_test_case_unit_clarification_Inch.
End
  Impl_core_clone_Clone_for_generics_phantom_type_test_case_unit_clarification_Inch.

Module
  Impl_core_marker_Copy_for_generics_phantom_type_test_case_unit_clarification_Inch.
  Section
    Impl_core_marker_Copy_for_generics_phantom_type_test_case_unit_clarification_Inch.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set :=
      generics_phantom_type_test_case_unit_clarification.Inch.
    
    Global Instance ℐ : core.marker.Copy.Trait Self := {
    }.
  End
    Impl_core_marker_Copy_for_generics_phantom_type_test_case_unit_clarification_Inch.
End
  Impl_core_marker_Copy_for_generics_phantom_type_test_case_unit_clarification_Inch.

Module Mm.
  Inductive t `{ℋ : State.Trait} : Set :=
  .
End Mm.
Definition Mm `{ℋ : State.Trait} : Set := Mm.t.

Module
  Impl_core_fmt_Debug_for_generics_phantom_type_test_case_unit_clarification_Mm.
  Section
    Impl_core_fmt_Debug_for_generics_phantom_type_test_case_unit_clarification_Mm.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set :=
      generics_phantom_type_test_case_unit_clarification.Mm.
    
    Parameter fmt :
        (ref Self) -> (mut_ref core.fmt.Formatter) -> M ltac:(core.fmt.Result).
    
    Global Instance AssociatedFunction_fmt :
      Notation.DoubleColon Self "fmt" := {
      Notation.double_colon := fmt;
    }.
    
    Global Instance ℐ : core.fmt.Debug.Trait Self := {
      core.fmt.Debug.fmt := fmt;
    }.
  End
    Impl_core_fmt_Debug_for_generics_phantom_type_test_case_unit_clarification_Mm.
End
  Impl_core_fmt_Debug_for_generics_phantom_type_test_case_unit_clarification_Mm.

Module
  Impl_core_clone_Clone_for_generics_phantom_type_test_case_unit_clarification_Mm.
  Section
    Impl_core_clone_Clone_for_generics_phantom_type_test_case_unit_clarification_Mm.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set :=
      generics_phantom_type_test_case_unit_clarification.Mm.
    
    Parameter clone :
        (ref Self) -> M generics_phantom_type_test_case_unit_clarification.Mm.
    
    Global Instance AssociatedFunction_clone :
      Notation.DoubleColon Self "clone" := {
      Notation.double_colon := clone;
    }.
    
    Global Instance ℐ : core.clone.Clone.Trait Self := {
      core.clone.Clone.clone := clone;
    }.
  End
    Impl_core_clone_Clone_for_generics_phantom_type_test_case_unit_clarification_Mm.
End
  Impl_core_clone_Clone_for_generics_phantom_type_test_case_unit_clarification_Mm.

Module
  Impl_core_marker_Copy_for_generics_phantom_type_test_case_unit_clarification_Mm.
  Section
    Impl_core_marker_Copy_for_generics_phantom_type_test_case_unit_clarification_Mm.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set :=
      generics_phantom_type_test_case_unit_clarification.Mm.
    
    Global Instance ℐ : core.marker.Copy.Trait Self := {
    }.
  End
    Impl_core_marker_Copy_for_generics_phantom_type_test_case_unit_clarification_Mm.
End
  Impl_core_marker_Copy_for_generics_phantom_type_test_case_unit_clarification_Mm.

Module Length.
  Section Length.
    Context `{ℋ : State.Trait}.
    
    Context {Unit : Set}.
    
    Unset Primitive Projections.
    Record t : Set := {
      x0 : f64;
      x1 : core.marker.PhantomData Unit;
    }.
    Global Set Primitive Projections.
    
    Global Instance Get_0 : Notation.Dot "0" := {
      Notation.dot x := let* x := M.read x in Pure x.(x0) : M _;
    }.
    Global Instance Get_1 : Notation.Dot "1" := {
      Notation.dot x := let* x := M.read x in Pure x.(x1) : M _;
    }.
  End Length.
End Length.
Definition Length `{ℋ : State.Trait} (Unit : Set) : Set :=
  M.val (Length.t (Unit := Unit)).

Module
  Impl_core_fmt_Debug_for_generics_phantom_type_test_case_unit_clarification_Length_Unit.
  Section
    Impl_core_fmt_Debug_for_generics_phantom_type_test_case_unit_clarification_Length_Unit.
    Context `{ℋ : State.Trait}.
    
    Context {Unit : Set}.
    
    Context {ℋ_0 : core.fmt.Debug.Trait Unit}.
    Definition Self : Set :=
      generics_phantom_type_test_case_unit_clarification.Length Unit.
    
    Parameter fmt :
        (ref Self) -> (mut_ref core.fmt.Formatter) -> M ltac:(core.fmt.Result).
    
    Global Instance AssociatedFunction_fmt :
      Notation.DoubleColon Self "fmt" := {
      Notation.double_colon := fmt;
    }.
    
    Global Instance ℐ : core.fmt.Debug.Trait Self := {
      core.fmt.Debug.fmt := fmt;
    }.
  End
    Impl_core_fmt_Debug_for_generics_phantom_type_test_case_unit_clarification_Length_Unit.
End
  Impl_core_fmt_Debug_for_generics_phantom_type_test_case_unit_clarification_Length_Unit.

Module
  Impl_core_clone_Clone_for_generics_phantom_type_test_case_unit_clarification_Length_Unit.
  Section
    Impl_core_clone_Clone_for_generics_phantom_type_test_case_unit_clarification_Length_Unit.
    Context `{ℋ : State.Trait}.
    
    Context {Unit : Set}.
    
    Context {ℋ_0 : core.clone.Clone.Trait Unit}.
    Definition Self : Set :=
      generics_phantom_type_test_case_unit_clarification.Length Unit.
    
    Parameter clone :
        (ref Self) ->
          M (generics_phantom_type_test_case_unit_clarification.Length Unit).
    
    Global Instance AssociatedFunction_clone :
      Notation.DoubleColon Self "clone" := {
      Notation.double_colon := clone;
    }.
    
    Global Instance ℐ : core.clone.Clone.Trait Self := {
      core.clone.Clone.clone := clone;
    }.
  End
    Impl_core_clone_Clone_for_generics_phantom_type_test_case_unit_clarification_Length_Unit.
End
  Impl_core_clone_Clone_for_generics_phantom_type_test_case_unit_clarification_Length_Unit.

Module
  Impl_core_marker_Copy_for_generics_phantom_type_test_case_unit_clarification_Length_Unit.
  Section
    Impl_core_marker_Copy_for_generics_phantom_type_test_case_unit_clarification_Length_Unit.
    Context `{ℋ : State.Trait}.
    
    Context {Unit : Set}.
    
    Context {ℋ_0 : core.marker.Copy.Trait Unit}.
    Definition Self : Set :=
      generics_phantom_type_test_case_unit_clarification.Length Unit.
    
    Global Instance ℐ : core.marker.Copy.Trait Self := {
    }.
  End
    Impl_core_marker_Copy_for_generics_phantom_type_test_case_unit_clarification_Length_Unit.
End
  Impl_core_marker_Copy_for_generics_phantom_type_test_case_unit_clarification_Length_Unit.

Module
  Impl_core_ops_arith_Add_for_generics_phantom_type_test_case_unit_clarification_Length_Unit.
  Section
    Impl_core_ops_arith_Add_for_generics_phantom_type_test_case_unit_clarification_Length_Unit.
    Context `{ℋ : State.Trait}.
    
    Context {Unit : Set}.
    
    Definition Self : Set :=
      generics_phantom_type_test_case_unit_clarification.Length Unit.
    
    Definition Output : Set :=
      generics_phantom_type_test_case_unit_clarification.Length Unit.
    
    Parameter add :
        Self ->
          (generics_phantom_type_test_case_unit_clarification.Length Unit) ->
          M (generics_phantom_type_test_case_unit_clarification.Length Unit).
    
    Global Instance AssociatedFunction_add :
      Notation.DoubleColon Self "add" := {
      Notation.double_colon := add;
    }.
    
    Global Instance ℐ :
      core.ops.arith.Add.Trait Self
        (Rhs := core.ops.arith.Add.Default.Rhs Self) := {
      core.ops.arith.Add.Output := Output;
      core.ops.arith.Add.add := add;
    }.
  End
    Impl_core_ops_arith_Add_for_generics_phantom_type_test_case_unit_clarification_Length_Unit.
End
  Impl_core_ops_arith_Add_for_generics_phantom_type_test_case_unit_clarification_Length_Unit.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{ℋ : State.Trait}, M unit.
