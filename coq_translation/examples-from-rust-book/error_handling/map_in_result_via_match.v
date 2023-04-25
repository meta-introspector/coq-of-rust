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
  | 'Ok.Build_t first_number =>
    match second_number_str.["parse"] with
    | 'Ok.Build_t second_number => Ok (first_number.["mul"] second_number)
    | 'Err.Build_t e => Err e
    end
  | 'Err.Build_t e => Err e
  end.

Definition print (result : Result i32 ParseIntError) : unit :=
  match result with
  | 'Ok.Build_t n =>
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"]
        [ "n is "; "\n" ]
        [ _crate.fmt.ArgumentV1::["new_display"] n ]) ;;
    tt
  | 'Err.Build_t e =>
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"]
        [ "Error: "; "\n" ]
        [ _crate.fmt.ArgumentV1::["new_display"] e ]) ;;
    tt
  end.

Definition main (_ : unit) : unit :=
  let twenty := multiply "10" "2" in
  print twenty ;;
  let tt := multiply "t" "2" in
  print tt ;;
  tt.
