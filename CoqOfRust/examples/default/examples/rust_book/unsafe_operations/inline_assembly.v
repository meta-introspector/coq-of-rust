(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    use std::arch::asm;

    unsafe {
        asm!("nop");
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let _ : M.Val unit := InlineAssembly in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
