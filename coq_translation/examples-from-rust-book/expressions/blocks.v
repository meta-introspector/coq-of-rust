(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition main :=
  let return_type := unit in
  ltac:(function (
    let x := 5 in
    let y :=
      let x_squared := x.["mul"](| x |) in
      let x_cube := x_squared.["mul"](| x |) in
      x_cube.["add"](| x_squared |).["add"](| x |) in
    let z :=
      let _ : unit := 2.["mul"](| x |) in
      tt in
    let _ : unit :=
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "x is "; "
" ],
            [ format_argument::["new_debug"](| x |) ]
          |)
        |) in
      tt in
    let _ : unit :=
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "y is "; "
" ],
            [ format_argument::["new_debug"](| y |) ]
          |)
        |) in
      tt in
    let _ : unit :=
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "z is "; "
" ],
            [ format_argument::["new_debug"](| z |) ]
          |)
        |) in
      tt in
    tt
  : return_type)).
