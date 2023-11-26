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
  Definition run (self : ref ltac:(Self)) (x : i32.t) (y : i32.t) : M i32.t :=
    let* self : M.Val (ref ltac:(Self)) := M.alloc self in
    let* x : M.Val i32.t := M.alloc x in
    let* y : M.Val i32.t := M.alloc y in
    M.function_body
      (let* α0 := M.read self in
      match α0 with
      | enums_type_aliases_v2.VeryVerboseEnumOfThingsToDoWithNumbers.Add  =>
        BinOp.add x y
      |
          enums_type_aliases_v2.VeryVerboseEnumOfThingsToDoWithNumbers.Subtract 
          =>
        BinOp.sub x y
      end).
  
  Global Instance AssociatedFunction_run :
    Notations.DoubleColon ltac:(Self) "run" := {
    Notations.double_colon := run;
  }.
End Impl_enums_type_aliases_v2_VeryVerboseEnumOfThingsToDoWithNumbers_t.
End Impl_enums_type_aliases_v2_VeryVerboseEnumOfThingsToDoWithNumbers_t.
