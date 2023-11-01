(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module VeryVerboseEnumOfThingsToDoWithNumbers.
  Inductive t `{ℋ : State.Trait} : Set :=
  | Add
  | Subtract.
End VeryVerboseEnumOfThingsToDoWithNumbers.
Definition VeryVerboseEnumOfThingsToDoWithNumbers `{ℋ : State.Trait} : Set :=
  VeryVerboseEnumOfThingsToDoWithNumbers.t.

Ltac Operations :=
  refine enums_type_aliases_v1.VeryVerboseEnumOfThingsToDoWithNumbers.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  let* x :=
    M.alloc enums_type_aliases_v1.VeryVerboseEnumOfThingsToDoWithNumbers.Add in
  M.alloc tt.
