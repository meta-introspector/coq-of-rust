(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Years.
  Record t : Set := { _ : i64;}.
  
  Global Instance Get_0 : Notation.Dot 0 := {
    Notation.dot '(Build_t x0) := x0;
  }.
End Years.
Definition Years := Years.t.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{H : State.Trait}, unit -> M (H := H) unit.
