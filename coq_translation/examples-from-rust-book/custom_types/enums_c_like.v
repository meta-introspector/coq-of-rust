(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Number.
  Inductive t : Set :=
  | Zero
  | One
  | Two.
End Number.
Definition Number := Number.t.

Module Color.
  Inductive t : Set :=
  | Red
  | Green
  | Blue.
End Color.
Definition Color := Color.t.

Definition main :=
  let return_type := unit in
  ltac:(function (
    let _ : unit :=
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "zero is "; "
" ],
            [ format_argument::["new_display"](| cast Number.Zero i32 |) ]
          |)
        |) in
      tt in
    let _ : unit :=
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "one is "; "
" ],
            [ format_argument::["new_display"](| cast Number.One i32 |) ]
          |)
        |) in
      tt in
    let _ : unit :=
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_v1_formatted"](|
            [ "roses are #"; "
" ],
            [ format_argument::["new_lower_hex"](| cast Color.Red i32 |) ],
            [
              format_placeholder::["new"](|
                0,
                " "%char,
                format_alignment::["Unknown"],
                8,
                format_count::["Implied"],
                format_count::["Is"](| 6 |)
              |)
            ],
            format_unsafe_arg::["new"](||)
          |)
        |) in
      tt in
    let _ : unit :=
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_v1_formatted"](|
            [ "violets are #"; "
" ],
            [ format_argument::["new_lower_hex"](| cast Color.Blue i32 |) ],
            [
              format_placeholder::["new"](|
                0,
                " "%char,
                format_alignment::["Unknown"],
                8,
                format_count::["Implied"],
                format_count::["Is"](| 6 |)
              |)
            ],
            format_unsafe_arg::["new"](||)
          |)
        |) in
      tt in
    tt
  : return_type)).
