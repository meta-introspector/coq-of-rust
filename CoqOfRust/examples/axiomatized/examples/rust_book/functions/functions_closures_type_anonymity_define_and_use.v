(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn apply<F>(f: F)
where
    F: Fn(),
{
    f();
}
*)
Parameter apply :
    forall {F : Set} {ℋ_0 : core.ops.function.Fn.Trait F (Args := unit)},
    F -> M unit.

(*
fn main() {
    let x = 7;

    // Capture `x` into an anonymous type and implement
    // `Fn` for it. Store it in `print`.
    let print = || println!("{}", x);

    apply(print);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.