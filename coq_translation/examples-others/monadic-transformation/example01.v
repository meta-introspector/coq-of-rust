(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition id (x : u64) : u64 := x.

Definition tri (a : u64) (b : u64) (c : u64) : unit := tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  id 0 ;;
  let* α0 := id 0 in
  id α0 ;;
  let* α1 := id 0 in
  let* α2 := id α1 in
  id α2 ;;
  let* α3 := id 0 in
  let* α4 := id α3 in
  let* α5 := id α4 in
  id α5 ;;
  let* α6 := id 1 in
  let* α7 := id 2 in
  tri α6 α7 3 ;;
  tt.
