(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    fn foo() -> ! {
        panic!("This call never returns.");
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.

(*
    fn foo() -> ! {
        panic!("This call never returns.");
    }
*)
Parameter foo : M never.t.
