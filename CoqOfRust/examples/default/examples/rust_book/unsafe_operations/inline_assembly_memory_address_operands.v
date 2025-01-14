(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    use std::arch::asm;

    fn load_fpu_control_word(control: u16) {
        unsafe {
            asm!("fldcw [{}]", in(reg) &control, options(nostack));
        }
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit := M.pure tt.

(*
    fn load_fpu_control_word(control: u16) {
        unsafe {
            asm!("fldcw [{}]", in(reg) &control, options(nostack));
        }
    }
*)
Definition load_fpu_control_word (control : u16.t) : M unit :=
  let* control := M.alloc control in
  let _ : M.Val unit := InlineAssembly in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
