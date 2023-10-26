(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module UsernameWidget.
  Section UsernameWidget.
    Context `{ℋ : State.Trait}.
    
    Class Trait (Self : Set) : Type := {
      get : (ref Self) -> M alloc.string.String;
    }.
    
  End UsernameWidget.
End UsernameWidget.

Module AgeWidget.
  Section AgeWidget.
    Context `{ℋ : State.Trait}.
    
    Class Trait (Self : Set) : Type := {
      get : (ref Self) -> M u8;
    }.
    
  End AgeWidget.
End AgeWidget.

Module Form.
  Section Form.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Record t : Set := {
      username : alloc.string.String;
      age : u8;
    }.
    Global Set Primitive Projections.
    
    #[refine] Global Instance Get_username : Notation.Dot "username" := {
      Notation.dot x := let* x := M.read x in Pure x.(username) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_AF_username :
      Notation.DoubleColon t "username" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(username) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_age : Notation.Dot "age" := {
      Notation.dot x := let* x := M.read x in Pure x.(age) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_AF_age : Notation.DoubleColon t "age" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(age) : M _;
    }.
    Admitted.
  End Form.
End Form.
Definition Form `{ℋ : State.Trait} : Set := M.val Form.t.

Module
  Impl_disambiguating_overlapping_traits_UsernameWidget_for_disambiguating_overlapping_traits_Form.
  Section
    Impl_disambiguating_overlapping_traits_UsernameWidget_for_disambiguating_overlapping_traits_Form.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := disambiguating_overlapping_traits.Form.
    
    Parameter get : (ref Self) -> M alloc.string.String.
    
    Global Instance AssociatedFunction_get :
      Notation.DoubleColon Self "get" := {
      Notation.double_colon := get;
    }.
    
    #[refine] Global Instance ℐ :
      disambiguating_overlapping_traits.UsernameWidget.Trait Self := {
      disambiguating_overlapping_traits.UsernameWidget.get := get;
    }.
    Admitted.
  End
    Impl_disambiguating_overlapping_traits_UsernameWidget_for_disambiguating_overlapping_traits_Form.
  Global Hint Resolve ℐ : core.
End
  Impl_disambiguating_overlapping_traits_UsernameWidget_for_disambiguating_overlapping_traits_Form.

Module
  Impl_disambiguating_overlapping_traits_AgeWidget_for_disambiguating_overlapping_traits_Form.
  Section
    Impl_disambiguating_overlapping_traits_AgeWidget_for_disambiguating_overlapping_traits_Form.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := disambiguating_overlapping_traits.Form.
    
    Parameter get : (ref Self) -> M u8.
    
    Global Instance AssociatedFunction_get :
      Notation.DoubleColon Self "get" := {
      Notation.double_colon := get;
    }.
    
    #[refine] Global Instance ℐ :
      disambiguating_overlapping_traits.AgeWidget.Trait Self := {
      disambiguating_overlapping_traits.AgeWidget.get := get;
    }.
    Admitted.
  End
    Impl_disambiguating_overlapping_traits_AgeWidget_for_disambiguating_overlapping_traits_Form.
  Global Hint Resolve ℐ : core.
End
  Impl_disambiguating_overlapping_traits_AgeWidget_for_disambiguating_overlapping_traits_Form.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{ℋ : State.Trait}, M unit.
