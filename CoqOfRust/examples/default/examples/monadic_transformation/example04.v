(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    let x = &1;
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* x : ltac:(refine (M.Val (ref i32.t))) :=
      let* α0 : ltac:(refine (M.Val i32.t)) := M.alloc 1 in
      let* α1 : ltac:(refine (M.Val (ref i32.t))) := borrow α0 in
      M.copy α1 in
    M.alloc tt).
