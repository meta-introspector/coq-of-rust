(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module PhantomTuple.
  Section PhantomTuple.
    Context `{ℋ : State.Trait}.
    
    Context {A B : Set}.
    
    Unset Primitive Projections.
    Record t : Set := {
      x0 : A;
      x1 : core.marker.PhantomData B;
    }.
    Global Set Primitive Projections.
    
    Global Instance Get_0 : Notation.Dot "0" := {
      Notation.dot x := let* x := M.read x in Pure x.(x0) : M _;
    }.
    Global Instance Get_1 : Notation.Dot "1" := {
      Notation.dot x := let* x := M.read x in Pure x.(x1) : M _;
    }.
  End PhantomTuple.
End PhantomTuple.
Definition PhantomTuple `{ℋ : State.Trait} (A B : Set) : Set :=
  M.val (PhantomTuple.t (A := A) (B := B)).

Module
  Impl_core_marker_StructuralPartialEq_for_generics_phantom_type_PhantomTuple_A_B.
  Section
    Impl_core_marker_StructuralPartialEq_for_generics_phantom_type_PhantomTuple_A_B.
    Context `{ℋ : State.Trait}.
    
    Context {A B : Set}.
    
    Definition Self : Set := generics_phantom_type.PhantomTuple A B.
    
    Global Instance ℐ : core.marker.StructuralPartialEq.Trait Self := {
    }.
  End
    Impl_core_marker_StructuralPartialEq_for_generics_phantom_type_PhantomTuple_A_B.
  Global Hint Resolve ℐ : core.
End
  Impl_core_marker_StructuralPartialEq_for_generics_phantom_type_PhantomTuple_A_B.

Module Impl_core_cmp_PartialEq_for_generics_phantom_type_PhantomTuple_A_B.
  Section Impl_core_cmp_PartialEq_for_generics_phantom_type_PhantomTuple_A_B.
    Context `{ℋ : State.Trait}.
    
    Context {A B : Set}.
    
    Context
      {ℋ_0 :
        core.cmp.PartialEq.Trait A (Rhs := core.cmp.PartialEq.Default.Rhs A)}
      {ℋ_1 :
        core.cmp.PartialEq.Trait B (Rhs := core.cmp.PartialEq.Default.Rhs B)}.
    Definition Self : Set := generics_phantom_type.PhantomTuple A B.
    
    Parameter eq :
        (ref Self) -> (ref (generics_phantom_type.PhantomTuple A B)) -> M bool.
    
    Global Instance AssociatedFunction_eq : Notation.DoubleColon Self "eq" := {
      Notation.double_colon := eq;
    }.
    
    Global Instance ℐ
      : core.cmp.PartialEq.Trait Self
          (Rhs := core.cmp.PartialEq.Default.Rhs Self)
        := {
      core.cmp.PartialEq.eq := eq;
    }.
  End Impl_core_cmp_PartialEq_for_generics_phantom_type_PhantomTuple_A_B.
  Global Hint Resolve ℐ : core.
End Impl_core_cmp_PartialEq_for_generics_phantom_type_PhantomTuple_A_B.

Module PhantomStruct.
  Section PhantomStruct.
    Context `{ℋ : State.Trait}.
    
    Context {A B : Set}.
    
    Unset Primitive Projections.
    Record t : Set := {
      first : A;
      phantom : core.marker.PhantomData B;
    }.
    Global Set Primitive Projections.
    
    Global Instance Get_first : Notation.Dot "first" := {
      Notation.dot x := let* x := M.read x in Pure x.(first) : M _;
    }.
    Global Instance Get_AF_first : Notation.DoubleColon t "first" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(first) : M _;
    }.
    Global Instance Get_phantom : Notation.Dot "phantom" := {
      Notation.dot x := let* x := M.read x in Pure x.(phantom) : M _;
    }.
    Global Instance Get_AF_phantom : Notation.DoubleColon t "phantom" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(phantom) : M _;
    }.
  End PhantomStruct.
End PhantomStruct.
Definition PhantomStruct (A B : Set) `{ℋ : State.Trait} : Set :=
  M.val (PhantomStruct.t (A := A) (B := B)).

Module
  Impl_core_marker_StructuralPartialEq_for_generics_phantom_type_PhantomStruct_A_B.
  Section
    Impl_core_marker_StructuralPartialEq_for_generics_phantom_type_PhantomStruct_A_B.
    Context `{ℋ : State.Trait}.
    
    Context {A B : Set}.
    
    Definition Self : Set := generics_phantom_type.PhantomStruct A B.
    
    Global Instance ℐ : core.marker.StructuralPartialEq.Trait Self := {
    }.
  End
    Impl_core_marker_StructuralPartialEq_for_generics_phantom_type_PhantomStruct_A_B.
  Global Hint Resolve ℐ : core.
End
  Impl_core_marker_StructuralPartialEq_for_generics_phantom_type_PhantomStruct_A_B.

Module Impl_core_cmp_PartialEq_for_generics_phantom_type_PhantomStruct_A_B.
  Section Impl_core_cmp_PartialEq_for_generics_phantom_type_PhantomStruct_A_B.
    Context `{ℋ : State.Trait}.
    
    Context {A B : Set}.
    
    Context
      {ℋ_0 :
        core.cmp.PartialEq.Trait A (Rhs := core.cmp.PartialEq.Default.Rhs A)}
      {ℋ_1 :
        core.cmp.PartialEq.Trait B (Rhs := core.cmp.PartialEq.Default.Rhs B)}.
    Definition Self : Set := generics_phantom_type.PhantomStruct A B.
    
    Parameter eq :
        (ref Self) -> (ref (generics_phantom_type.PhantomStruct A B)) -> M bool.
    
    Global Instance AssociatedFunction_eq : Notation.DoubleColon Self "eq" := {
      Notation.double_colon := eq;
    }.
    
    Global Instance ℐ
      : core.cmp.PartialEq.Trait Self
          (Rhs := core.cmp.PartialEq.Default.Rhs Self)
        := {
      core.cmp.PartialEq.eq := eq;
    }.
  End Impl_core_cmp_PartialEq_for_generics_phantom_type_PhantomStruct_A_B.
  Global Hint Resolve ℐ : core.
End Impl_core_cmp_PartialEq_for_generics_phantom_type_PhantomStruct_A_B.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{ℋ : State.Trait}, M unit.
