(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let elem := 5 in
  let* vec := Vec::["new"] tt in
  let* _ := vec.["push"] elem in
  let* α0 := format_argument::["new_debug"] (deref vec) in
  let* α1 := format_arguments::["new_v1"] (deref [ ""; "
" ]) (deref [ α0 ]) in
  let* _ := _crate.io._print α1 in
  let _ := tt in
  Pure tt.
