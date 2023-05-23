(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  let vec1 := Slice::["into_vec"] (_crate.boxed.Box::["new"] [ 1; 2; 3 ]) in
  let vec2 := Slice::["into_vec"] (_crate.boxed.Box::["new"] [ 4; 5; 6 ]) in
  _crate.io._print
    (format_arguments::["new_v1"]
      [ "2 in vec1: "; "
" ]
      [
        format_argument::["new_display"]
          (vec1.["iter"].["any"] (fun x => x.["eq"] 2))
      ]) ;;
  tt ;;
  _crate.io._print
    (format_arguments::["new_v1"]
      [ "2 in vec2: "; "
" ]
      [
        format_argument::["new_display"]
          (vec2.["into_iter"].["any"] (fun x => x.["eq"] 2))
      ]) ;;
  tt ;;
  _crate.io._print
    (format_arguments::["new_v1"]
      [ "vec1 len: "; "
" ]
      [ format_argument::["new_display"] vec1.["len"] ]) ;;
  tt ;;
  _crate.io._print
    (format_arguments::["new_v1"]
      [ "First element of vec1 is: "; "
" ]
      [ format_argument::["new_display"] vec1[0] ]) ;;
  tt ;;
  let array1 := [ 1; 2; 3 ] in
  let array2 := [ 4; 5; 6 ] in
  _crate.io._print
    (format_arguments::["new_v1"]
      [ "2 in array1: "; "
" ]
      [
        format_argument::["new_display"]
          (array1.["iter"].["any"] (fun x => x.["eq"] 2))
      ]) ;;
  tt ;;
  _crate.io._print
    (format_arguments::["new_v1"]
      [ "2 in array2: "; "
" ]
      [
        format_argument::["new_display"]
          (array2.["into_iter"].["any"] (fun x => x.["eq"] 2))
      ]) ;;
  tt ;;
  tt.