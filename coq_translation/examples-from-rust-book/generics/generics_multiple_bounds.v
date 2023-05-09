(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition compare_prints
    {T : Set}
    `{Debug.Trait T}
    `{Display.Trait T}
    (t : ref T) :=
  let return_type := unit in
  ltac:(function (
    let _ : unit :=
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "Debug: `"; "`
" ],
            [ format_argument::["new_debug"](| t |) ]
          |)
        |) in
      tt in
    let _ : unit :=
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "Display: `"; "`
" ],
            [ format_argument::["new_display"](| t |) ]
          |)
        |) in
      tt in
    tt
  : return_type)).

Definition compare_types
    {T U : Set}
    `{Debug.Trait T}
    `{Debug.Trait U}
    (t : ref T)
    (u : ref U) :=
  let return_type := unit in
  ltac:(function (
    let _ : unit :=
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "t: `"; "`
" ],
            [ format_argument::["new_debug"](| t |) ]
          |)
        |) in
      tt in
    let _ : unit :=
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "u: `"; "`
" ],
            [ format_argument::["new_debug"](| u |) ]
          |)
        |) in
      tt in
    tt
  : return_type)).

Definition main :=
  let return_type := unit in
  ltac:(function (
    let string := "words" in
    let array := [ 1; 2; 3 ] in
    let vec :=
      Slice::["into_vec"](| _crate.boxed.Box::["new"](| [ 1; 2; 3 ] |) |) in
    let _ : unit := compare_prints(| string |) in
    let _ : unit := compare_types(| array, vec |) in
    tt
  : return_type)).
