(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition main (_ : unit) : unit :=
  let x := 5 in
  x ;;
  x.["add"] 1 ;;
  15 ;;
  tt.

Definition main (_ : unit) : unit := test.
