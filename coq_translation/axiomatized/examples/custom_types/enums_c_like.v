(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Number.
  Inductive t `{ℋ : State.Trait} : Set :=
  | Zero
  | One
  | Two.
End Number.
Definition Number `{ℋ : State.Trait} : Set := Number.t.

Module Color.
  Inductive t `{ℋ : State.Trait} : Set :=
  | Red
  | Green
  | Blue.
End Color.
Definition Color `{ℋ : State.Trait} : Set := Color.t.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{ℋ : State.Trait}, M unit.
