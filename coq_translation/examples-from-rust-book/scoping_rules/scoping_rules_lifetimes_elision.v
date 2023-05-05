(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition elided_input (x : ref i32) :=
  ltac:(function (
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "`elided_input`: "; "
" ],
            [ format_argument::["new_display"](| x |) ]
          |)
        |) in
      tt in
    tt
    : unit)).

Definition annotated_input (x : ref i32) :=
  ltac:(function (
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "`annotated_input`: "; "
" ],
            [ format_argument::["new_display"](| x |) ]
          |)
        |) in
      tt in
    tt
    : unit)).

Definition elided_pass (x : ref i32) := ltac:(function (x : ref i32)).

Definition annotated_pass (x : ref i32) := ltac:(function (x : ref i32)).

Definition main :=
  ltac:(function (
    let x := 3 in
    let '_ := elided_input(| x |) in
    let '_ := annotated_input(| x |) in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "`elided_pass`: "; "
" ],
            [ format_argument::["new_display"](| elided_pass(| x |) |) ]
          |)
        |) in
      tt in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "`annotated_pass`: "; "
" ],
            [ format_argument::["new_display"](| annotated_pass(| x |) |) ]
          |)
        |) in
      tt in
    tt
    : unit)).
