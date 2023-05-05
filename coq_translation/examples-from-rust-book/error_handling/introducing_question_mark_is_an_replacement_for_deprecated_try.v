(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module ParseIntError := std.num.ParseIntError.
Definition ParseIntError := ParseIntError.t.

Definition multiply
    (first_number_str : ref str)
    (second_number_str : ref str) :=
  let return_type := Result i32 ParseIntError in
  ltac:(function (
    let first_number :=
      match first_number_str.["parse"](||) with
      | _crate.result.Result.Ok val => val
      | _crate.result.Result.Err err =>
        let '_ :=
          M.Return
            (_crate.result.Result.Err _crate.convert.From.from(| err |)) in
        tt
      end in
    let second_number :=
      match second_number_str.["parse"](||) with
      | _crate.result.Result.Ok val => val
      | _crate.result.Result.Err err =>
        let '_ :=
          M.Return
            (_crate.result.Result.Err _crate.convert.From.from(| err |)) in
        tt
      end in
    Ok first_number.["mul"](| second_number |)
  : return_type)).

Definition print (result : Result i32 ParseIntError) :=
  let return_type := unit in
  ltac:(function (
    match result with
    | Ok n =>
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "n is "; "
" ],
            [ format_argument::["new_display"](| n |) ]
          |)
        |) in
      tt
    | Err e =>
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "Error: "; "
" ],
            [ format_argument::["new_display"](| e |) ]
          |)
        |) in
      tt
    end
  : return_type)).

Definition main :=
  let return_type := unit in
  ltac:(function (
    let '_ := print(| multiply(| "10", "2" |) |) in
    let '_ := print(| multiply(| "t", "2" |) |) in
    tt
  : return_type)).
