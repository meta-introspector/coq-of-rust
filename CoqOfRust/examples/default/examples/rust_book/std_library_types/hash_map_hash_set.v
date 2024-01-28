(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    let mut a: HashSet<i32> = vec![1i32, 2, 3].into_iter().collect();
    let mut b: HashSet<i32> = vec![2i32, 3, 4].into_iter().collect();

    assert!(a.insert(4));
    assert!(a.contains(&4));

    // `HashSet::insert()` returns false if
    // there was a value already present.
    // assert!(b.insert(4), "Value 4 is already in set B!");
    // FIXME ^ Comment out this line

    b.insert(5);

    // If a collection's element type implements `Debug`,
    // then the collection implements `Debug`.
    // It usually prints its elements in the format `[elem1, elem2, ...]`
    println!("A: {:?}", a);
    println!("B: {:?}", b);

    // Print [1, 2, 3, 4, 5] in arbitrary order
    println!("Union: {:?}", a.union(&b).collect::<Vec<&i32>>());

    // This should print [1]
    println!("Difference: {:?}", a.difference(&b).collect::<Vec<&i32>>());

    // Print [2, 3, 4] in arbitrary order.
    println!(
        "Intersection: {:?}",
        a.intersection(&b).collect::<Vec<&i32>>()
    );

    // Print [1, 5]
    println!(
        "Symmetric Difference: {:?}",
        a.symmetric_difference(&b).collect::<Vec<&i32>>()
    );
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* a :
      M.Val
        (std.collections.hash.set.HashSet.t
          i32.t
          std.hash.random.RandomState.t) :=
    let* α0 :
        (alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t) ->
          M
            (std.collections.hash.set.HashSet.t
              i32.t
              std.hash.random.RandomState.t) :=
      ltac:(M.get_method (fun ℐ =>
        core.iter.traits.iterator.Iterator.collect
          (Self := alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t)
          (B :=
            std.collections.hash.set.HashSet.t
              i32.t
              std.hash.random.RandomState.t)
          (Trait := ℐ))) in
    let* α1 : (alloc.vec.Vec.t i32.t alloc.alloc.Global.t) -> M _ :=
      ltac:(M.get_method (fun ℐ =>
        core.iter.traits.collect.IntoIterator.into_iter
          (Self := alloc.vec.Vec.t i32.t alloc.alloc.Global.t)
          (Trait := ℐ))) in
    let* α2 : M.Val (array i32.t) :=
      M.alloc
        [
          (Integer.of_Z 1) : i32.t;
          (Integer.of_Z 2) : i32.t;
          (Integer.of_Z 3) : i32.t
        ] in
    let* α3 : M.Val (alloc.boxed.Box.t (array i32.t) alloc.alloc.Global.t) :=
      M.call ((alloc.boxed.Box.t _ alloc.boxed.Box.Default.A)::["new"] α2) in
    let* α4 : alloc.boxed.Box.t (array i32.t) alloc.alloc.Global.t :=
      M.read α3 in
    let* α5 : alloc.vec.Vec.t i32.t alloc.alloc.Global.t :=
      M.call ((slice i32.t)::["into_vec"] (pointer_coercion "Unsize" α4)) in
    let* α6 : alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t :=
      M.call (α1 α5) in
    let* α7 :
        std.collections.hash.set.HashSet.t
          i32.t
          std.hash.random.RandomState.t :=
      M.call (α0 α6) in
    M.alloc α7 in
  let* b :
      M.Val
        (std.collections.hash.set.HashSet.t
          i32.t
          std.hash.random.RandomState.t) :=
    let* α0 :
        (alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t) ->
          M
            (std.collections.hash.set.HashSet.t
              i32.t
              std.hash.random.RandomState.t) :=
      ltac:(M.get_method (fun ℐ =>
        core.iter.traits.iterator.Iterator.collect
          (Self := alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t)
          (B :=
            std.collections.hash.set.HashSet.t
              i32.t
              std.hash.random.RandomState.t)
          (Trait := ℐ))) in
    let* α1 : (alloc.vec.Vec.t i32.t alloc.alloc.Global.t) -> M _ :=
      ltac:(M.get_method (fun ℐ =>
        core.iter.traits.collect.IntoIterator.into_iter
          (Self := alloc.vec.Vec.t i32.t alloc.alloc.Global.t)
          (Trait := ℐ))) in
    let* α2 : M.Val (array i32.t) :=
      M.alloc
        [
          (Integer.of_Z 2) : i32.t;
          (Integer.of_Z 3) : i32.t;
          (Integer.of_Z 4) : i32.t
        ] in
    let* α3 : M.Val (alloc.boxed.Box.t (array i32.t) alloc.alloc.Global.t) :=
      M.call ((alloc.boxed.Box.t _ alloc.boxed.Box.Default.A)::["new"] α2) in
    let* α4 : alloc.boxed.Box.t (array i32.t) alloc.alloc.Global.t :=
      M.read α3 in
    let* α5 : alloc.vec.Vec.t i32.t alloc.alloc.Global.t :=
      M.call ((slice i32.t)::["into_vec"] (pointer_coercion "Unsize" α4)) in
    let* α6 : alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t :=
      M.call (α1 α5) in
    let* α7 :
        std.collections.hash.set.HashSet.t
          i32.t
          std.hash.random.RandomState.t :=
      M.call (α0 α6) in
    M.alloc α7 in
  let* _ : M.Val unit :=
    let* α0 : bool.t :=
      M.call
        ((std.collections.hash.set.HashSet.t
              i32.t
              std.hash.random.RandomState.t)::["insert"]
          (borrow_mut a)
          ((Integer.of_Z 4) : i32.t)) in
    let* α1 : M.Val bool.t := M.alloc (UnOp.not α0) in
    let* α2 : bool.t := M.read (use α1) in
    if α2 then
      let* α0 : ref str.t := M.read (mk_str "assertion failed: a.insert(4)") in
      let* α1 : never.t := M.call (core.panicking.panic α0) in
      let* α2 : unit := never_to_any α1 in
      M.alloc α2
    else
      M.alloc tt in
  let* _ : M.Val unit :=
    let* α0 : M.Val i32.t := M.alloc ((Integer.of_Z 4) : i32.t) in
    let* α1 : bool.t :=
      M.call
        ((std.collections.hash.set.HashSet.t
              i32.t
              std.hash.random.RandomState.t)::["contains"]
          (borrow a)
          (borrow α0)) in
    let* α2 : M.Val bool.t := M.alloc (UnOp.not α1) in
    let* α3 : bool.t := M.read (use α2) in
    if α3 then
      let* α0 : ref str.t :=
        M.read (mk_str "assertion failed: a.contains(&4)") in
      let* α1 : never.t := M.call (core.panicking.panic α0) in
      let* α2 : unit := never_to_any α1 in
      M.alloc α2
    else
      M.alloc tt in
  let* _ : M.Val bool.t :=
    let* α0 : bool.t :=
      M.call
        ((std.collections.hash.set.HashSet.t
              i32.t
              std.hash.random.RandomState.t)::["insert"]
          (borrow_mut b)
          ((Integer.of_Z 5) : i32.t)) in
    M.alloc α0 in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "A: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow a)) in
      let* α4 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α3 ] in
      let* α5 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α4))) in
      let* α6 : unit := M.call (std.io.stdio._print α5) in
      M.alloc α6 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "B: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow b)) in
      let* α4 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α3 ] in
      let* α5 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α4))) in
      let* α6 : unit := M.call (std.io.stdio._print α5) in
      M.alloc α6 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "Union: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 :
          (std.collections.hash.set.Union.t i32.t std.hash.random.RandomState.t)
            ->
            M (alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t) :=
        ltac:(M.get_method (fun ℐ =>
          core.iter.traits.iterator.Iterator.collect
            (Self :=
              std.collections.hash.set.Union.t
                i32.t
                std.hash.random.RandomState.t)
            (B := alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t)
            (Trait := ℐ))) in
      let* α4 :
          std.collections.hash.set.Union.t
            i32.t
            std.hash.random.RandomState.t :=
        M.call
          ((std.collections.hash.set.HashSet.t
                i32.t
                std.hash.random.RandomState.t)::["union"]
            (borrow a)
            (borrow b)) in
      let* α5 : alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t :=
        M.call (α3 α4) in
      let* α6 : M.Val (alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t) :=
        M.alloc α5 in
      let* α7 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow α6)) in
      let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
      let* α9 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α8))) in
      let* α10 : unit := M.call (std.io.stdio._print α9) in
      M.alloc α10 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "Difference: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 :
          (std.collections.hash.set.Difference.t
              i32.t
              std.hash.random.RandomState.t)
            ->
            M (alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t) :=
        ltac:(M.get_method (fun ℐ =>
          core.iter.traits.iterator.Iterator.collect
            (Self :=
              std.collections.hash.set.Difference.t
                i32.t
                std.hash.random.RandomState.t)
            (B := alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t)
            (Trait := ℐ))) in
      let* α4 :
          std.collections.hash.set.Difference.t
            i32.t
            std.hash.random.RandomState.t :=
        M.call
          ((std.collections.hash.set.HashSet.t
                i32.t
                std.hash.random.RandomState.t)::["difference"]
            (borrow a)
            (borrow b)) in
      let* α5 : alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t :=
        M.call (α3 α4) in
      let* α6 : M.Val (alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t) :=
        M.alloc α5 in
      let* α7 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow α6)) in
      let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
      let* α9 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α8))) in
      let* α10 : unit := M.call (std.io.stdio._print α9) in
      M.alloc α10 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "Intersection: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 :
          (std.collections.hash.set.Intersection.t
              i32.t
              std.hash.random.RandomState.t)
            ->
            M (alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t) :=
        ltac:(M.get_method (fun ℐ =>
          core.iter.traits.iterator.Iterator.collect
            (Self :=
              std.collections.hash.set.Intersection.t
                i32.t
                std.hash.random.RandomState.t)
            (B := alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t)
            (Trait := ℐ))) in
      let* α4 :
          std.collections.hash.set.Intersection.t
            i32.t
            std.hash.random.RandomState.t :=
        M.call
          ((std.collections.hash.set.HashSet.t
                i32.t
                std.hash.random.RandomState.t)::["intersection"]
            (borrow a)
            (borrow b)) in
      let* α5 : alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t :=
        M.call (α3 α4) in
      let* α6 : M.Val (alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t) :=
        M.alloc α5 in
      let* α7 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow α6)) in
      let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
      let* α9 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α8))) in
      let* α10 : unit := M.call (std.io.stdio._print α9) in
      M.alloc α10 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "Symmetric Difference: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 :
          (std.collections.hash.set.SymmetricDifference.t
              i32.t
              std.hash.random.RandomState.t)
            ->
            M (alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t) :=
        ltac:(M.get_method (fun ℐ =>
          core.iter.traits.iterator.Iterator.collect
            (Self :=
              std.collections.hash.set.SymmetricDifference.t
                i32.t
                std.hash.random.RandomState.t)
            (B := alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t)
            (Trait := ℐ))) in
      let* α4 :
          std.collections.hash.set.SymmetricDifference.t
            i32.t
            std.hash.random.RandomState.t :=
        M.call
          ((std.collections.hash.set.HashSet.t
                i32.t
                std.hash.random.RandomState.t)::["symmetric_difference"]
            (borrow a)
            (borrow b)) in
      let* α5 : alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t :=
        M.call (α3 α4) in
      let* α6 : M.Val (alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t) :=
        M.alloc α5 in
      let* α7 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow α6)) in
      let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
      let* α9 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α8))) in
      let* α10 : unit := M.call (std.io.stdio._print α9) in
      M.alloc α10 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.