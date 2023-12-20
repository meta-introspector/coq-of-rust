(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Parameter LANGUAGE : ref str.t.

Parameter THRESHOLD : i32.t.

(*
fn is_big(n: i32) -> bool {
    // Access constant in some function
    n > THRESHOLD
}
*)
Parameter is_big : i32.t -> M bool.t.

(*
fn main() {
    let n = 16;

    // Access constant in the main thread
    println!("This is {}", LANGUAGE);
    println!("The threshold is {}", THRESHOLD);
    println!("{} is {}", n, if is_big(n) { "big" } else { "small" });

    // Error! Cannot modify a `const`.
    // THRESHOLD = 5;
    // FIXME ^ Comment out this line
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.