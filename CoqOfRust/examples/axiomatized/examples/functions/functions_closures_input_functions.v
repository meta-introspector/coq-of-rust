(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn call_me<F: Fn()>(f: F) {
    f();
}
*)
Parameter call_me :
    forall {F : Set} {ℋ_0 : core.ops.function.Fn.Trait F (Args := unit)},
    (M.Val F) -> M unit.

(*
fn function() {
    println!("I'm a function!");
}
*)
Parameter function : M unit.

(*
fn main() {
    // Define a closure satisfying the `Fn` bound
    let closure = || println!("I'm a closure!");

    call_me(closure);
    call_me(function);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.
