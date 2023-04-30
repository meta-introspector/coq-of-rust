(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Foo.
  Inductive t : Set :=
  | Bar
  | Baz
  | Qux (_ : u32).
End Foo.
Definition Foo := Foo.t.

Definition main (_ : unit) : unit :=
  let a := Foo.Bar in
  let b := Foo.Baz in
  let c := Foo.Qux 100 in
  if (let_if Foo.Bar := a : bool) then
    _crate.io._print (format_arguments::["new_const"] [ "a is foobar
" ]) ;;
    tt ;;
    tt
  else
    tt ;;
  if (let_if Foo.Bar := b : bool) then
    _crate.io._print (format_arguments::["new_const"] [ "b is foobar
" ]) ;;
    tt ;;
    tt
  else
    tt ;;
  if (let_if Foo.Qux value := c : bool) then
    _crate.io._print
      (format_arguments::["new_v1"]
        [ "c is "; "
" ]
        [ format_argument::["new_display"] value ]) ;;
    tt ;;
    tt
  else
    tt ;;
  if (let_if Foo.Qux (100 as value) := c : bool) then
    _crate.io._print
      (format_arguments::["new_const"] [ "c is one hundred
" ]) ;;
    tt ;;
    tt
  else
    tt.
