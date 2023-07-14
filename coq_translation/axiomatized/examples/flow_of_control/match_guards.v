(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Temperature.
  Inductive t : Set :=
  | Celsius (_ : i32)
  | Fahrenheit (_ : i32).
End Temperature.
Definition Temperature := Temperature.t.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{H : State.Trait}, unit -> M (H := H) unit.
