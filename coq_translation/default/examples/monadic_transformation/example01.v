(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition id `{ℋ : State.Trait} (x : u64) : M u64 :=
  M.function_body (M.pure x).

Definition tri `{ℋ : State.Trait} (a : u64) (b : u64) (c : u64) : M unit :=
  M.function_body (M.alloc tt).

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* _ :=
      let* α0 := M.alloc 0 in
      example01.id α0 in
    let* _ :=
      let* α0 := M.alloc 0 in
      let* α1 := example01.id α0 in
      example01.id α1 in
    let* _ :=
      let* α0 := M.alloc 0 in
      let* α1 := example01.id α0 in
      let* α2 := example01.id α1 in
      example01.id α2 in
    let* _ :=
      let* α0 := M.alloc 0 in
      let* α1 := example01.id α0 in
      let* α2 := example01.id α1 in
      let* α3 := example01.id α2 in
      example01.id α3 in
    let* _ :=
      let* α0 := M.alloc 1 in
      let* α1 := example01.id α0 in
      let* α2 := M.alloc 2 in
      let* α3 := example01.id α2 in
      let* α4 := M.alloc 3 in
      example01.tri α1 α3 α4 in
    M.alloc tt).
