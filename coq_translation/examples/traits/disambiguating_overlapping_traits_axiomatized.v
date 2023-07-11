(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module UsernameWidget.
  Class Trait (Self : Set) : Set := {
    get : (ref Self) -> (M alloc.string.String);
  }.
  
  Global Instance Method_get `(Trait) : Notation.Dot "get" := {
    Notation.dot := get;
  }.
End UsernameWidget.

Module AgeWidget.
  Class Trait (Self : Set) : Set := {
    get : (ref Self) -> (M u8);
  }.
  
  Global Instance Method_get `(Trait) : Notation.Dot "get" := {
    Notation.dot := get;
  }.
End AgeWidget.

Module Form.
  Record t : Set := {
    username : alloc.string.String;
    age : u8;
  }.
  
  Global Instance Get_username : Notation.Dot "username" := {
    Notation.dot '(Build_t x0 _) := x0;
  }.
  Global Instance Get_age : Notation.Dot "age" := {
    Notation.dot '(Build_t _ x1) := x1;
  }.
End Form.
Definition Form : Set := Form.t.

Module
  Impl_disambiguating_overlapping_traits_UsernameWidget_for_disambiguating_overlapping_traits_Form.
  Definition Self := disambiguating_overlapping_traits.Form.
  
  Parameter get : ref Self -> M alloc.string.String.
  
  Global Instance Method_get : Notation.Dot "get" := {
    Notation.dot := get;
  }.
  
  Global Instance I :
      disambiguating_overlapping_traits.UsernameWidget.Trait Self := {
    disambiguating_overlapping_traits.UsernameWidget.get := get;
  }.
End
  Impl_disambiguating_overlapping_traits_UsernameWidget_for_disambiguating_overlapping_traits_Form.

Module
  Impl_disambiguating_overlapping_traits_AgeWidget_for_disambiguating_overlapping_traits_Form.
  Definition Self := disambiguating_overlapping_traits.Form.
  
  Parameter get : ref Self -> M u8.
  
  Global Instance Method_get : Notation.Dot "get" := {
    Notation.dot := get;
  }.
  
  Global Instance I :
      disambiguating_overlapping_traits.AgeWidget.Trait Self := {
    disambiguating_overlapping_traits.AgeWidget.get := get;
  }.
End
  Impl_disambiguating_overlapping_traits_AgeWidget_for_disambiguating_overlapping_traits_Form.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : unit -> M unit.