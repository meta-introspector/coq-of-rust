(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition used_function (_ : unit) : M unit := Pure tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition unused_function (_ : unit) : M unit := Pure tt.

Definition noisy_unused_function (_ : unit) : M unit := Pure tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let* _ := used_function tt in
  Pure tt.
