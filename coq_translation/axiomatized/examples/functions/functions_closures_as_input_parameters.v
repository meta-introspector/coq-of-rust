(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Parameter apply : forall `{H : State.Trait}, forall
    {F : Set},
    `{core.ops.function.FnOnce.Trait unit F}
    F
    -> M (H := H) unit.

Parameter apply_to_3 : forall `{H : State.Trait}, forall
    {F : Set},
    `{core.ops.function.Fn.Trait (i32) F}
    F
    -> M (H := H) i32.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{H : State.Trait}, unit -> M (H := H) unit.
