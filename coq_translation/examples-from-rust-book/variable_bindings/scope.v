(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  let long_lived_binding := 1 in
  let short_lived_binding := 2 in
  _crate.io._print
    (format_arguments::["new_v1"]
      [ "inner short: "; "
" ]
      [ format_argument::["new_display"] short_lived_binding ]) ;;
  tt ;;
  tt ;;
  _crate.io._print
    (format_arguments::["new_v1"]
      [ "outer long: "; "
" ]
      [ format_argument::["new_display"] long_lived_binding ]) ;;
  tt ;;
  tt.
