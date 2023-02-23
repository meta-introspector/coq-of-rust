(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition multiply
    (first_number_str : ref str)
    (second_number_str : ref str)
    : Result :=
  let first_number :=
    match method "parse" first_number_str with
    | _crate.result.Result.Ok (val) => val
    | _crate.result.Result.Err (err) =>
      Return (_crate.result.Result.Err (_crate.convert.From.from err)) ;;
      tt
    end in
  let second_number :=
    match method "parse" second_number_str with
    | _crate.result.Result.Ok (val) => val
    | _crate.result.Result.Err (err) =>
      Return (_crate.result.Result.Err (_crate.convert.From.from err)) ;;
      tt
    end in
  Ok (mul first_number second_number).

Definition print (result : Result) : unit :=
  match result with
  | Ok (n) =>
    _crate.io._print
      (_crate.fmt.ImplArguments.new_v1
        [ "n is "; "\n" ]
        [ _crate.fmt.ImplArgumentV1.new_display n ]) ;;
    tt
  | Err (e) =>
    _crate.io._print
      (_crate.fmt.ImplArguments.new_v1
        [ "Error: "; "\n" ]
        [ _crate.fmt.ImplArgumentV1.new_display e ]) ;;
    tt
  end.

Definition main (_ : unit) : unit :=
  print (multiply "10" "2") ;;
  print (multiply "t" "2") ;;
  tt.
