(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition used_function (_ : unit) : unit := tt.

Definition unused_function (_ : unit) : unit := tt.

Definition noisy_unused_function (_ : unit) : unit := tt.

Definition main (_ : unit) : unit :=
  used_function tt ;;
  tt.