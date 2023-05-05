(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition main :=
  ltac:(function (
    let array := [ 1; 2.["neg"](||); 6 ] in
    match array with
    | _ =>
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "array[0] = 0, array[1] = "; ", array[2] = "; "
" ],
            [
              format_argument::["new_display"](| second |);
              format_argument::["new_display"](| third |)
            ]
          |)
        |) in
      tt
    | _ =>
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "array[0] = 1, array[2] = "; " and array[1] was ignored
" ],
            [ format_argument::["new_display"](| third |) ]
          |)
        |) in
      tt
    | _ =>
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [
              "array[0] = -1, array[1] = ";
              " and all the other ones were ignored
"
            ],
            [ format_argument::["new_display"](| second |) ]
          |)
        |) in
      tt
    | _ =>
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "array[0] = 3, array[1] = "; " and the other elements were "; "
"
            ],
            [
              format_argument::["new_display"](| second |);
              format_argument::["new_debug"](| tail |)
            ]
          |)
        |) in
      tt
    | _ =>
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "array[0] = "; ", middle = "; ", array[2] = "; "
" ],
            [
              format_argument::["new_display"](| first |);
              format_argument::["new_debug"](| middle |);
              format_argument::["new_display"](| last |)
            ]
          |)
        |) in
      tt
    end
    : unit)).
