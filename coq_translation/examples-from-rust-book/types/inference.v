(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition main :=
  ltac:(function (
    let elem := 5 in
    let vec := Vec::["new"](||) in
    let '_ := vec.["push"](| elem |) in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ ""; "
" ],
            [ format_argument::["new_debug"](| vec |) ]
          |)
        |) in
      tt in
    tt
    : unit)).
