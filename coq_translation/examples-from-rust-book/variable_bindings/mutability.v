(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition main (_ : unit) :=
  let _immutable_binding := 1 in
  let mutable_binding := 1 in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["Before mutation: ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_display mutable_binding]) ;;
  tt ;;
  assign mutable_binding := add mutable_binding 1 ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["After mutation: ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_display mutable_binding]) ;;
  tt ;;
  tt.
