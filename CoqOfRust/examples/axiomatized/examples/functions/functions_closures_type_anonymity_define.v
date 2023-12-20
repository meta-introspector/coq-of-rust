(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    // `F` must be generic.
    fn apply<F>(f: F)
    where
        F: FnOnce(),
    {
        f();
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.

(*
    fn apply<F>(f: F)
    where
        F: FnOnce(),
    {
        f();
    }
*)
Parameter apply :
    forall {F : Set} {ℋ_0 : core.ops.function.FnOnce.Trait F (Args := unit)},
    F -> M unit.