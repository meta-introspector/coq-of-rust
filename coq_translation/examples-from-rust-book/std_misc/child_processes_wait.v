(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Command := std.process.Command.
Definition Command := Command.t.

Definition main :=
  ltac:(function (
    let child :=
      (((Command::["new"](| "sleep" |)).["arg"](| "5"
      |)).["spawn"](||)).["unwrap"](||) in
    let _result := (child.["wait"](||)).["unwrap"](||) in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_const"](| [ "reached end of main
" ] |)
        |) in
      tt in
    tt
    : unit)).
