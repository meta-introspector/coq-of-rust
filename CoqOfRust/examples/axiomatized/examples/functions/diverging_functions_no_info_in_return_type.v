(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn some_fn() {
    ()
}
*)
Parameter some_fn : M unit.

(*
fn main() {
    let a: () = some_fn();
    println!("This function returns and you can see this line.")
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.
