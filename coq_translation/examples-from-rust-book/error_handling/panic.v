(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition drink (_ : unit) :=
  if eq beverage "lemonade" then
    _crate.rt.begin_panic "AAAaaaaa!!!!" ;;
    tt
  else
    tt ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["Some refreshing ";" is all I need.\n"]
      [_crate::fmt::ImplArgumentV1.new_display beverage]) ;;
  tt ;;
  tt.

Definition main (_ : unit) :=
  drink "water" ;;
  drink "lemonade" ;;
  tt.
