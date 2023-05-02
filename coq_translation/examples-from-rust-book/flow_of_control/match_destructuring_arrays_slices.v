(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  let array := [ 1; 2.["neg"]; 6 ] in
  match array with
  | _ =>
    _crate.io._print
      (format_arguments::["new_v1"]
        [ "array[0] = 0, array[1] = "; ", array[2] = "; "
" ]
        [
          format_argument::["new_display"] second;
          format_argument::["new_display"] third
        ]) ;;
    tt
  | _ =>
    _crate.io._print
      (format_arguments::["new_v1"]
        [ "array[0] = 1, array[2] = "; " and array[1] was ignored
" ]
        [ format_argument::["new_display"] third ]) ;;
    tt
  | _ =>
    _crate.io._print
      (format_arguments::["new_v1"]
        [ "array[0] = -1, array[1] = "; " and all the other ones were ignored
"
        ]
        [ format_argument::["new_display"] second ]) ;;
    tt
  | _ =>
    _crate.io._print
      (format_arguments::["new_v1"]
        [ "array[0] = 3, array[1] = "; " and the other elements were "; "
" ]
        [
          format_argument::["new_display"] second;
          format_argument::["new_debug"] tail
        ]) ;;
    tt
  | _ =>
    _crate.io._print
      (format_arguments::["new_v1"]
        [ "array[0] = "; ", middle = "; ", array[2] = "; "
" ]
        [
          format_argument::["new_display"] first;
          format_argument::["new_debug"] middle;
          format_argument::["new_display"] last
        ]) ;;
    tt
  end.
