(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module VeryVerboseEnumOfThingsToDoWithNumbers.
  Inductive t : Set :=
  | Add
  | Subtract.
End VeryVerboseEnumOfThingsToDoWithNumbers.
Definition
  VeryVerboseEnumOfThingsToDoWithNumbers
  :=
  VeryVerboseEnumOfThingsToDoWithNumbers.t.

Definition Operations : Set :=
  enums_type_aliases_v1.VeryVerboseEnumOfThingsToDoWithNumbers.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : unit -> M unit.