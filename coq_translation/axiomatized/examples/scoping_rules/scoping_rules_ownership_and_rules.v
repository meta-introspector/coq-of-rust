(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Parameter destroy_box :
    forall `{State.Trait},
    (alloc.boxed.Box i32 alloc.boxed.Box.Default.A) -> M unit.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{State.Trait}, M unit.
