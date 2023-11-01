(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  let* vec :=
    let* α0 := M.alloc 1 in
    let* α1 := M.alloc 9 in
    let* α2 := M.alloc 3 in
    let* α3 := M.alloc 3 in
    let* α4 := M.alloc 13 in
    let* α5 := M.alloc 2 in
    let* α6 :=
      (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"]
        [ α0; α1; α2; α3; α4; α5 ] in
    let* α7 := pointer_coercion "Unsize" α6 in
    (Slice i32)::["into_vec"] α7 in
  let* index_of_first_even_number :=
    let* α0 := borrow vec (alloc.vec.Vec i32 alloc.alloc.Global) in
    let* α1 :=
      (core.ops.deref.Deref.deref
          (Self := alloc.vec.Vec i32 alloc.alloc.Global)
          (Trait := ltac:(refine _)))
        α0 in
    let* α2 := deref α1 (Slice i32) in
    let* α3 := borrow α2 (Slice i32) in
    let* α4 := (Slice i32)::["iter"] α3 in
    let* α5 := borrow_mut α4 (core.slice.iter.Iter i32) in
    (core.iter.traits.iterator.Iterator.position
        (Self := core.slice.iter.Iter i32)
        (Trait := ltac:(refine _)))
      α5
      (let* α0 := M.alloc 2 in
      let* α1 := BinOp.rem x α0 in
      let* α2 := M.alloc 0 in
      BinOp.eq α1 α2) in
  let* _ :=
    let* α0 := borrow index_of_first_even_number (core.option.Option usize) in
    let* α1 := M.alloc 5 in
    let* α2 := M.alloc (core.option.Option.Some α1) in
    let* α3 := borrow α2 (core.option.Option usize) in
    match (α0, α3) with
    | (left_val, right_val) =>
      let* α0 := deref left_val (core.option.Option usize) in
      let* α1 := borrow α0 (core.option.Option usize) in
      let* α2 := deref right_val (core.option.Option usize) in
      let* α3 := borrow α2 (core.option.Option usize) in
      let* α4 :=
        (core.cmp.PartialEq.eq
            (Self := core.option.Option usize)
            (Trait := ltac:(refine _)))
          α1
          α3 in
      let* α5 := UnOp.not α4 in
      let* α6 := use α5 in
      if (α6 : bool) then
        let* kind := M.alloc core.panicking.AssertKind.Eq in
        let* _ :=
          let* α0 := deref left_val (core.option.Option usize) in
          let* α1 := borrow α0 (core.option.Option usize) in
          let* α2 := deref α1 (core.option.Option usize) in
          let* α3 := borrow α2 (core.option.Option usize) in
          let* α4 := deref right_val (core.option.Option usize) in
          let* α5 := borrow α4 (core.option.Option usize) in
          let* α6 := deref α5 (core.option.Option usize) in
          let* α7 := borrow α6 (core.option.Option usize) in
          let* α8 := M.alloc core.option.Option.None in
          core.panicking.assert_failed kind α3 α7 α8 in
        let* α0 := M.alloc tt in
        never_to_any α0
      else
        M.alloc tt
    end in
  let* index_of_first_negative_number :=
    let* α0 :=
      (core.iter.traits.collect.IntoIterator.into_iter
          (Self := alloc.vec.Vec i32 alloc.alloc.Global)
          (Trait := ltac:(refine _)))
        vec in
    let* α1 :=
      borrow_mut α0 (alloc.vec.into_iter.IntoIter i32 alloc.alloc.Global) in
    (core.iter.traits.iterator.Iterator.position
        (Self := alloc.vec.into_iter.IntoIter i32 alloc.alloc.Global)
        (Trait := ltac:(refine _)))
      α1
      (let* α0 := M.alloc 0 in
      BinOp.lt x α0) in
  let* _ :=
    let* α0 :=
      borrow index_of_first_negative_number (core.option.Option usize) in
    let* α1 := M.alloc core.option.Option.None in
    let* α2 := borrow α1 (core.option.Option usize) in
    match (α0, α2) with
    | (left_val, right_val) =>
      let* α0 := deref left_val (core.option.Option usize) in
      let* α1 := borrow α0 (core.option.Option usize) in
      let* α2 := deref right_val (core.option.Option usize) in
      let* α3 := borrow α2 (core.option.Option usize) in
      let* α4 :=
        (core.cmp.PartialEq.eq
            (Self := core.option.Option usize)
            (Trait := ltac:(refine _)))
          α1
          α3 in
      let* α5 := UnOp.not α4 in
      let* α6 := use α5 in
      if (α6 : bool) then
        let* kind := M.alloc core.panicking.AssertKind.Eq in
        let* _ :=
          let* α0 := deref left_val (core.option.Option usize) in
          let* α1 := borrow α0 (core.option.Option usize) in
          let* α2 := deref α1 (core.option.Option usize) in
          let* α3 := borrow α2 (core.option.Option usize) in
          let* α4 := deref right_val (core.option.Option usize) in
          let* α5 := borrow α4 (core.option.Option usize) in
          let* α6 := deref α5 (core.option.Option usize) in
          let* α7 := borrow α6 (core.option.Option usize) in
          let* α8 := M.alloc core.option.Option.None in
          core.panicking.assert_failed kind α3 α7 α8 in
        let* α0 := M.alloc tt in
        never_to_any α0
      else
        M.alloc tt
    end in
  M.alloc tt.
