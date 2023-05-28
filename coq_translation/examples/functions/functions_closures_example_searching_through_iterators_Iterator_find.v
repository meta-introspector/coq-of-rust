(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  let vec1 := Slice::["into_vec"] (_crate.boxed.Box::["new"] [ 1; 2; 3 ]) in
  let vec2 := Slice::["into_vec"] (_crate.boxed.Box::["new"] [ 4; 5; 6 ]) in
  let iter := vec1.["iter"] in
  let into_iter := vec2.["into_iter"] in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "Find 2 in vec1: "; "
" ]
          [ format_argument::["new_debug"] (iter.["find"] (fun x => x.["eq"] 2))
          ]) in
    tt in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "Find 2 in vec2: "; "
" ]
          [
            format_argument::["new_debug"]
              (into_iter.["find"] (fun x => x.["eq"] 2))
          ]) in
    tt in
  let array1 := [ 1; 2; 3 ] in
  let array2 := [ 4; 5; 6 ] in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "Find 2 in array1: "; "
" ]
          [
            format_argument::["new_debug"]
              (array1.["iter"].["find"] (fun x => x.["eq"] 2))
          ]) in
    tt in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "Find 2 in array2: "; "
" ]
          [
            format_argument::["new_debug"]
              (array2.["into_iter"].["find"] (fun x => x.["eq"] 2))
          ]) in
    tt in
  tt.
