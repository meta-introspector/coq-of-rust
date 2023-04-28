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
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"] [ "a is foobar\n" ] [  ]) ;;
    tt ;;
    tt
  else
    tt ;;
  if (let_if Foo.Bar := b : bool) then
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"] [ "b is foobar\n" ] [  ]) ;;
    tt ;;
    tt
  else
    tt ;;
  if (let_if Foo.Qux.Build_t value := c : bool) then
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"]
        [ "c is "; "\n" ]
        [ _crate.fmt.ArgumentV1::["new_display"] value ]) ;;
    tt ;;
    tt
  else
    tt ;;
  if (let_if Foo.Qux.Build_t value := c : bool) then
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"] [ "c is one hundred\n" ] [  ]) ;;
    tt ;;
    tt
  else
    tt.

Definition main (_ : unit) : unit := test.
