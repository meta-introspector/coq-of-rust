(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition used_function `{ℋ : State.Trait} : M unit :=
  M.function_body (M.alloc tt).

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition unused_function `{ℋ : State.Trait} : M unit :=
  M.function_body (M.alloc tt).

Definition noisy_unused_function `{ℋ : State.Trait} : M unit :=
  M.function_body (M.alloc tt).

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* _ : ltac:(refine unit) := dead_code.used_function in
    M.alloc tt).
