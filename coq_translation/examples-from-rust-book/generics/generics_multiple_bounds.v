(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition compare_prints
    {T : Set}
    `{Debug.Trait T}
    `{Display.Trait T}
    (t : ref T)
    : unit :=
  _crate.io._print
    (format_arguments::["new_v1"]
      [ "Debug: `"; "`
" ]
      [ format_argument::["new_debug"] t ]) ;;
  tt ;;
  _crate.io._print
    (format_arguments::["new_v1"]
      [ "Display: `"; "`
" ]
      [ format_argument::["new_display"] t ]) ;;
  tt ;;
  tt.

Definition compare_types
    {T U : Set}
    `{Debug.Trait T}
    `{Debug.Trait U}
    (t : ref T)
    (u : ref U)
    : unit :=
  _crate.io._print
    (format_arguments::["new_v1"]
      [ "t: `"; "`
" ]
      [ format_argument::["new_debug"] t ]) ;;
  tt ;;
  _crate.io._print
    (format_arguments::["new_v1"]
      [ "u: `"; "`
" ]
      [ format_argument::["new_debug"] u ]) ;;
  tt ;;
  tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  let string := "words" in
  let array := [ 1; 2; 3 ] in
  let vec := Slice::["into_vec"] (_crate.boxed.Box::["new"] [ 1; 2; 3 ]) in
  compare_prints string ;;
  compare_types array vec ;;
  tt.
