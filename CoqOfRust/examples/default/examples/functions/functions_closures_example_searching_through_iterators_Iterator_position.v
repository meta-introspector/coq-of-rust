(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    let vec = vec![1, 9, 3, 3, 13, 2];

    // `iter()` for vecs yields `&i32` and `position()` does not take a reference, so
    // we have to destructure `&i32` to `i32`
    let index_of_first_even_number = vec.iter().position(|&x| x % 2 == 0);
    assert_eq!(index_of_first_even_number, Some(5));

    // `into_iter()` for vecs yields `i32` and `position()` does not take a reference, so
    // we do not have to destructure
    let index_of_first_negative_number = vec.into_iter().position(|x| x < 0);
    assert_eq!(index_of_first_negative_number, None);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* vec : M.Val (alloc.vec.Vec.t i32.t alloc.alloc.Global.t) :=
    let* α0 : M.Val (array i32.t) :=
      M.alloc
        [
          (Integer.of_Z 1) : i32.t;
          (Integer.of_Z 9) : i32.t;
          (Integer.of_Z 3) : i32.t;
          (Integer.of_Z 3) : i32.t;
          (Integer.of_Z 13) : i32.t;
          (Integer.of_Z 2) : i32.t
        ] in
    let* α1 : M.Val (alloc.boxed.Box.t (array i32.t) alloc.alloc.Global.t) :=
      M.call ((alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α0) in
    let* α2 : alloc.boxed.Box.t (slice i32.t) alloc.alloc.Global.t :=
      M.read (pointer_coercion "Unsize" α1) in
    let* α3 : alloc.vec.Vec.t i32.t alloc.alloc.Global.t :=
      M.call (impl (slice i32.t) "into_vec" α2) in
    M.alloc α3 in
  let* index_of_first_even_number : M.Val (core.option.Option.t usize.t) :=
    let* α0 : _ :=
      ltac:(M.get_method (fun ℐ =>
        core.iter.traits.iterator.Iterator.position
          (Self := core.slice.iter.Iter.t i32.t)
          (P := (ref i32.t) -> M bool.t)
          (Trait := ℐ))) in
    let* α1 : _ :=
      ltac:(M.get_method (fun ℐ =>
        core.ops.deref.Deref.deref
          (Self := alloc.vec.Vec.t i32.t alloc.alloc.Global.t)
          (Trait := ℐ))) in
    let* α2 : ref (slice i32.t) := M.call (α1 (borrow vec)) in
    let* α3 : core.slice.iter.Iter.t i32.t :=
      M.call (impl (slice i32.t) "iter" α2) in
    let* α4 : M.Val (core.slice.iter.Iter.t i32.t) := M.alloc α3 in
    let* α5 : core.option.Option.t usize.t :=
      M.call
        (α0
          (borrow_mut α4)
          (fun (α0 : ref i32.t) =>
            (let* α0 := M.alloc α0 in
            match_operator
              α0
              [
                fun γ =>
                  (let* γ :=
                    let* α0 := M.read γ in
                    M.pure (deref α0) in
                  let* x := M.copy γ in
                  let* α0 : i32.t := M.read x in
                  let* α1 : i32.t :=
                    BinOp.Panic.rem α0 ((Integer.of_Z 2) : i32.t) in
                  M.pure (BinOp.Pure.eq α1 ((Integer.of_Z 0) : i32.t))) :
                  M bool.t
              ]) :
            M bool.t)) in
    M.alloc α5 in
  let* _ : M.Val unit :=
    let* α0 : M.Val (core.option.Option.t usize.t) :=
      M.alloc (core.option.Option.Some ((Integer.of_Z 5) : usize.t)) in
    let* α1 :
        M.Val
          ((ref (core.option.Option.t usize.t))
          *
          (ref (core.option.Option.t usize.t))) :=
      M.alloc (borrow index_of_first_even_number, borrow α0) in
    match_operator
      α1
      [
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | (_, _) =>
            let γ0_0 := Tuple.Access.left γ in
            let γ0_1 := Tuple.Access.right γ in
            let* left_val := M.copy γ0_0 in
            let* right_val := M.copy γ0_1 in
            let* α0 : _ :=
              ltac:(M.get_method (fun ℐ =>
                core.cmp.PartialEq.eq
                  (Self := core.option.Option.t usize.t)
                  (Rhs := core.option.Option.t usize.t)
                  (Trait := ℐ))) in
            let* α1 : ref (core.option.Option.t usize.t) := M.read left_val in
            let* α2 : ref (core.option.Option.t usize.t) := M.read right_val in
            let* α3 : bool.t := M.call (α0 α1 α2) in
            let* α4 : M.Val bool.t := M.alloc (UnOp.not α3) in
            let* α5 : bool.t := M.read (use α4) in
            if α5 then
              let* kind : M.Val core.panicking.AssertKind.t :=
                M.alloc core.panicking.AssertKind.Eq in
              let* α0 : core.panicking.AssertKind.t := M.read kind in
              let* α1 : ref (core.option.Option.t usize.t) := M.read left_val in
              let* α2 : ref (core.option.Option.t usize.t) :=
                M.read right_val in
              let* α3 : never.t :=
                M.call
                  (core.panicking.assert_failed
                    α0
                    α1
                    α2
                    core.option.Option.None) in
              let* α0 : M.Val never.t := M.alloc α3 in
              let* α1 := M.read α0 in
              let* α2 : unit := never_to_any α1 in
              M.alloc α2
            else
              M.alloc tt
          end) :
          M (M.Val unit)
      ] in
  let* index_of_first_negative_number : M.Val (core.option.Option.t usize.t) :=
    let* α0 : _ :=
      ltac:(M.get_method (fun ℐ =>
        core.iter.traits.iterator.Iterator.position
          (Self := alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t)
          (P := i32.t -> M bool.t)
          (Trait := ℐ))) in
    let* α1 : _ :=
      ltac:(M.get_method (fun ℐ =>
        core.iter.traits.collect.IntoIterator.into_iter
          (Self := alloc.vec.Vec.t i32.t alloc.alloc.Global.t)
          (Trait := ℐ))) in
    let* α2 : alloc.vec.Vec.t i32.t alloc.alloc.Global.t := M.read vec in
    let* α3 : alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t :=
      M.call (α1 α2) in
    let* α4 :
        M.Val (alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t) :=
      M.alloc α3 in
    let* α5 : core.option.Option.t usize.t :=
      M.call
        (α0
          (borrow_mut α4)
          (fun (α0 : i32.t) =>
            (let* α0 := M.alloc α0 in
            match_operator
              α0
              [
                fun γ =>
                  (let* x := M.copy γ in
                  let* α0 : i32.t := M.read x in
                  M.pure (BinOp.Pure.lt α0 ((Integer.of_Z 0) : i32.t))) :
                  M bool.t
              ]) :
            M bool.t)) in
    M.alloc α5 in
  let* _ : M.Val unit :=
    let* α0 : M.Val (core.option.Option.t usize.t) :=
      M.alloc core.option.Option.None in
    let* α1 :
        M.Val
          ((ref (core.option.Option.t usize.t))
          *
          (ref (core.option.Option.t usize.t))) :=
      M.alloc (borrow index_of_first_negative_number, borrow α0) in
    match_operator
      α1
      [
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | (_, _) =>
            let γ0_0 := Tuple.Access.left γ in
            let γ0_1 := Tuple.Access.right γ in
            let* left_val := M.copy γ0_0 in
            let* right_val := M.copy γ0_1 in
            let* α0 : _ :=
              ltac:(M.get_method (fun ℐ =>
                core.cmp.PartialEq.eq
                  (Self := core.option.Option.t usize.t)
                  (Rhs := core.option.Option.t usize.t)
                  (Trait := ℐ))) in
            let* α1 : ref (core.option.Option.t usize.t) := M.read left_val in
            let* α2 : ref (core.option.Option.t usize.t) := M.read right_val in
            let* α3 : bool.t := M.call (α0 α1 α2) in
            let* α4 : M.Val bool.t := M.alloc (UnOp.not α3) in
            let* α5 : bool.t := M.read (use α4) in
            if α5 then
              let* kind : M.Val core.panicking.AssertKind.t :=
                M.alloc core.panicking.AssertKind.Eq in
              let* α0 : core.panicking.AssertKind.t := M.read kind in
              let* α1 : ref (core.option.Option.t usize.t) := M.read left_val in
              let* α2 : ref (core.option.Option.t usize.t) :=
                M.read right_val in
              let* α3 : never.t :=
                M.call
                  (core.panicking.assert_failed
                    α0
                    α1
                    α2
                    core.option.Option.None) in
              let* α0 : M.Val never.t := M.alloc α3 in
              let* α1 := M.read α0 in
              let* α2 : unit := never_to_any α1 in
              M.alloc α2
            else
              M.alloc tt
          end) :
          M (M.Val unit)
      ] in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
