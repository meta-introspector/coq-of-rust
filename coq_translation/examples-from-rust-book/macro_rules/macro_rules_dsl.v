(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition main :=
  let return_type := unit in
  ltac:(function (
    let _ : unit :=
      let val := 1.["add"](| 2 |) in
      let _ : unit :=
        let _ : unit :=
          _crate.io._print(|
            format_arguments::["new_v1"](|
              [ "1 + 2 = "; "
" ],
              [ format_argument::["new_display"](| val |) ]
            |)
          |) in
        tt in
      tt in
    let val := 1.["add"](| 2 |).["mul"](| 3.["div"](| 4 |) |) in
    let _ : unit :=
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "(1 + 2) * (3 / 4) = "; "
" ],
            [ format_argument::["new_display"](| val |) ]
          |)
        |) in
      tt in
    tt
  : return_type)).
