(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition main :=
  ltac:(function (
    let outer_var := 42 in
    let closure_annotated := fun i => i.["add"](| outer_var |) in
    let closure_inferred := fun i => i.["add"](| outer_var |) in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "closure_annotated: "; "
" ],
            [ format_argument::["new_display"](| closure_annotated(| 1 |) |) ]
          |)
        |) in
      tt in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "closure_inferred: "; "
" ],
            [ format_argument::["new_display"](| closure_inferred(| 1 |) |) ]
          |)
        |) in
      tt in
    let one := fun  => 1 in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "closure returning one: "; "
" ],
            [ format_argument::["new_display"](| one(||) |) ]
          |)
        |) in
      tt in
    tt
    : unit)).
