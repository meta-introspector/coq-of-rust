(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{H : State.Trait}, M (H := H) unit.

Parameter mul : forall `{H : State.Trait}, u64 -> u64 -> M (H := H) u128.
