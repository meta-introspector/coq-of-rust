(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Parameter combine_vecs_explicit_return_type :
    forall `{H' : State.Trait},
    (alloc.vec.Vec i32 alloc.vec.Vec.Default.A) ->
      (alloc.vec.Vec i32 alloc.vec.Vec.Default.A) ->
      M (H := H')
        (core.iter.adapters.cycle.Cycle
          (core.iter.adapters.chain.Chain
            (alloc.vec.into_iter.IntoIter
              i32
              alloc.vec.into_iter.IntoIter.Default.A)
            (alloc.vec.into_iter.IntoIter
              i32
              alloc.vec.into_iter.IntoIter.Default.A))).

Parameter combine_vecs_ret_ty :
    forall
    `{H' : State.Trait},
    Sigma (Ty : Set) `(core.iter.traits.iterator.Iterator.Trait Ty),
    unit.
Parameter combine_vecs :
    forall `{H' : State.Trait},
    (alloc.vec.Vec i32 alloc.vec.Vec.Default.A) ->
      (alloc.vec.Vec i32 alloc.vec.Vec.Default.A) ->
      M (H := H') (projT1 combine_vecs_ret_ty).

Error OpaqueTy.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{H' : State.Trait}, M (H := H') unit.
