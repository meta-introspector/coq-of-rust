(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Parameter double_first :
    forall `{State.Trait},
    (alloc.vec.Vec (ref str) alloc.vec.Vec.Default.A) ->
      M
        (core.option.Option
          (core.result.Result i32 core.num.error.ParseIntError)).

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{State.Trait}, M unit.
