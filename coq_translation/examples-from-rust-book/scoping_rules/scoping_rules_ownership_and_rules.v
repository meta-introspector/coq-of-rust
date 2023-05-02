(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition destroy_box (c : Box i32) : unit :=
  _crate.io._print
    (format_arguments::["new_v1"]
      [ "Destroying a box that contains "; "
" ]
      [ format_argument::["new_display"] c ]) ;;
  tt ;;
  tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  let x := 5 in
  let y := x in
  _crate.io._print
    (format_arguments::["new_v1"]
      [ "x is "; ", and y is "; "
" ]
      [ format_argument::["new_display"] x; format_argument::["new_display"] y
      ]) ;;
  tt ;;
  let a := Box::["new"] 5 in
  _crate.io._print
    (format_arguments::["new_v1"]
      [ "a contains: "; "
" ]
      [ format_argument::["new_display"] a ]) ;;
  tt ;;
  let b := a in
  destroy_box b ;;
  tt.
