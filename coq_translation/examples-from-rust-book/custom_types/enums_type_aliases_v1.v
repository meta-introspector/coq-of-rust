(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module VeryVerboseEnumOfThingsToDoWithNumbers.
  Inductive t : Set :=
  | Add
  | Subtract.
End VeryVerboseEnumOfThingsToDoWithNumbers.
Definition
  VeryVerboseEnumOfThingsToDoWithNumbers
  :=
  VeryVerboseEnumOfThingsToDoWithNumbers.t.

Definition Operations : Set := VeryVerboseEnumOfThingsToDoWithNumbers.

Definition main (_ : unit) : unit :=
  let x := Operations::["Add"] in
  tt.

Definition main (_ : unit) : unit := test.
