(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Parameter call_me :
    forall
      `{ℋ : State.Trait}
      {F : Set}
      {ℋ_0 : core.ops.function.Fn.Trait F (Args := unit)},
    F -> M unit.

Parameter function : forall `{ℋ : State.Trait}, M unit.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{ℋ : State.Trait}, M unit.
