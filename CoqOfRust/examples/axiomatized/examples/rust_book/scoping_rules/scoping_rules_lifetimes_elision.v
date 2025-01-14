(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn elided_input(x: &i32) {
    println!("`elided_input`: {}", x);
}
*)
Parameter elided_input : (ref i32.t) -> M unit.

(*
fn annotated_input<'a>(x: &'a i32) {
    println!("`annotated_input`: {}", x);
}
*)
Parameter annotated_input : (ref i32.t) -> M unit.

(*
fn elided_pass(x: &i32) -> &i32 {
    x
}
*)
Parameter elided_pass : (ref i32.t) -> M (ref i32.t).

(*
fn annotated_pass<'a>(x: &'a i32) -> &'a i32 {
    x
}
*)
Parameter annotated_pass : (ref i32.t) -> M (ref i32.t).

(*
fn main() {
    let x = 3;

    elided_input(&x);
    annotated_input(&x);

    println!("`elided_pass`: {}", elided_pass(&x));
    println!("`annotated_pass`: {}", annotated_pass(&x));
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.
