(* Generated by coq-of-rust *)
Require Import Coq.Strings.String.
Require Import Coq.ZArith.ZArith.
Local Open Scope Z.

Definition u8 : Set := Z.

(* Approximation *)
Definition f64 : Set := Z.

Definition some_number (_ : unit) :=
  Some 42.

Definition main (_ : unit) :=
  match some_number tt with
  | Some (n) =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1
        ["The Answer: ";"!\n"]
        [_crate::fmt::ImplArgumentV1.new_display n]) ;;
    tt
  | Some (n) =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1
        ["Not interesting... ";"\n"]
        [_crate::fmt::ImplArgumentV1.new_display n]) ;;
    tt
  | _ => ()
  end.