(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module ParseIntError := std.num.ParseIntError.
Definition ParseIntError := ParseIntError.t.

Definition multiply
    (first_number_str : ref str)
    (second_number_str : ref str)
    : Result i32 ParseIntError :=
  match first_number_str.["parse"] with
  | Ok first_number =>
    match second_number_str.["parse"] with
    | Ok second_number => Ok (first_number.["mul"] second_number)
    | Err e => Err e
    end
  | Err e => Err e
  end.

Definition print (result : Result i32 ParseIntError) : unit :=
  match result with
  | Ok n =>
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "n is "; "
" ]
          [ format_argument::["new_display"] n ]) in
    tt
  | Err e =>
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "Error: "; "
" ]
          [ format_argument::["new_display"] e ]) in
    tt
  end.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  let twenty := multiply "10" "2" in
  let _ := print twenty in
  let tt := multiply "t" "2" in
  let _ := print tt in
  tt.
