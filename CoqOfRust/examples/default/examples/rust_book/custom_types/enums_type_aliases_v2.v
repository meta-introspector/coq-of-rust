(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module VeryVerboseEnumOfThingsToDoWithNumbers.
  Inductive t : Set :=
  | Add
  | Subtract.
End VeryVerboseEnumOfThingsToDoWithNumbers.

Module  Impl_enums_type_aliases_v2_VeryVerboseEnumOfThingsToDoWithNumbers_t.
Section Impl_enums_type_aliases_v2_VeryVerboseEnumOfThingsToDoWithNumbers_t.
  Definition Self : Set :=
    enums_type_aliases_v2.VeryVerboseEnumOfThingsToDoWithNumbers.t.
  
  (*
      fn run(&self, x: i32, y: i32) -> i32 {
          match self {
              Self::Add => x + y,
              Self::Subtract => x - y,
          }
      }
  *)
  Definition run (self : ref Self) (x : i32.t) (y : i32.t) : M i32.t :=
    let* self := M.alloc self in
    let* x := M.alloc x in
    let* y := M.alloc y in
    let* α0 : M.Val i32.t :=
      match_operator
        self
        [
          fun γ =>
            (let* γ :=
              let* α0 := M.read γ in
              M.pure (deref α0) in
            let* α0 := M.read γ in
            match α0 with
            |
                enums_type_aliases_v2.VeryVerboseEnumOfThingsToDoWithNumbers.Add
                =>
              let* α0 : i32.t := M.read x in
              let* α1 : i32.t := M.read y in
              let* α2 : i32.t := BinOp.Panic.add α0 α1 in
              M.alloc α2
            | _ => M.break_match
            end) :
            M (M.Val i32.t);
          fun γ =>
            (let* γ :=
              let* α0 := M.read γ in
              M.pure (deref α0) in
            let* α0 := M.read γ in
            match α0 with
            |
                enums_type_aliases_v2.VeryVerboseEnumOfThingsToDoWithNumbers.Subtract
                =>
              let* α0 : i32.t := M.read x in
              let* α1 : i32.t := M.read y in
              let* α2 : i32.t := BinOp.Panic.sub α0 α1 in
              M.alloc α2
            | _ => M.break_match
            end) :
            M (M.Val i32.t)
        ] in
    M.read α0.
  
  Global Instance AssociatedFunction_run : Notations.DoubleColon Self "run" := {
    Notations.double_colon := run;
  }.
End Impl_enums_type_aliases_v2_VeryVerboseEnumOfThingsToDoWithNumbers_t.
End Impl_enums_type_aliases_v2_VeryVerboseEnumOfThingsToDoWithNumbers_t.
