(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module VeryVerboseEnumOfThingsToDoWithNumbers.
  Inductive t `{ℋ : State.Trait} : Set :=
  | Add
  | Subtract.
End VeryVerboseEnumOfThingsToDoWithNumbers.
Definition VeryVerboseEnumOfThingsToDoWithNumbers `{ℋ : State.Trait} : Set :=
  M.Val VeryVerboseEnumOfThingsToDoWithNumbers.t.

Module  Impl_enums_type_aliases_v2_VeryVerboseEnumOfThingsToDoWithNumbers.
Section Impl_enums_type_aliases_v2_VeryVerboseEnumOfThingsToDoWithNumbers.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set :=
    enums_type_aliases_v2.VeryVerboseEnumOfThingsToDoWithNumbers.
  
  Definition run (self : ref Self) (x : i32) (y : i32) : M i32 :=
    M.function_body
      match self with
      | enums_type_aliases_v2.VeryVerboseEnumOfThingsToDoWithNumbers  =>
        BinOp.add x y
      | enums_type_aliases_v2.VeryVerboseEnumOfThingsToDoWithNumbers  =>
        BinOp.sub x y
      end.
  
  Global Instance AssociatedFunction_run : Notation.DoubleColon Self "run" := {
    Notation.double_colon := run;
  }.
End Impl_enums_type_aliases_v2_VeryVerboseEnumOfThingsToDoWithNumbers.
End Impl_enums_type_aliases_v2_VeryVerboseEnumOfThingsToDoWithNumbers.
