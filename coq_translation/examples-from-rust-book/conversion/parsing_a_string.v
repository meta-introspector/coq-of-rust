(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition main (_ : unit) :=
  let parsed := unwrap (parse "5") in
  let turbo_parsed := unwrap (parse "10") in
  let sum := add parsed turbo_parsed in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["Sum: ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_debug sum]) ;;
  tt ;;
  tt.
