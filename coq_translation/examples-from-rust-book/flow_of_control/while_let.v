(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition main (_ : unit) :=
  let optional := Some 0 in
  loop (if let_if Some (i) := optional then
    if gt i 9 then
      _crate.io._print
        (_crate::fmt::ImplArguments.new_v1 ["Greater than 9, quit!\n"] []) ;;
      tt ;;
      assign optional := None ;;
      tt
    else
      _crate.io._print
        (_crate::fmt::ImplArguments.new_v1
          ["`i` is `";"`. Try again.\n"]
          [_crate::fmt::ImplArgumentV1.new_debug i]) ;;
      tt ;;
      assign optional := Some (add i 1) ;;
      tt
  else
    Break ;;
    tt) from while.
