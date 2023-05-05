(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition main :=
  ltac:(function (
    let shadowed_binding := 1 in
    let '_ :=
      let '_ :=
        let '_ :=
          _crate.io._print(|
            format_arguments::["new_v1"](|
              [ "before being shadowed: "; "
" ],
              [ format_argument::["new_display"](| shadowed_binding |) ]
            |)
          |) in
        tt in
      let shadowed_binding := "abc" in
      let '_ :=
        let '_ :=
          _crate.io._print(|
            format_arguments::["new_v1"](|
              [ "shadowed in inner block: "; "
" ],
              [ format_argument::["new_display"](| shadowed_binding |) ]
            |)
          |) in
        tt in
      tt in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "outside inner block: "; "
" ],
            [ format_argument::["new_display"](| shadowed_binding |) ]
          |)
        |) in
      tt in
    let shadowed_binding := 2 in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "shadowed in outer block: "; "
" ],
            [ format_argument::["new_display"](| shadowed_binding |) ]
          |)
        |) in
      tt in
    tt
    : unit)).
