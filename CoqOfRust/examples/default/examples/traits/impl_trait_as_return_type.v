(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn combine_vecs_explicit_return_type(
    v: Vec<i32>,
    u: Vec<i32>,
) -> iter::Cycle<iter::Chain<IntoIter<i32>, IntoIter<i32>>> {
    v.into_iter().chain(u.into_iter()).cycle()
}
*)
Definition combine_vecs_explicit_return_type
    (v : alloc.vec.Vec.t i32.t alloc.vec.Vec.Default.A)
    (u : alloc.vec.Vec.t i32.t alloc.vec.Vec.Default.A)
    :
      M
        (core.iter.adapters.cycle.Cycle.t
          (core.iter.adapters.chain.Chain.t
            (alloc.vec.into_iter.IntoIter.t
              i32.t
              alloc.vec.into_iter.IntoIter.Default.A)
            (alloc.vec.into_iter.IntoIter.t
              i32.t
              alloc.vec.into_iter.IntoIter.Default.A))) :=
  let* v : M.Val (alloc.vec.Vec.t i32.t alloc.vec.Vec.Default.A) := M.alloc v in
  let* u : M.Val (alloc.vec.Vec.t i32.t alloc.vec.Vec.Default.A) := M.alloc u in
  M.function_body
    (let* α0 := M.read v in
    let* α1 : alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t :=
      (core.iter.traits.collect.IntoIterator.into_iter
          (Self := alloc.vec.Vec.t i32.t alloc.alloc.Global.t)
          (Trait := ltac:(refine _)))
        α0 in
    let* α2 := M.read u in
    let* α3 : alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t :=
      (core.iter.traits.collect.IntoIterator.into_iter
          (Self := alloc.vec.Vec.t i32.t alloc.alloc.Global.t)
          (Trait := ltac:(refine _)))
        α2 in
    let* α4 :
        core.iter.adapters.chain.Chain.t
          (alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t)
          (alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t) :=
      (core.iter.traits.iterator.Iterator.chain
          (Self := alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t)
          (Trait := ltac:(refine _)))
        α1
        α3 in
    let* α5 :
        core.iter.adapters.cycle.Cycle.t
          (core.iter.adapters.chain.Chain.t
            (alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t)
            (alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t)) :=
      (core.iter.traits.iterator.Iterator.cycle
          (Self :=
            core.iter.adapters.chain.Chain.t
              (alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t)
              (alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t))
          (Trait := ltac:(refine _)))
        α4 in
    M.alloc α5).

(*
fn combine_vecs(v: Vec<i32>, u: Vec<i32>) -> impl Iterator<Item = i32> {
    v.into_iter().chain(u.into_iter()).cycle()
}
*)
Definition combine_vecs
    (v : alloc.vec.Vec.t i32.t alloc.vec.Vec.Default.A)
    (u : alloc.vec.Vec.t i32.t alloc.vec.Vec.Default.A)
    : M _ (* OpaqueTy *) :=
  let* v : M.Val (alloc.vec.Vec.t i32.t alloc.vec.Vec.Default.A) := M.alloc v in
  let* u : M.Val (alloc.vec.Vec.t i32.t alloc.vec.Vec.Default.A) := M.alloc u in
  M.function_body
    (let* α0 := M.read v in
    let* α1 : alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t :=
      (core.iter.traits.collect.IntoIterator.into_iter
          (Self := alloc.vec.Vec.t i32.t alloc.alloc.Global.t)
          (Trait := ltac:(refine _)))
        α0 in
    let* α2 := M.read u in
    let* α3 : alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t :=
      (core.iter.traits.collect.IntoIterator.into_iter
          (Self := alloc.vec.Vec.t i32.t alloc.alloc.Global.t)
          (Trait := ltac:(refine _)))
        α2 in
    let* α4 :
        core.iter.adapters.chain.Chain.t
          (alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t)
          (alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t) :=
      (core.iter.traits.iterator.Iterator.chain
          (Self := alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t)
          (Trait := ltac:(refine _)))
        α1
        α3 in
    let* α5 :
        core.iter.adapters.cycle.Cycle.t
          (core.iter.adapters.chain.Chain.t
            (alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t)
            (alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t)) :=
      (core.iter.traits.iterator.Iterator.cycle
          (Self :=
            core.iter.adapters.chain.Chain.t
              (alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t)
              (alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t))
          (Trait := ltac:(refine _)))
        α4 in
    M.alloc α5).

Error OpaqueTy.

