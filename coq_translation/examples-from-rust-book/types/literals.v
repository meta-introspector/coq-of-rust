(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition main :=
  let return_type := unit in
  ltac:(function (
    let x := 1 in
    let y := 2 in
    let z := 3 (* 3 *) in
    let i := 1 in
    let f := 1 (* 1.0 *) in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "size of `x` in bytes: "; "
" ],
            [ format_argument::["new_display"](| std.mem.size_of_val(| x |) |) ]
          |)
        |) in
      tt in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "size of `y` in bytes: "; "
" ],
            [ format_argument::["new_display"](| std.mem.size_of_val(| y |) |) ]
          |)
        |) in
      tt in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "size of `z` in bytes: "; "
" ],
            [ format_argument::["new_display"](| std.mem.size_of_val(| z |) |) ]
          |)
        |) in
      tt in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "size of `i` in bytes: "; "
" ],
            [ format_argument::["new_display"](| std.mem.size_of_val(| i |) |) ]
          |)
        |) in
      tt in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "size of `f` in bytes: "; "
" ],
            [ format_argument::["new_display"](| std.mem.size_of_val(| f |) |) ]
          |)
        |) in
      tt in
    tt
  : return_type)).
