(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit := Pure tt.

Definition foo (_ : unit) : M Empty_set :=
  let* _ := std.panicking.begin_panic "This call never returns." in
  Pure tt.