(*
fn main() {
    let v1 = vec![1, 2, 3];
    let v2 = vec![4, 5];
    let mut v3 = combine_vecs(v1, v2);
    assert_eq!(Some(1), v3.next());
    assert_eq!(Some(2), v3.next());
    assert_eq!(Some(3), v3.next());
    assert_eq!(Some(4), v3.next());
    assert_eq!(Some(5), v3.next());
    println!("all done");
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* v1 : M.Val (alloc.vec.Vec.t i32.t alloc.alloc.Global.t) :=
      let* α0 : M.Val i32.t := M.alloc 1 in
      let* α1 : M.Val i32.t := M.alloc 2 in
      let* α2 : M.Val i32.t := M.alloc 3 in
      let* α3 : M.Val (array i32.t) := M.alloc [ α0; α1; α2 ] in
      let* α4 : M.Val (alloc.boxed.Box.t (array i32.t) alloc.alloc.Global.t) :=
        (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α3 in
      let* α5 : M.Val (alloc.boxed.Box.t (slice i32.t) alloc.alloc.Global.t) :=
        pointer_coercion "Unsize" α4 in
      let* α6 := M.read α5 in
      let* α7 : alloc.vec.Vec.t i32.t alloc.alloc.Global.t :=
        (slice i32.t)::["into_vec"] α6 in
      M.alloc α7 in
    let* v2 : M.Val (alloc.vec.Vec.t i32.t alloc.alloc.Global.t) :=
      let* α0 : M.Val i32.t := M.alloc 4 in
      let* α1 : M.Val i32.t := M.alloc 5 in
      let* α2 : M.Val (array i32.t) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (alloc.boxed.Box.t (array i32.t) alloc.alloc.Global.t) :=
        (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α2 in
      let* α4 : M.Val (alloc.boxed.Box.t (slice i32.t) alloc.alloc.Global.t) :=
        pointer_coercion "Unsize" α3 in
      let* α5 := M.read α4 in
      let* α6 : alloc.vec.Vec.t i32.t alloc.alloc.Global.t :=
        (slice i32.t)::["into_vec"] α5 in
      M.alloc α6 in
    let* v3 : M.Val type not implemented :=
      let* α0 := M.read v1 in
      let* α1 := M.read v2 in
      let* α2 : type not implemented :=
        impl_trait_as_return_type.combine_vecs α0 α1 in
      M.alloc α2 in
    let* _ : M.Val unit :=
      let* α0 : M.Val i32.t := M.alloc 1 in
      let* α1 := M.read α0 in
      let* α2 : M.Val (core.option.Option.t i32.t) :=
        M.alloc (core.option.Option.Some α1) in
      let* α3 : ref (core.option.Option.t i32.t) := borrow α2 in
      let* α4 : mut_ref type not implemented := borrow_mut v3 in
      let* α5 : core.option.Option.t i32.t :=
        (core.iter.traits.iterator.Iterator.next
            (Self := type not implemented)
            (Trait := ltac:(refine _)))
          α4 in
      let* α6 : M.Val (core.option.Option.t i32.t) := M.alloc α5 in
      let* α7 : ref (core.option.Option.t i32.t) := borrow α6 in
      let* α8 :
          M.Val
            ((ref (core.option.Option.t i32.t))
            *
            (ref (core.option.Option.t i32.t))) :=
        M.alloc (α3, α7) in
      let* α9 := M.read α8 in
      match α9 with
      | (left_val, right_val) =>
        let* right_val := M.alloc right_val in
        let* left_val := M.alloc left_val in
        let* α0 := M.read left_val in
        let* α1 : M.Val (core.option.Option.t i32.t) := deref α0 in
        let* α2 : ref (core.option.Option.t i32.t) := borrow α1 in
        let* α3 := M.read right_val in
        let* α4 : M.Val (core.option.Option.t i32.t) := deref α3 in
        let* α5 : ref (core.option.Option.t i32.t) := borrow α4 in
        let* α6 : bool.t :=
          (core.cmp.PartialEq.eq
              (Self := core.option.Option.t i32.t)
              (Trait := ltac:(refine _)))
            α2
            α5 in
        let* α7 : M.Val bool.t := M.alloc α6 in
        let* α8 : M.Val bool.t := UnOp.not α7 in
        let* α9 : M.Val bool.t := use α8 in
        let* α10 := M.read α9 in
        if (α10 : bool) then
          let* kind : M.Val core.panicking.AssertKind.t :=
            M.alloc core.panicking.AssertKind.Eq in
          let* _ : M.Val never.t :=
            let* α0 := M.read kind in
            let* α1 := M.read left_val in
            let* α2 : M.Val (core.option.Option.t i32.t) := deref α1 in
            let* α3 : ref (core.option.Option.t i32.t) := borrow α2 in
            let* α4 : M.Val (core.option.Option.t i32.t) := deref α3 in
            let* α5 : ref (core.option.Option.t i32.t) := borrow α4 in
            let* α6 := M.read right_val in
            let* α7 : M.Val (core.option.Option.t i32.t) := deref α6 in
            let* α8 : ref (core.option.Option.t i32.t) := borrow α7 in
            let* α9 : M.Val (core.option.Option.t i32.t) := deref α8 in
            let* α10 : ref (core.option.Option.t i32.t) := borrow α9 in
            let* α11 : never.t :=
              core.panicking.assert_failed α0 α5 α10 core.option.Option.None in
            M.alloc α11 in
          let* α0 : M.Val unit := M.alloc tt in
          never_to_any α0
        else
          M.alloc tt
      end in
    let* _ : M.Val unit :=
      let* α0 : M.Val i32.t := M.alloc 2 in
      let* α1 := M.read α0 in
      let* α2 : M.Val (core.option.Option.t i32.t) :=
        M.alloc (core.option.Option.Some α1) in
      let* α3 : ref (core.option.Option.t i32.t) := borrow α2 in
      let* α4 : mut_ref type not implemented := borrow_mut v3 in
      let* α5 : core.option.Option.t i32.t :=
        (core.iter.traits.iterator.Iterator.next
            (Self := type not implemented)
            (Trait := ltac:(refine _)))
          α4 in
      let* α6 : M.Val (core.option.Option.t i32.t) := M.alloc α5 in
      let* α7 : ref (core.option.Option.t i32.t) := borrow α6 in
      let* α8 :
          M.Val
            ((ref (core.option.Option.t i32.t))
            *
            (ref (core.option.Option.t i32.t))) :=
        M.alloc (α3, α7) in
      let* α9 := M.read α8 in
      match α9 with
      | (left_val, right_val) =>
        let* right_val := M.alloc right_val in
        let* left_val := M.alloc left_val in
        let* α0 := M.read left_val in
        let* α1 : M.Val (core.option.Option.t i32.t) := deref α0 in
        let* α2 : ref (core.option.Option.t i32.t) := borrow α1 in
        let* α3 := M.read right_val in
        let* α4 : M.Val (core.option.Option.t i32.t) := deref α3 in
        let* α5 : ref (core.option.Option.t i32.t) := borrow α4 in
        let* α6 : bool.t :=
          (core.cmp.PartialEq.eq
              (Self := core.option.Option.t i32.t)
              (Trait := ltac:(refine _)))
            α2
            α5 in
        let* α7 : M.Val bool.t := M.alloc α6 in
        let* α8 : M.Val bool.t := UnOp.not α7 in
        let* α9 : M.Val bool.t := use α8 in
        let* α10 := M.read α9 in
        if (α10 : bool) then
          let* kind : M.Val core.panicking.AssertKind.t :=
            M.alloc core.panicking.AssertKind.Eq in
          let* _ : M.Val never.t :=
            let* α0 := M.read kind in
            let* α1 := M.read left_val in
            let* α2 : M.Val (core.option.Option.t i32.t) := deref α1 in
            let* α3 : ref (core.option.Option.t i32.t) := borrow α2 in
            let* α4 : M.Val (core.option.Option.t i32.t) := deref α3 in
            let* α5 : ref (core.option.Option.t i32.t) := borrow α4 in
            let* α6 := M.read right_val in
            let* α7 : M.Val (core.option.Option.t i32.t) := deref α6 in
            let* α8 : ref (core.option.Option.t i32.t) := borrow α7 in
            let* α9 : M.Val (core.option.Option.t i32.t) := deref α8 in
            let* α10 : ref (core.option.Option.t i32.t) := borrow α9 in
            let* α11 : never.t :=
              core.panicking.assert_failed α0 α5 α10 core.option.Option.None in
            M.alloc α11 in
          let* α0 : M.Val unit := M.alloc tt in
          never_to_any α0
        else
          M.alloc tt
      end in
    let* _ : M.Val unit :=
      let* α0 : M.Val i32.t := M.alloc 3 in
      let* α1 := M.read α0 in
      let* α2 : M.Val (core.option.Option.t i32.t) :=
        M.alloc (core.option.Option.Some α1) in
      let* α3 : ref (core.option.Option.t i32.t) := borrow α2 in
      let* α4 : mut_ref type not implemented := borrow_mut v3 in
      let* α5 : core.option.Option.t i32.t :=
        (core.iter.traits.iterator.Iterator.next
            (Self := type not implemented)
            (Trait := ltac:(refine _)))
          α4 in
      let* α6 : M.Val (core.option.Option.t i32.t) := M.alloc α5 in
      let* α7 : ref (core.option.Option.t i32.t) := borrow α6 in
      let* α8 :
          M.Val
            ((ref (core.option.Option.t i32.t))
            *
            (ref (core.option.Option.t i32.t))) :=
        M.alloc (α3, α7) in
      let* α9 := M.read α8 in
      match α9 with
      | (left_val, right_val) =>
        let* right_val := M.alloc right_val in
        let* left_val := M.alloc left_val in
        let* α0 := M.read left_val in
        let* α1 : M.Val (core.option.Option.t i32.t) := deref α0 in
        let* α2 : ref (core.option.Option.t i32.t) := borrow α1 in
        let* α3 := M.read right_val in
        let* α4 : M.Val (core.option.Option.t i32.t) := deref α3 in
        let* α5 : ref (core.option.Option.t i32.t) := borrow α4 in
        let* α6 : bool.t :=
          (core.cmp.PartialEq.eq
              (Self := core.option.Option.t i32.t)
              (Trait := ltac:(refine _)))
            α2
            α5 in
        let* α7 : M.Val bool.t := M.alloc α6 in
        let* α8 : M.Val bool.t := UnOp.not α7 in
        let* α9 : M.Val bool.t := use α8 in
        let* α10 := M.read α9 in
        if (α10 : bool) then
          let* kind : M.Val core.panicking.AssertKind.t :=
            M.alloc core.panicking.AssertKind.Eq in
          let* _ : M.Val never.t :=
            let* α0 := M.read kind in
            let* α1 := M.read left_val in
            let* α2 : M.Val (core.option.Option.t i32.t) := deref α1 in
            let* α3 : ref (core.option.Option.t i32.t) := borrow α2 in
            let* α4 : M.Val (core.option.Option.t i32.t) := deref α3 in
            let* α5 : ref (core.option.Option.t i32.t) := borrow α4 in
            let* α6 := M.read right_val in
            let* α7 : M.Val (core.option.Option.t i32.t) := deref α6 in
            let* α8 : ref (core.option.Option.t i32.t) := borrow α7 in
            let* α9 : M.Val (core.option.Option.t i32.t) := deref α8 in
            let* α10 : ref (core.option.Option.t i32.t) := borrow α9 in
            let* α11 : never.t :=
              core.panicking.assert_failed α0 α5 α10 core.option.Option.None in
            M.alloc α11 in
          let* α0 : M.Val unit := M.alloc tt in
          never_to_any α0
        else
          M.alloc tt
      end in
    let* _ : M.Val unit :=
      let* α0 : M.Val i32.t := M.alloc 4 in
      let* α1 := M.read α0 in
      let* α2 : M.Val (core.option.Option.t i32.t) :=
        M.alloc (core.option.Option.Some α1) in
      let* α3 : ref (core.option.Option.t i32.t) := borrow α2 in
      let* α4 : mut_ref type not implemented := borrow_mut v3 in
      let* α5 : core.option.Option.t i32.t :=
        (core.iter.traits.iterator.Iterator.next
            (Self := type not implemented)
            (Trait := ltac:(refine _)))
          α4 in
      let* α6 : M.Val (core.option.Option.t i32.t) := M.alloc α5 in
      let* α7 : ref (core.option.Option.t i32.t) := borrow α6 in
      let* α8 :
          M.Val
            ((ref (core.option.Option.t i32.t))
            *
            (ref (core.option.Option.t i32.t))) :=
        M.alloc (α3, α7) in
      let* α9 := M.read α8 in
      match α9 with
      | (left_val, right_val) =>
        let* right_val := M.alloc right_val in
        let* left_val := M.alloc left_val in
        let* α0 := M.read left_val in
        let* α1 : M.Val (core.option.Option.t i32.t) := deref α0 in
        let* α2 : ref (core.option.Option.t i32.t) := borrow α1 in
        let* α3 := M.read right_val in
        let* α4 : M.Val (core.option.Option.t i32.t) := deref α3 in
        let* α5 : ref (core.option.Option.t i32.t) := borrow α4 in
        let* α6 : bool.t :=
          (core.cmp.PartialEq.eq
              (Self := core.option.Option.t i32.t)
              (Trait := ltac:(refine _)))
            α2
            α5 in
        let* α7 : M.Val bool.t := M.alloc α6 in
        let* α8 : M.Val bool.t := UnOp.not α7 in
        let* α9 : M.Val bool.t := use α8 in
        let* α10 := M.read α9 in
        if (α10 : bool) then
          let* kind : M.Val core.panicking.AssertKind.t :=
            M.alloc core.panicking.AssertKind.Eq in
          let* _ : M.Val never.t :=
            let* α0 := M.read kind in
            let* α1 := M.read left_val in
            let* α2 : M.Val (core.option.Option.t i32.t) := deref α1 in
            let* α3 : ref (core.option.Option.t i32.t) := borrow α2 in
            let* α4 : M.Val (core.option.Option.t i32.t) := deref α3 in
            let* α5 : ref (core.option.Option.t i32.t) := borrow α4 in
            let* α6 := M.read right_val in
            let* α7 : M.Val (core.option.Option.t i32.t) := deref α6 in
            let* α8 : ref (core.option.Option.t i32.t) := borrow α7 in
            let* α9 : M.Val (core.option.Option.t i32.t) := deref α8 in
            let* α10 : ref (core.option.Option.t i32.t) := borrow α9 in
            let* α11 : never.t :=
              core.panicking.assert_failed α0 α5 α10 core.option.Option.None in
            M.alloc α11 in
          let* α0 : M.Val unit := M.alloc tt in
          never_to_any α0
        else
          M.alloc tt
      end in
    let* _ : M.Val unit :=
      let* α0 : M.Val i32.t := M.alloc 5 in
      let* α1 := M.read α0 in
      let* α2 : M.Val (core.option.Option.t i32.t) :=
        M.alloc (core.option.Option.Some α1) in
      let* α3 : ref (core.option.Option.t i32.t) := borrow α2 in
      let* α4 : mut_ref type not implemented := borrow_mut v3 in
      let* α5 : core.option.Option.t i32.t :=
        (core.iter.traits.iterator.Iterator.next
            (Self := type not implemented)
            (Trait := ltac:(refine _)))
          α4 in
      let* α6 : M.Val (core.option.Option.t i32.t) := M.alloc α5 in
      let* α7 : ref (core.option.Option.t i32.t) := borrow α6 in
      let* α8 :
          M.Val
            ((ref (core.option.Option.t i32.t))
            *
            (ref (core.option.Option.t i32.t))) :=
        M.alloc (α3, α7) in
      let* α9 := M.read α8 in
      match α9 with
      | (left_val, right_val) =>
        let* right_val := M.alloc right_val in
        let* left_val := M.alloc left_val in
        let* α0 := M.read left_val in
        let* α1 : M.Val (core.option.Option.t i32.t) := deref α0 in
        let* α2 : ref (core.option.Option.t i32.t) := borrow α1 in
        let* α3 := M.read right_val in
        let* α4 : M.Val (core.option.Option.t i32.t) := deref α3 in
        let* α5 : ref (core.option.Option.t i32.t) := borrow α4 in
        let* α6 : bool.t :=
          (core.cmp.PartialEq.eq
              (Self := core.option.Option.t i32.t)
              (Trait := ltac:(refine _)))
            α2
            α5 in
        let* α7 : M.Val bool.t := M.alloc α6 in
        let* α8 : M.Val bool.t := UnOp.not α7 in
        let* α9 : M.Val bool.t := use α8 in
        let* α10 := M.read α9 in
        if (α10 : bool) then
          let* kind : M.Val core.panicking.AssertKind.t :=
            M.alloc core.panicking.AssertKind.Eq in
          let* _ : M.Val never.t :=
            let* α0 := M.read kind in
            let* α1 := M.read left_val in
            let* α2 : M.Val (core.option.Option.t i32.t) := deref α1 in
            let* α3 : ref (core.option.Option.t i32.t) := borrow α2 in
            let* α4 : M.Val (core.option.Option.t i32.t) := deref α3 in
            let* α5 : ref (core.option.Option.t i32.t) := borrow α4 in
            let* α6 := M.read right_val in
            let* α7 : M.Val (core.option.Option.t i32.t) := deref α6 in
            let* α8 : ref (core.option.Option.t i32.t) := borrow α7 in
            let* α9 : M.Val (core.option.Option.t i32.t) := deref α8 in
            let* α10 : ref (core.option.Option.t i32.t) := borrow α9 in
            let* α11 : never.t :=
              core.panicking.assert_failed α0 α5 α10 core.option.Option.None in
            M.alloc α11 in
          let* α0 : M.Val unit := M.alloc tt in
          never_to_any α0
        else
          M.alloc tt
      end in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) := M.alloc [ mk_str "all done
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_const"] α6 in
        let* α8 : unit := std.io.stdio._print α7 in
        M.alloc α8 in
      M.alloc tt in
    M.alloc tt).
