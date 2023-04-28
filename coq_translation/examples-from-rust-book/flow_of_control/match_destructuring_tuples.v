(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition main (_ : unit) : unit :=
  let triple := (0, neg 2, 3) in
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "Tell me about "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_debug"] triple ]) ;;
  tt ;;
  match triple with
  | (Int(0, Unsuffixed), y, z) =>
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"]
        [ "First is `0`, `y` is "; ", and `z` is "; "\n" ]
        [
          _crate.fmt.ArgumentV1::["new_debug"] y;
          _crate.fmt.ArgumentV1::["new_debug"] z
        ]) ;;
    tt
  | (Int(1, Unsuffixed)) =>
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"]
        [ "First is `1` and the rest doesn't matter\n" ]
        [  ]) ;;
    tt
  | (Int(2, Unsuffixed)) =>
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"]
        [ "last is `2` and the rest doesn't matter\n" ]
        [  ]) ;;
    tt
  | (Int(3, Unsuffixed), Int(4, Unsuffixed)) =>
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"]
        [ "First is `3`, last is `4`, and the rest doesn't matter\n" ]
        [  ]) ;;
    tt
  | _ =>
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"]
        [ "It doesn't matter what they are\n" ]
        [  ]) ;;
    tt
  end.

Definition main (_ : unit) : unit := test.
