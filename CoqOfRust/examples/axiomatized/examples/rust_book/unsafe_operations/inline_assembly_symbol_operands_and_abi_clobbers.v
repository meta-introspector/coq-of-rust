(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    use std::arch::asm;

    extern "C" fn foo(arg: i32) -> i32 {
        println!("arg = {}", arg);
        arg * 2
    }

    fn call_foo(arg: i32) -> i32 {
        unsafe {
            let result;
            asm!(
                "call {}",
                // Function pointer to call
                in(reg) foo,
                // 1st argument in rdi
                in("rdi") arg,
                // Return value in rax
                out("rax") result,
                // Mark all registers which are not preserved by the "C" calling
                // convention as clobbered.
                clobber_abi("C"),
            );
            result
        }
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.

(*
    extern "C" fn foo(arg: i32) -> i32 {
        println!("arg = {}", arg);
        arg * 2
    }
*)
Parameter foo : i32.t -> M i32.t.

(*
    fn call_foo(arg: i32) -> i32 {
        unsafe {
            let result;
            asm!(
                "call {}",
                // Function pointer to call
                in(reg) foo,
                // 1st argument in rdi
                in("rdi") arg,
                // Return value in rax
                out("rax") result,
                // Mark all registers which are not preserved by the "C" calling
                // convention as clobbered.
                clobber_abi("C"),
            );
            result
        }
    }
*)
Parameter call_foo : i32.t -> M i32.t.
