(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Parameter double_first :
    (alloc.vec.Vec.t (ref str.t) alloc.vec.Vec.Default.A) ->
      M
        (core.option.Option.t
          (core.result.Result.t i32.t core.num.error.ParseIntError.t)).

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.
