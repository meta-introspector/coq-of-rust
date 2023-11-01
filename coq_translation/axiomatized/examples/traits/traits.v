(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Sheep.
  Section Sheep.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Record t : Set := {
      naked : bool;
      name : ref str;
    }.
    Global Set Primitive Projections.
    
    Global Instance Get_naked : Notation.Dot "naked" := {
      Notation.dot x := let* x := M.read x in Pure x.(naked) : M _;
    }.
    Global Instance Get_AF_naked : Notation.DoubleColon t "naked" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(naked) : M _;
    }.
    Global Instance Get_name : Notation.Dot "name" := {
      Notation.dot x := let* x := M.read x in Pure x.(name) : M _;
    }.
    Global Instance Get_AF_name : Notation.DoubleColon t "name" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(name) : M _;
    }.
  End Sheep.
End Sheep.
Definition Sheep `{ℋ : State.Trait} : Set := M.val Sheep.t.

Module Animal.
  Section Animal.
    Context `{ℋ : State.Trait}.
    
    Class Trait (Self : Set) : Type := {
      new : (ref str) -> M Self;
      name : (ref Self) -> M (ref str);
      noise : (ref Self) -> M (ref str);
    }.
    
  End Animal.
End Animal.

Module Impl_traits_Sheep.
  Section Impl_traits_Sheep.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := traits.Sheep.
    
    Parameter is_naked : (ref Self) -> M bool.
    
    Global Instance AssociatedFunction_is_naked :
      Notation.DoubleColon Self "is_naked" := {
      Notation.double_colon := is_naked;
    }.
  End Impl_traits_Sheep.
End Impl_traits_Sheep.

Module Impl_traits_Animal_for_traits_Sheep.
  Section Impl_traits_Animal_for_traits_Sheep.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := traits.Sheep.
    
    Parameter new : (ref str) -> M traits.Sheep.
    
    Global Instance AssociatedFunction_new :
      Notation.DoubleColon Self "new" := {
      Notation.double_colon := new;
    }.
    
    Parameter name : (ref Self) -> M (ref str).
    
    Global Instance AssociatedFunction_name :
      Notation.DoubleColon Self "name" := {
      Notation.double_colon := name;
    }.
    
    Parameter noise : (ref Self) -> M (ref str).
    
    Global Instance AssociatedFunction_noise :
      Notation.DoubleColon Self "noise" := {
      Notation.double_colon := noise;
    }.
    
    Parameter talk : (ref Self) -> M unit.
    
    Global Instance AssociatedFunction_talk :
      Notation.DoubleColon Self "talk" := {
      Notation.double_colon := talk;
    }.
    
    Global Instance ℐ : traits.Animal.Trait Self := {
      traits.Animal.new := new;
      traits.Animal.name := name;
      traits.Animal.noise := noise;
    }.
  End Impl_traits_Animal_for_traits_Sheep.
End Impl_traits_Animal_for_traits_Sheep.

Module Impl_traits_Sheep_2.
  Section Impl_traits_Sheep_2.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := traits.Sheep.
    
    Parameter shear : (mut_ref Self) -> M unit.
    
    Global Instance AssociatedFunction_shear :
      Notation.DoubleColon Self "shear" := {
      Notation.double_colon := shear;
    }.
  End Impl_traits_Sheep_2.
End Impl_traits_Sheep_2.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{ℋ : State.Trait}, M unit.
