(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Foo.
  Inductive t : Set :=
  | Bar.
End Foo.
Definition Foo := Foo.t.

Definition main :=
  ltac:(function (
    let a := Foo.Bar in
    if (let_if Foo.Bar := a : bool) then
      let '_ :=
        let '_ :=
          _crate.io._print(|
            format_arguments::["new_const"](| [ "a is foobar
" ] |)
          |) in
        tt in
      tt
    else
      tt
    : unit)).
