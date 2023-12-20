(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module VeryVerboseEnumOfThingsToDoWithNumbers.
  Inductive t : Set :=
  | Add
  | Subtract.
End VeryVerboseEnumOfThingsToDoWithNumbers.

Module  Impl_enums_type_aliases_v2_VeryVerboseEnumOfThingsToDoWithNumbers_t.
Section Impl_enums_type_aliases_v2_VeryVerboseEnumOfThingsToDoWithNumbers_t.
  Ltac Self :=
    exact enums_type_aliases_v2.VeryVerboseEnumOfThingsToDoWithNumbers.t.
  
  (*
      fn run(&self, x: i32, y: i32) -> i32 {
          match self {
              Self::Add => x + y,
              Self::Subtract => x - y,
          }
      }
  *)
  Parameter run : (ref ltac:(Self)) -> i32.t -> i32.t -> M i32.t.
  
  Global Instance AssociatedFunction_run :
    Notations.DoubleColon ltac:(Self) "run" := {
    Notations.double_colon := run;
  }.
End Impl_enums_type_aliases_v2_VeryVerboseEnumOfThingsToDoWithNumbers_t.
End Impl_enums_type_aliases_v2_VeryVerboseEnumOfThingsToDoWithNumbers_t.