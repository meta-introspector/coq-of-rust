(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module other_function := deeply.nested.function.

Definition function (_ : unit) : unit :=
  _crate.io._print
    (format_arguments::["new_const"] [ "called `function()`
" ]) ;;
  tt ;;
  tt.

Module deeply.
  Module nested.
    Definition function (_ : unit) : unit :=
      _crate.io._print
        (format_arguments::["new_const"]
          [ "called `deeply::nested::function()`
" ]) ;;
      tt ;;
      tt.
  End nested.
End deeply.

Module nested.
  Definition function (_ : unit) : unit :=
    _crate.io._print
      (format_arguments::["new_const"]
        [ "called `deeply::nested::function()`
" ]) ;;
    tt ;;
    tt.
End nested.

Definition function (_ : unit) : unit :=
  _crate.io._print
    (format_arguments::["new_const"]
      [ "called `deeply::nested::function()`
" ]) ;;
  tt ;;
  tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  other_function tt ;;
  _crate.io._print (format_arguments::["new_const"] [ "Entering block
" ]) ;;
  tt ;;
  function tt ;;
  _crate.io._print (format_arguments::["new_const"] [ "Leaving block
" ]) ;;
  tt ;;
  tt ;;
  function tt ;;
  tt.

Module function := crate.deeply.nested.function.