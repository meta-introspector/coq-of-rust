(* Generated by coq-of-rust *)
Require Import Coq.Strings.String.
Require Import Coq.ZArith.ZArith.
Local Open Scope Z.

Definition u8 : Set := Z.

(* Approximation *)
Definition f64 : Set := Z.

Error Struct.

Error Struct.

Class DoubleDrop : Set := {
  double_drop : Self -> T -> _;
}.

(* Impl [U] of trait [DoubleDrop]*)
Module ImplU.
  Definition double_drop (self : Self) (Pattern : T) :=
    tt.
End ImplU.
(* End impl [U] *)

Definition main (_ : unit) :=
  let empty := Empty in
  let null := Null in
  double_drop empty null ;;
  tt.