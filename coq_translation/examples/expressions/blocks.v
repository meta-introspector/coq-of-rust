(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  let x := 5 in
  let y :=
    let x_squared := x.["mul"] x in
    let x_cube := x_squared.["mul"] x in
    (x_cube.["add"] x_squared).["add"] x in
  let z :=
    2.["mul"] x ;;
    tt in
  _crate.io._print
    (format_arguments::["new_v1"]
      [ "x is "; "
" ]
      [ format_argument::["new_debug"] x ]) ;;
  tt ;;
  _crate.io._print
    (format_arguments::["new_v1"]
      [ "y is "; "
" ]
      [ format_argument::["new_debug"] y ]) ;;
  tt ;;
  _crate.io._print
    (format_arguments::["new_v1"]
      [ "z is "; "
" ]
      [ format_argument::["new_debug"] z ]) ;;
  tt ;;
  tt.