(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition checked_division (dividend : i32) (divisor : i32) :=
  let return_type := Option i32 in
  ltac:(function (
    if (divisor.["eq"](| 0 |) : bool) then
      None
    else
      Some dividend.["div"](| divisor |)
  : return_type)).

Definition try_division (dividend : i32) (divisor : i32) :=
  let return_type := unit in
  ltac:(function (
    match checked_division(| dividend, divisor |) with
    | None =>
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ ""; " / "; " failed!
" ],
            [
              format_argument::["new_display"](| dividend |);
              format_argument::["new_display"](| divisor |)
            ]
          |)
        |) in
      tt
    | Some quotient =>
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ ""; " / "; " = "; "
" ],
            [
              format_argument::["new_display"](| dividend |);
              format_argument::["new_display"](| divisor |);
              format_argument::["new_display"](| quotient |)
            ]
          |)
        |) in
      tt
    end
  : return_type)).

Definition main :=
  let return_type := unit in
  ltac:(function (
    let _ : unit := try_division(| 4, 2 |) in
    let _ : unit := try_division(| 1, 0 |) in
    let none := None in
    let _equivalent_none := None in
    let optional_float := Some 0 (* 0 *) in
    let _ : unit :=
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ ""; " unwraps to "; "
" ],
            [
              format_argument::["new_debug"](| optional_float |);
              format_argument::["new_debug"](| optional_float.["unwrap"](||) |)
            ]
          |)
        |) in
      tt in
    let _ : unit :=
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ ""; " unwraps to "; "
" ],
            [
              format_argument::["new_debug"](| none |);
              format_argument::["new_debug"](| none.["unwrap"](||) |)
            ]
          |)
        |) in
      tt in
    tt
  : return_type)).
