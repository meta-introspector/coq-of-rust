(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition main :=
  ltac:(function (
    let _immutable_binding := 1 in
    let mutable_binding := 1 in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "Before mutation: "; "
" ],
            [ format_argument::["new_display"](| mutable_binding |) ]
          |)
        |) in
      tt in
    let '_ := mutable_binding.["add_assign"](| 1 |) in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "After mutation: "; "
" ],
            [ format_argument::["new_display"](| mutable_binding |) ]
          |)
        |) in
      tt in
    tt
    : unit)).
