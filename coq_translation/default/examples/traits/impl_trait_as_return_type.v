(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition combine_vecs_explicit_return_type
    `{ℋ : State.Trait}
    (v : alloc.vec.Vec i32 alloc.vec.Vec.Default.A)
    (u : alloc.vec.Vec i32 alloc.vec.Vec.Default.A)
    :
      M
        (core.iter.adapters.cycle.Cycle
          (core.iter.adapters.chain.Chain
            (alloc.vec.into_iter.IntoIter
              i32
              alloc.vec.into_iter.IntoIter.Default.A)
            (alloc.vec.into_iter.IntoIter
              i32
              alloc.vec.into_iter.IntoIter.Default.A))) :=
  M.function_body
    (let*
        α0 :
        ltac:(refine (alloc.vec.into_iter.IntoIter i32 alloc.alloc.Global)) :=
      (core.iter.traits.collect.IntoIterator.into_iter
          (Self := alloc.vec.Vec i32 alloc.alloc.Global)
          (Trait := ltac:(refine _)))
        v in
    let*
        α1 :
        ltac:(refine (alloc.vec.into_iter.IntoIter i32 alloc.alloc.Global)) :=
      (core.iter.traits.collect.IntoIterator.into_iter
          (Self := alloc.vec.Vec i32 alloc.alloc.Global)
          (Trait := ltac:(refine _)))
        u in
    let*
        α2 :
        ltac:(refine
          (core.iter.adapters.chain.Chain
            (alloc.vec.into_iter.IntoIter i32 alloc.alloc.Global)
            (alloc.vec.into_iter.IntoIter i32 alloc.alloc.Global))) :=
      (core.iter.traits.iterator.Iterator.chain
          (Self := alloc.vec.into_iter.IntoIter i32 alloc.alloc.Global)
          (Trait := ltac:(refine _)))
        α0
        α1 in
    (core.iter.traits.iterator.Iterator.cycle
        (Self :=
          core.iter.adapters.chain.Chain
            (alloc.vec.into_iter.IntoIter i32 alloc.alloc.Global)
            (alloc.vec.into_iter.IntoIter i32 alloc.alloc.Global))
        (Trait := ltac:(refine _)))
      α2).

Definition combine_vecs
    `{ℋ : State.Trait}
    (v : alloc.vec.Vec i32 alloc.vec.Vec.Default.A)
    (u : alloc.vec.Vec i32 alloc.vec.Vec.Default.A)
    : M _ (* OpaqueTy *) :=
  M.function_body
    (let*
        α0 :
        ltac:(refine (alloc.vec.into_iter.IntoIter i32 alloc.alloc.Global)) :=
      (core.iter.traits.collect.IntoIterator.into_iter
          (Self := alloc.vec.Vec i32 alloc.alloc.Global)
          (Trait := ltac:(refine _)))
        v in
    let*
        α1 :
        ltac:(refine (alloc.vec.into_iter.IntoIter i32 alloc.alloc.Global)) :=
      (core.iter.traits.collect.IntoIterator.into_iter
          (Self := alloc.vec.Vec i32 alloc.alloc.Global)
          (Trait := ltac:(refine _)))
        u in
    let*
        α2 :
        ltac:(refine
          (core.iter.adapters.chain.Chain
            (alloc.vec.into_iter.IntoIter i32 alloc.alloc.Global)
            (alloc.vec.into_iter.IntoIter i32 alloc.alloc.Global))) :=
      (core.iter.traits.iterator.Iterator.chain
          (Self := alloc.vec.into_iter.IntoIter i32 alloc.alloc.Global)
          (Trait := ltac:(refine _)))
        α0
        α1 in
    (core.iter.traits.iterator.Iterator.cycle
        (Self :=
          core.iter.adapters.chain.Chain
            (alloc.vec.into_iter.IntoIter i32 alloc.alloc.Global)
            (alloc.vec.into_iter.IntoIter i32 alloc.alloc.Global))
        (Trait := ltac:(refine _)))
      α2).

Error OpaqueTy.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* v1 : ltac:(refine (alloc.vec.Vec i32 alloc.alloc.Global)) :=
      let* α0 : ltac:(refine i32) := M.alloc 1 in
      let* α1 : ltac:(refine i32) := M.alloc 2 in
      let* α2 : ltac:(refine i32) := M.alloc 3 in
      let* α3 : ltac:(refine (array i32)) := M.alloc [ α0; α1; α2 ] in
      let*
          α4 :
          ltac:(refine (alloc.boxed.Box (array i32) alloc.alloc.Global)) :=
        (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α3 in
      let*
          α5 :
          ltac:(refine (alloc.boxed.Box (slice i32) alloc.alloc.Global)) :=
        pointer_coercion "Unsize" α4 in
      (slice i32)::["into_vec"] α5 in
    let* v2 : ltac:(refine (alloc.vec.Vec i32 alloc.alloc.Global)) :=
      let* α0 : ltac:(refine i32) := M.alloc 4 in
      let* α1 : ltac:(refine i32) := M.alloc 5 in
      let* α2 : ltac:(refine (array i32)) := M.alloc [ α0; α1 ] in
      let*
          α3 :
          ltac:(refine (alloc.boxed.Box (array i32) alloc.alloc.Global)) :=
        (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α2 in
      let*
          α4 :
          ltac:(refine (alloc.boxed.Box (slice i32) alloc.alloc.Global)) :=
        pointer_coercion "Unsize" α3 in
      (slice i32)::["into_vec"] α4 in
    let* v3 : ltac:(refine type not implemented) :=
      impl_trait_as_return_type.combine_vecs v1 v2 in
    let* _ : ltac:(refine unit) :=
      let* α0 : ltac:(refine i32) := M.alloc 1 in
      let* α1 : ltac:(refine (core.option.Option i32)) :=
        M.alloc (core.option.Option.Some α0) in
      let* α2 : ltac:(refine (ref (core.option.Option i32))) := borrow α1 in
      let* α3 : ltac:(refine (mut_ref type not implemented)) := borrow_mut v3 in
      let* α4 : ltac:(refine (core.option.Option i32)) :=
        (core.iter.traits.iterator.Iterator.next
            (Self := type not implemented)
            (Trait := ltac:(refine _)))
          α3 in
      let* α5 : ltac:(refine (ref (core.option.Option i32))) := borrow α4 in
      let*
          α6 :
          ltac:(refine
            (M.Val
              ((ref (core.option.Option i32)) *
                (ref (core.option.Option i32))))) :=
        M.alloc (α2, α5) in
      let* α7 := M.read α6 in
      match α7 with
      | (left_val, right_val) =>
        let* α0 : ltac:(refine (core.option.Option i32)) := deref left_val in
        let* α1 : ltac:(refine (ref (core.option.Option i32))) := borrow α0 in
        let* α2 : ltac:(refine (core.option.Option i32)) := deref right_val in
        let* α3 : ltac:(refine (ref (core.option.Option i32))) := borrow α2 in
        let* α4 : ltac:(refine bool) :=
          (core.cmp.PartialEq.eq
              (Self := core.option.Option i32)
              (Trait := ltac:(refine _)))
            α1
            α3 in
        let* α5 : ltac:(refine bool) := UnOp.not α4 in
        let* α6 : ltac:(refine bool) := use α5 in
        if (α6 : bool) then
          let* kind : ltac:(refine core.panicking.AssertKind) :=
            M.alloc core.panicking.AssertKind.Eq in
          let* _ : ltac:(refine never) :=
            let* α0 : ltac:(refine (core.option.Option i32)) :=
              deref left_val in
            let* α1 : ltac:(refine (ref (core.option.Option i32))) :=
              borrow α0 in
            let* α2 : ltac:(refine (core.option.Option i32)) := deref α1 in
            let* α3 : ltac:(refine (ref (core.option.Option i32))) :=
              borrow α2 in
            let* α4 : ltac:(refine (core.option.Option i32)) :=
              deref right_val in
            let* α5 : ltac:(refine (ref (core.option.Option i32))) :=
              borrow α4 in
            let* α6 : ltac:(refine (core.option.Option i32)) := deref α5 in
            let* α7 : ltac:(refine (ref (core.option.Option i32))) :=
              borrow α6 in
            let* α8 : ltac:(refine (core.option.Option core.fmt.Arguments)) :=
              M.alloc core.option.Option.None in
            core.panicking.assert_failed kind α3 α7 α8 in
          let* α0 : ltac:(refine unit) := M.alloc tt in
          never_to_any α0
        else
          M.alloc tt
      end in
    let* _ : ltac:(refine unit) :=
      let* α0 : ltac:(refine i32) := M.alloc 2 in
      let* α1 : ltac:(refine (core.option.Option i32)) :=
        M.alloc (core.option.Option.Some α0) in
      let* α2 : ltac:(refine (ref (core.option.Option i32))) := borrow α1 in
      let* α3 : ltac:(refine (mut_ref type not implemented)) := borrow_mut v3 in
      let* α4 : ltac:(refine (core.option.Option i32)) :=
        (core.iter.traits.iterator.Iterator.next
            (Self := type not implemented)
            (Trait := ltac:(refine _)))
          α3 in
      let* α5 : ltac:(refine (ref (core.option.Option i32))) := borrow α4 in
      let*
          α6 :
          ltac:(refine
            (M.Val
              ((ref (core.option.Option i32)) *
                (ref (core.option.Option i32))))) :=
        M.alloc (α2, α5) in
      let* α7 := M.read α6 in
      match α7 with
      | (left_val, right_val) =>
        let* α0 : ltac:(refine (core.option.Option i32)) := deref left_val in
        let* α1 : ltac:(refine (ref (core.option.Option i32))) := borrow α0 in
        let* α2 : ltac:(refine (core.option.Option i32)) := deref right_val in
        let* α3 : ltac:(refine (ref (core.option.Option i32))) := borrow α2 in
        let* α4 : ltac:(refine bool) :=
          (core.cmp.PartialEq.eq
              (Self := core.option.Option i32)
              (Trait := ltac:(refine _)))
            α1
            α3 in
        let* α5 : ltac:(refine bool) := UnOp.not α4 in
        let* α6 : ltac:(refine bool) := use α5 in
        if (α6 : bool) then
          let* kind : ltac:(refine core.panicking.AssertKind) :=
            M.alloc core.panicking.AssertKind.Eq in
          let* _ : ltac:(refine never) :=
            let* α0 : ltac:(refine (core.option.Option i32)) :=
              deref left_val in
            let* α1 : ltac:(refine (ref (core.option.Option i32))) :=
              borrow α0 in
            let* α2 : ltac:(refine (core.option.Option i32)) := deref α1 in
            let* α3 : ltac:(refine (ref (core.option.Option i32))) :=
              borrow α2 in
            let* α4 : ltac:(refine (core.option.Option i32)) :=
              deref right_val in
            let* α5 : ltac:(refine (ref (core.option.Option i32))) :=
              borrow α4 in
            let* α6 : ltac:(refine (core.option.Option i32)) := deref α5 in
            let* α7 : ltac:(refine (ref (core.option.Option i32))) :=
              borrow α6 in
            let* α8 : ltac:(refine (core.option.Option core.fmt.Arguments)) :=
              M.alloc core.option.Option.None in
            core.panicking.assert_failed kind α3 α7 α8 in
          let* α0 : ltac:(refine unit) := M.alloc tt in
          never_to_any α0
        else
          M.alloc tt
      end in
    let* _ : ltac:(refine unit) :=
      let* α0 : ltac:(refine i32) := M.alloc 3 in
      let* α1 : ltac:(refine (core.option.Option i32)) :=
        M.alloc (core.option.Option.Some α0) in
      let* α2 : ltac:(refine (ref (core.option.Option i32))) := borrow α1 in
      let* α3 : ltac:(refine (mut_ref type not implemented)) := borrow_mut v3 in
      let* α4 : ltac:(refine (core.option.Option i32)) :=
        (core.iter.traits.iterator.Iterator.next
            (Self := type not implemented)
            (Trait := ltac:(refine _)))
          α3 in
      let* α5 : ltac:(refine (ref (core.option.Option i32))) := borrow α4 in
      let*
          α6 :
          ltac:(refine
            (M.Val
              ((ref (core.option.Option i32)) *
                (ref (core.option.Option i32))))) :=
        M.alloc (α2, α5) in
      let* α7 := M.read α6 in
      match α7 with
      | (left_val, right_val) =>
        let* α0 : ltac:(refine (core.option.Option i32)) := deref left_val in
        let* α1 : ltac:(refine (ref (core.option.Option i32))) := borrow α0 in
        let* α2 : ltac:(refine (core.option.Option i32)) := deref right_val in
        let* α3 : ltac:(refine (ref (core.option.Option i32))) := borrow α2 in
        let* α4 : ltac:(refine bool) :=
          (core.cmp.PartialEq.eq
              (Self := core.option.Option i32)
              (Trait := ltac:(refine _)))
            α1
            α3 in
        let* α5 : ltac:(refine bool) := UnOp.not α4 in
        let* α6 : ltac:(refine bool) := use α5 in
        if (α6 : bool) then
          let* kind : ltac:(refine core.panicking.AssertKind) :=
            M.alloc core.panicking.AssertKind.Eq in
          let* _ : ltac:(refine never) :=
            let* α0 : ltac:(refine (core.option.Option i32)) :=
              deref left_val in
            let* α1 : ltac:(refine (ref (core.option.Option i32))) :=
              borrow α0 in
            let* α2 : ltac:(refine (core.option.Option i32)) := deref α1 in
            let* α3 : ltac:(refine (ref (core.option.Option i32))) :=
              borrow α2 in
            let* α4 : ltac:(refine (core.option.Option i32)) :=
              deref right_val in
            let* α5 : ltac:(refine (ref (core.option.Option i32))) :=
              borrow α4 in
            let* α6 : ltac:(refine (core.option.Option i32)) := deref α5 in
            let* α7 : ltac:(refine (ref (core.option.Option i32))) :=
              borrow α6 in
            let* α8 : ltac:(refine (core.option.Option core.fmt.Arguments)) :=
              M.alloc core.option.Option.None in
            core.panicking.assert_failed kind α3 α7 α8 in
          let* α0 : ltac:(refine unit) := M.alloc tt in
          never_to_any α0
        else
          M.alloc tt
      end in
    let* _ : ltac:(refine unit) :=
      let* α0 : ltac:(refine i32) := M.alloc 4 in
      let* α1 : ltac:(refine (core.option.Option i32)) :=
        M.alloc (core.option.Option.Some α0) in
      let* α2 : ltac:(refine (ref (core.option.Option i32))) := borrow α1 in
      let* α3 : ltac:(refine (mut_ref type not implemented)) := borrow_mut v3 in
      let* α4 : ltac:(refine (core.option.Option i32)) :=
        (core.iter.traits.iterator.Iterator.next
            (Self := type not implemented)
            (Trait := ltac:(refine _)))
          α3 in
      let* α5 : ltac:(refine (ref (core.option.Option i32))) := borrow α4 in
      let*
          α6 :
          ltac:(refine
            (M.Val
              ((ref (core.option.Option i32)) *
                (ref (core.option.Option i32))))) :=
        M.alloc (α2, α5) in
      let* α7 := M.read α6 in
      match α7 with
      | (left_val, right_val) =>
        let* α0 : ltac:(refine (core.option.Option i32)) := deref left_val in
        let* α1 : ltac:(refine (ref (core.option.Option i32))) := borrow α0 in
        let* α2 : ltac:(refine (core.option.Option i32)) := deref right_val in
        let* α3 : ltac:(refine (ref (core.option.Option i32))) := borrow α2 in
        let* α4 : ltac:(refine bool) :=
          (core.cmp.PartialEq.eq
              (Self := core.option.Option i32)
              (Trait := ltac:(refine _)))
            α1
            α3 in
        let* α5 : ltac:(refine bool) := UnOp.not α4 in
        let* α6 : ltac:(refine bool) := use α5 in
        if (α6 : bool) then
          let* kind : ltac:(refine core.panicking.AssertKind) :=
            M.alloc core.panicking.AssertKind.Eq in
          let* _ : ltac:(refine never) :=
            let* α0 : ltac:(refine (core.option.Option i32)) :=
              deref left_val in
            let* α1 : ltac:(refine (ref (core.option.Option i32))) :=
              borrow α0 in
            let* α2 : ltac:(refine (core.option.Option i32)) := deref α1 in
            let* α3 : ltac:(refine (ref (core.option.Option i32))) :=
              borrow α2 in
            let* α4 : ltac:(refine (core.option.Option i32)) :=
              deref right_val in
            let* α5 : ltac:(refine (ref (core.option.Option i32))) :=
              borrow α4 in
            let* α6 : ltac:(refine (core.option.Option i32)) := deref α5 in
            let* α7 : ltac:(refine (ref (core.option.Option i32))) :=
              borrow α6 in
            let* α8 : ltac:(refine (core.option.Option core.fmt.Arguments)) :=
              M.alloc core.option.Option.None in
            core.panicking.assert_failed kind α3 α7 α8 in
          let* α0 : ltac:(refine unit) := M.alloc tt in
          never_to_any α0
        else
          M.alloc tt
      end in
    let* _ : ltac:(refine unit) :=
      let* α0 : ltac:(refine i32) := M.alloc 5 in
      let* α1 : ltac:(refine (core.option.Option i32)) :=
        M.alloc (core.option.Option.Some α0) in
      let* α2 : ltac:(refine (ref (core.option.Option i32))) := borrow α1 in
      let* α3 : ltac:(refine (mut_ref type not implemented)) := borrow_mut v3 in
      let* α4 : ltac:(refine (core.option.Option i32)) :=
        (core.iter.traits.iterator.Iterator.next
            (Self := type not implemented)
            (Trait := ltac:(refine _)))
          α3 in
      let* α5 : ltac:(refine (ref (core.option.Option i32))) := borrow α4 in
      let*
          α6 :
          ltac:(refine
            (M.Val
              ((ref (core.option.Option i32)) *
                (ref (core.option.Option i32))))) :=
        M.alloc (α2, α5) in
      let* α7 := M.read α6 in
      match α7 with
      | (left_val, right_val) =>
        let* α0 : ltac:(refine (core.option.Option i32)) := deref left_val in
        let* α1 : ltac:(refine (ref (core.option.Option i32))) := borrow α0 in
        let* α2 : ltac:(refine (core.option.Option i32)) := deref right_val in
        let* α3 : ltac:(refine (ref (core.option.Option i32))) := borrow α2 in
        let* α4 : ltac:(refine bool) :=
          (core.cmp.PartialEq.eq
              (Self := core.option.Option i32)
              (Trait := ltac:(refine _)))
            α1
            α3 in
        let* α5 : ltac:(refine bool) := UnOp.not α4 in
        let* α6 : ltac:(refine bool) := use α5 in
        if (α6 : bool) then
          let* kind : ltac:(refine core.panicking.AssertKind) :=
            M.alloc core.panicking.AssertKind.Eq in
          let* _ : ltac:(refine never) :=
            let* α0 : ltac:(refine (core.option.Option i32)) :=
              deref left_val in
            let* α1 : ltac:(refine (ref (core.option.Option i32))) :=
              borrow α0 in
            let* α2 : ltac:(refine (core.option.Option i32)) := deref α1 in
            let* α3 : ltac:(refine (ref (core.option.Option i32))) :=
              borrow α2 in
            let* α4 : ltac:(refine (core.option.Option i32)) :=
              deref right_val in
            let* α5 : ltac:(refine (ref (core.option.Option i32))) :=
              borrow α4 in
            let* α6 : ltac:(refine (core.option.Option i32)) := deref α5 in
            let* α7 : ltac:(refine (ref (core.option.Option i32))) :=
              borrow α6 in
            let* α8 : ltac:(refine (core.option.Option core.fmt.Arguments)) :=
              M.alloc core.option.Option.None in
            core.panicking.assert_failed kind α3 α7 α8 in
          let* α0 : ltac:(refine unit) := M.alloc tt in
          never_to_any α0
        else
          M.alloc tt
      end in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "all done
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_const"] α4 in
        std.io.stdio._print α5 in
      M.alloc tt in
    M.alloc tt).
