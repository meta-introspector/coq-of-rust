(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module A.
  Inductive t : Set := Build.
End A.
Definition A := A.t.

Module S.
  Unset Primitive Projections.
  Record t : Set := {
    _ : generics_functions.A;
  }.
  Global Set Primitive Projections.
  
    Global Instance Get_0 : Notation.Dot 0 := {
      Notation.dot '(Build_t x0) := x0;
    }.
End S.
Definition S := S.t.

Module SGen.Section SGen.
Context {T : Set}.

  Unset Primitive Projections.
  Record t : Set := {
    _ : T;
  }.
  Global Set Primitive Projections.
  
    Global Instance Get_0 : Notation.Dot 0 := {
      Notation.dot '(Build_t x0) := x0;
    }.


End SGen.
End SGen.
Definition SGen := SGen.t.

Parameter reg_fn : forall `{H : State.Trait},
    generics_functions.S ->
    M (H := H) unit.

Parameter gen_spec_t : forall `{H : State.Trait},
    generics_functions.SGen generics_functions.A ->
    M (H := H) unit.

Parameter gen_spec_i32 : forall `{H : State.Trait},
    generics_functions.SGen i32 ->
    M (H := H) unit.

Parameter generic : forall `{H : State.Trait},
    forall
    {T : Set},
    generics_functions.SGen T ->
    M (H := H) unit.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{H : State.Trait}, M (H := H) unit.
