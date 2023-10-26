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
    
    #[refine] Global Instance Get_0 : Notation.Dot "0" := {
      Notation.dot x := let* x := M.read x in Pure x.(x0) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_1 : Notation.Dot "1" := {
      Notation.dot x := let* x := M.read x in Pure x.(x1) : M _;
    }.
    Admitted.
  End Container.
End Container.
Definition Container `{ℋ : State.Trait} : Set := M.val Container.t.

Module Contains.
  Section Contains.
    Context `{ℋ : State.Trait}.
    
    Class Trait (Self : Set) : Type := {
      A : Set;
      B : Set;
      contains : (ref Self) -> (ref A) -> (ref B) -> M bool;
      first : (ref Self) -> M i32;
      last : (ref Self) -> M i32;
      a : (ref Self) -> M A;
    }.
    
    #[refine] Global Instance Method_A `(Trait) :
      Notation.DoubleColonType Self "A" := {
      Notation.double_colon_type := A;
    }.
    Admitted.
    #[refine] Global Instance Method_B `(Trait) :
      Notation.DoubleColonType Self "B" := {
      Notation.double_colon_type := B;
    }.
    Admitted.
  End Contains.
End Contains.

Module
  Impl_generics_associated_types_solution_Contains_for_generics_associated_types_solution_Container.
  Section
    Impl_generics_associated_types_solution_Contains_for_generics_associated_types_solution_Container.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := generics_associated_types_solution.Container.
    
    Definition A : Set := i32.
    
    Definition B : Set := i32.
    
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
    
    Parameter a : (ref Self) -> M i32.
    
    Global Instance AssociatedFunction_a : Notation.DoubleColon Self "a" := {
      Notation.double_colon := a;
    }.
    
    #[refine] Global Instance ℐ :
      generics_associated_types_solution.Contains.Trait Self := {
      generics_associated_types_solution.Contains.A := A;
      generics_associated_types_solution.Contains.B := B;
      generics_associated_types_solution.Contains.contains := contains;
      generics_associated_types_solution.Contains.first := first;
      generics_associated_types_solution.Contains.last := last;
      generics_associated_types_solution.Contains.a := a;
    }.
    Admitted.
  End
    Impl_generics_associated_types_solution_Contains_for_generics_associated_types_solution_Container.
  Global Hint Resolve ℐ : core.
End
  Impl_generics_associated_types_solution_Contains_for_generics_associated_types_solution_Container.

Parameter difference :
    forall
      `{ℋ : State.Trait}
      {C : Set}
      {ℋ_0 : generics_associated_types_solution.Contains.Trait C},
    (ref C) -> M i32.

Parameter get_a :
    forall
      `{ℋ : State.Trait}
      {C : Set}
      {ℋ_0 : generics_associated_types_solution.Contains.Trait C},
    (ref C) -> M C::type["A"].

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{ℋ : State.Trait}, M unit.
