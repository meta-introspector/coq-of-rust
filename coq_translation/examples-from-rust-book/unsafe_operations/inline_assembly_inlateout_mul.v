(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition main (_ : unit) :=
  Stmt_item.

Definition mul (_ : unit) :=
  let lo := tt in
  let hi := tt in
  InlineAsm ;;
  tt ;;
  add (shl hi 64) lo.
