(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition main :=
  let return_type := unit in
  ltac:(function (
    tt
  : return_type)).

Module asm := std.arch.asm.

Definition foo (arg : i32) :=
  let return_type := i32 in
  ltac:(function (
    let _ : unit :=
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "arg = "; "
" ],
            [ format_argument::["new_display"](| arg |) ]
          |)
        |) in
      tt in
    arg.["mul"](| 2 |)
  : return_type)).

Definition call_foo (arg : i32) :=
  let return_type := i32 in
  ltac:(function (
    let result := tt in
    let _ : unit := InlineAsm in
    result
  : return_type)).
