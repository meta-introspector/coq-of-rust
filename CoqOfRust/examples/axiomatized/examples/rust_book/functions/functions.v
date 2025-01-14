(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn is_divisible_by(lhs: u32, rhs: u32) -> bool {
    // Corner case, early return
    if rhs == 0 {
        return false;
    }

    // This is an expression, the `return` keyword is not necessary here
    lhs % rhs == 0
}
*)
Parameter is_divisible_by : u32.t -> u32.t -> M bool.t.

(*
fn fizzbuzz(n: u32) -> () {
    if is_divisible_by(n, 15) {
        println!("fizzbuzz");
    } else if is_divisible_by(n, 3) {
        println!("fizz");
    } else if is_divisible_by(n, 5) {
        println!("buzz");
    } else {
        println!("{}", n);
    }
}
*)
Parameter fizzbuzz : u32.t -> M unit.

(*
fn fizzbuzz_to(n: u32) {
    for n in 1..=n {
        fizzbuzz(n);
    }
}
*)
Parameter fizzbuzz_to : u32.t -> M unit.

(*
fn main() {
    // We can use this function here, and define it somewhere later
    fizzbuzz_to(100);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.
