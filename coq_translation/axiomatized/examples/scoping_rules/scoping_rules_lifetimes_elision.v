(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Parameter elided_input : forall `{ℋ : State.Trait}, (ref i32) -> M unit.

Parameter annotated_input : forall `{ℋ : State.Trait}, (ref i32) -> M unit.

Parameter elided_pass : forall `{ℋ : State.Trait}, (ref i32) -> M (ref i32).

Parameter annotated_pass : forall `{ℋ : State.Trait}, (ref i32) -> M (ref i32).

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{ℋ : State.Trait}, M unit.
