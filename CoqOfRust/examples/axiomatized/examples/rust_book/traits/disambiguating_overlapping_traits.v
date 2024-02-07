(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  UsernameWidget.
Section UsernameWidget.
  Class Trait (Self : Set) : Type := {
    get : (ref Self) -> M alloc.string.String.t;
  }.
  
End UsernameWidget.
End UsernameWidget.

Module  AgeWidget.
Section AgeWidget.
  Class Trait (Self : Set) : Type := {
    get : (ref Self) -> M u8.t;
  }.
  
End AgeWidget.
End AgeWidget.

Module  Form.
Section Form.
  Record t : Set := {
    username : alloc.string.String.t;
    age : u8.t;
  }.
  
  Definition Get_username :=
    Ref.map
      (fun α => Some α.(username))
      (fun β α => Some (α <| username := β |>)).
  Definition Get_age :=
    Ref.map (fun α => Some α.(age)) (fun β α => Some (α <| age := β |>)).
End Form.
End Form.

Module  Impl_disambiguating_overlapping_traits_UsernameWidget_for_disambiguating_overlapping_traits_Form_t.
Section Impl_disambiguating_overlapping_traits_UsernameWidget_for_disambiguating_overlapping_traits_Form_t.
  Definition Self : Set := disambiguating_overlapping_traits.Form.t.
  
  Parameter get : (ref Self) -> M alloc.string.String.t.
  
  Global Instance AssociatedFunction_get : Notations.DoubleColon Self "get" := {
    Notations.double_colon := get;
  }.
  
  Global Instance ℐ :
    disambiguating_overlapping_traits.UsernameWidget.Trait Self := {
    disambiguating_overlapping_traits.UsernameWidget.get := get;
  }.
End Impl_disambiguating_overlapping_traits_UsernameWidget_for_disambiguating_overlapping_traits_Form_t.
End Impl_disambiguating_overlapping_traits_UsernameWidget_for_disambiguating_overlapping_traits_Form_t.

Module  Impl_disambiguating_overlapping_traits_AgeWidget_for_disambiguating_overlapping_traits_Form_t.
Section Impl_disambiguating_overlapping_traits_AgeWidget_for_disambiguating_overlapping_traits_Form_t.
  Definition Self : Set := disambiguating_overlapping_traits.Form.t.
  
  Parameter get : (ref Self) -> M u8.t.
  
  Global Instance AssociatedFunction_get : Notations.DoubleColon Self "get" := {
    Notations.double_colon := get;
  }.
  
  Global Instance ℐ :
    disambiguating_overlapping_traits.AgeWidget.Trait Self := {
    disambiguating_overlapping_traits.AgeWidget.get := get;
  }.
End Impl_disambiguating_overlapping_traits_AgeWidget_for_disambiguating_overlapping_traits_Form_t.
End Impl_disambiguating_overlapping_traits_AgeWidget_for_disambiguating_overlapping_traits_Form_t.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.
