(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let elem := 5 in
  let* vec := Vec::["new"] tt in
  let* _ := vec.["push"] elem in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of vec) in
      let* α1 :=
        format_arguments::["new_v1"] (addr_of [ ""; "
" ]) (addr_of [ α0 ]) in
      _crate.io._print α1 in
    Pure tt in
  Pure tt.
