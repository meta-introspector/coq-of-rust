(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition main (_ : unit) : unit :=
  let i := 3 in
  let borrow1 := i in
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "borrow1: "; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_display borrow1 ]) ;;
  tt ;;
  tt ;;
  let borrow2 := i in
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "borrow2: "; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_display borrow2 ]) ;;
  tt ;;
  tt.
