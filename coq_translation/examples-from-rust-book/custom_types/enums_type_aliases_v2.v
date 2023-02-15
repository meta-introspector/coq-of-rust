(* Generated by coq-of-rust *)
Require Import Coq.Strings.String.
Require Import Coq.ZArith.ZArith.
Local Open Scope Z.

Definition u8 : Set := Z.

(* Approximation *)
Definition f64 : Set := Z.

Error Enum.

(* Impl [VeryVerboseEnumOfThingsToDoWithNumbers] *)
Module ImplVeryVerboseEnumOfThingsToDoWithNumbers.
  Definition run (self : ref Self) (x : i32) (y : i32) : i32 :=
    match self with
    | ImplSelf.Add => add x y
    | ImplSelf.Subtract => sub x y
    end.
End ImplVeryVerboseEnumOfThingsToDoWithNumbers.
(* End impl [VeryVerboseEnumOfThingsToDoWithNumbers] *)