(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H' : State.Trait} : M (H := H') unit := Pure tt.

Definition foo `{H' : State.Trait} : M (H := H') Empty_set :=
  let* _ := std.panicking.begin_panic "This call never returns." in
  Pure tt.
