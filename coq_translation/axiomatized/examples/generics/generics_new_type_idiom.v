(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Years.
  Unset Primitive Projections.
  Record t : Set := {
    _ : i64;
  }.
  Global Set Primitive Projections.
  
    Global Instance Get_0 : Notation.Dot 0 := {
      Notation.dot '(Build_t x0) := x0;
    }.
End Years.
Definition Years := Years.t.

Module Days.
  Unset Primitive Projections.
  Record t : Set := {
    _ : i64;
  }.
  Global Set Primitive Projections.
  
    Global Instance Get_0 : Notation.Dot 0 := {
      Notation.dot '(Build_t x0) := x0;
    }.
End Days.
Definition Days := Days.t.

Module Impl_generics_new_type_idiom_Years.
  Definition Self := generics_new_type_idiom.Years.
  
  Parameter to_days : forall `{H : State.Trait},
      ref Self ->
      M (H := H) generics_new_type_idiom.Days.
  
  Global Instance Method_to_days `{H : State.Trait} :
    Notation.Dot "to_days" := {
    Notation.dot := to_days;
  }.
End Impl_generics_new_type_idiom_Years.

Module Impl_generics_new_type_idiom_Days.
  Definition Self := generics_new_type_idiom.Days.
  
  Parameter to_years : forall `{H : State.Trait},
      ref Self ->
      M (H := H) generics_new_type_idiom.Years.
  
  Global Instance Method_to_years `{H : State.Trait} :
    Notation.Dot "to_years" := {
    Notation.dot := to_years;
  }.
End Impl_generics_new_type_idiom_Days.

Parameter old_enough : forall `{H : State.Trait},
    ref generics_new_type_idiom.Years ->
    M (H := H) bool.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{H : State.Trait}, M (H := H) unit.
