(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition main (_ : unit) : unit :=
  let val := 1.["add"] 2 in
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ ""; " = "; "\n" ]
      [
        _crate.fmt.ArgumentV1::["new_display"] "1 + 2";
        _crate.fmt.ArgumentV1::["new_display"] val
      ]) ;;
  tt ;;
  tt ;;
  let val := (1.["add"] 2).["mul"] (3.["div"] 4) in
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ ""; " = "; "\n" ]
      [
        _crate.fmt.ArgumentV1::["new_display"] "(1 + 2) * (3 / 4)";
        _crate.fmt.ArgumentV1::["new_display"] val
      ]) ;;
  tt ;;
  tt.

Definition main (_ : unit) : unit := test.
