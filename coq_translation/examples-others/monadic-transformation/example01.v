(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition id (x : u64) : u64 := Pure x.

Definition tri (a : u64) (b : u64) (c : u64) : unit := Pure tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  let* α0 := Pure id in
  let* α1 := Pure 0 in
  α0 α1 ;;
  let* α2 := Pure id in
  let* α0 := Pure id in
  let* α1 := Pure 0 in
  let* α3 := α0 α1 in
  α2 α3 ;;
  Pure tt.
