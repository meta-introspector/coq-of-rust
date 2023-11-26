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
Parameter main : M unit.

(*
    fn load_fpu_control_word(control: u16) {
        unsafe {
            asm!("fldcw [{}]", in(reg) &control, options(nostack));
        }
    }
*)
Parameter load_fpu_control_word : (M.Val u16.t) -> M unit.
