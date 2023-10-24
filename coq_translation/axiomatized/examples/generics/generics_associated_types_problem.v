(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Container.
  Section Container.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Record t : Set := {
      x0 : i32;
      x1 : i32;
    }.
    Global Set Primitive Projections.
    
    Global Instance Get_0 : Notation.Dot "0" := {
      Notation.dot x := let* x := M.read x in Pure x.(x0) : M _;
    }.
    Global Instance Get_1 : Notation.Dot "1" := {
      Notation.dot x := let* x := M.read x in Pure x.(x1) : M _;
    }.
  End Container.
End Container.
Definition Container `{ℋ : State.Trait} : Set := M.val Container.t.

Module Contains.
  Section Contains.
    Context `{ℋ : State.Trait}.
    
    Class Trait (Self : Set) {A B : Set} : Type := {
      contains : (ref Self) -> (ref A) -> (ref B) -> M bool;
      first : (ref Self) -> M i32;
      last : (ref Self) -> M i32;
    }.
    
  End Contains.
End Contains.

Module
  Impl_generics_associated_types_problem_Contains_for_generics_associated_types_problem_Container.
  Section
    Impl_generics_associated_types_problem_Contains_for_generics_associated_types_problem_Container.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := generics_associated_types_problem.Container.
    
    Parameter contains : (ref Self) -> (ref i32) -> (ref i32) -> M bool.
    
    Global Instance AssociatedFunction_contains :
      Notation.DoubleColon Self "contains" := {
      Notation.double_colon := contains;
    }.
    
    Parameter first : (ref Self) -> M i32.
    
    Global Instance AssociatedFunction_first :
      Notation.DoubleColon Self "first" := {
      Notation.double_colon := first;
    }.
    
    Parameter last : (ref Self) -> M i32.
    
    Global Instance AssociatedFunction_last :
      Notation.DoubleColon Self "last" := {
      Notation.double_colon := last;
    }.
    
    Global Instance ℐ :
      generics_associated_types_problem.Contains.Trait Self
        (A := i32)
        (B := i32) := {
      generics_associated_types_problem.Contains.contains := contains;
      generics_associated_types_problem.Contains.first := first;
      generics_associated_types_problem.Contains.last := last;
    }.
  End
    Impl_generics_associated_types_problem_Contains_for_generics_associated_types_problem_Container.
  Global Hint Resolve ℐ : core.
End
  Impl_generics_associated_types_problem_Contains_for_generics_associated_types_problem_Container.

Parameter difference :
    forall
      `{ℋ : State.Trait}
      {A B C : Set}
      {ℋ_0 :
        generics_associated_types_problem.Contains.Trait C (A := A) (B := B)},
    (ref C) -> M i32.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{ℋ : State.Trait}, M unit.
