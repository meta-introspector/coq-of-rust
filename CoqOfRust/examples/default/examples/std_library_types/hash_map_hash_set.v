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
  M.function_body
    (let* a :
        M.Val
          (std.collections.hash.set.HashSet.t
            i32.t
            std.collections.hash.map.RandomState.t) :=
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
      let* α8 : alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t :=
        (core.iter.traits.collect.IntoIterator.into_iter
            (Self := alloc.vec.Vec.t i32.t alloc.alloc.Global.t)
            (Trait := ltac:(refine _)))
          α7 in
      let* α9 :
          std.collections.hash.set.HashSet.t
            i32.t
            std.collections.hash.map.RandomState.t :=
        (core.iter.traits.iterator.Iterator.collect
            (Self := alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t)
            (Trait := ltac:(refine _)))
          α8 in
      M.alloc α9 in
    let* b :
        M.Val
          (std.collections.hash.set.HashSet.t
            i32.t
            std.collections.hash.map.RandomState.t) :=
      let* α0 : M.Val i32.t := M.alloc 2 in
      let* α1 : M.Val i32.t := M.alloc 3 in
      let* α2 : M.Val i32.t := M.alloc 4 in
      let* α3 : M.Val (array i32.t) := M.alloc [ α0; α1; α2 ] in
      let* α4 : M.Val (alloc.boxed.Box.t (array i32.t) alloc.alloc.Global.t) :=
        (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α3 in
      let* α5 : M.Val (alloc.boxed.Box.t (slice i32.t) alloc.alloc.Global.t) :=
        pointer_coercion "Unsize" α4 in
      let* α6 := M.read α5 in
      let* α7 : alloc.vec.Vec.t i32.t alloc.alloc.Global.t :=
        (slice i32.t)::["into_vec"] α6 in
      let* α8 : alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t :=
        (core.iter.traits.collect.IntoIterator.into_iter
            (Self := alloc.vec.Vec.t i32.t alloc.alloc.Global.t)
            (Trait := ltac:(refine _)))
          α7 in
      let* α9 :
          std.collections.hash.set.HashSet.t
            i32.t
            std.collections.hash.map.RandomState.t :=
        (core.iter.traits.iterator.Iterator.collect
            (Self := alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t)
            (Trait := ltac:(refine _)))
          α8 in
      M.alloc α9 in
    let* _ : M.Val unit :=
      let* α0 :
          mut_ref
            (std.collections.hash.set.HashSet.t
              i32.t
              std.collections.hash.map.RandomState.t) :=
        borrow_mut a in
      let* α1 : M.Val i32.t := M.alloc 4 in
      let* α2 := M.read α1 in
      let* α3 : bool.t :=
        (std.collections.hash.set.HashSet.t
              i32.t
              std.collections.hash.map.RandomState.t)::["insert"]
          α0
          α2 in
      let* α4 : M.Val bool.t := M.alloc α3 in
      let* α5 : M.Val bool.t := UnOp.not α4 in
      let* α6 : M.Val bool.t := use α5 in
      let* α7 := M.read α6 in
      if (α7 : bool) then
        let* α0 := M.read (mk_str "assertion failed: a.insert(4)") in
        let* α1 : never.t := core.panicking.panic α0 in
        let* α2 : M.Val never.t := M.alloc α1 in
        never_to_any α2
      else
        M.alloc tt in
    let* _ : M.Val unit :=
      let* α0 :
          ref
            (std.collections.hash.set.HashSet.t
              i32.t
              std.collections.hash.map.RandomState.t) :=
        borrow a in
      let* α1 : M.Val i32.t := M.alloc 4 in
      let* α2 : ref i32.t := borrow α1 in
      let* α3 : M.Val i32.t := deref α2 in
      let* α4 : ref i32.t := borrow α3 in
      let* α5 : bool.t :=
        (std.collections.hash.set.HashSet.t
              i32.t
              std.collections.hash.map.RandomState.t)::["contains"]
          α0
          α4 in
      let* α6 : M.Val bool.t := M.alloc α5 in
      let* α7 : M.Val bool.t := UnOp.not α6 in
      let* α8 : M.Val bool.t := use α7 in
      let* α9 := M.read α8 in
      if (α9 : bool) then
        let* α0 := M.read (mk_str "assertion failed: a.contains(&4)") in
        let* α1 : never.t := core.panicking.panic α0 in
        let* α2 : M.Val never.t := M.alloc α1 in
        never_to_any α2
      else
        M.alloc tt in
    let* _ : M.Val bool.t :=
      let* α0 :
          mut_ref
            (std.collections.hash.set.HashSet.t
              i32.t
              std.collections.hash.map.RandomState.t) :=
        borrow_mut b in
      let* α1 : M.Val i32.t := M.alloc 5 in
      let* α2 := M.read α1 in
      let* α3 : bool.t :=
        (std.collections.hash.set.HashSet.t
              i32.t
              std.collections.hash.map.RandomState.t)::["insert"]
          α0
          α2 in
      M.alloc α3 in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "A: "; mk_str "
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 :
            ref
              (std.collections.hash.set.HashSet.t
                i32.t
                std.collections.hash.map.RandomState.t) :=
          borrow a in
        let* α8 :
            M.Val
              (std.collections.hash.set.HashSet.t
                i32.t
                std.collections.hash.map.RandomState.t) :=
          deref α7 in
        let* α9 :
            ref
              (std.collections.hash.set.HashSet.t
                i32.t
                std.collections.hash.map.RandomState.t) :=
          borrow α8 in
        let* α10 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_debug"] α9 in
        let* α11 : M.Val core.fmt.rt.Argument.t := M.alloc α10 in
        let* α12 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α11 ] in
        let* α13 : ref (array core.fmt.rt.Argument.t) := borrow α12 in
        let* α14 : M.Val (array core.fmt.rt.Argument.t) := deref α13 in
        let* α15 : ref (array core.fmt.rt.Argument.t) := borrow α14 in
        let* α16 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α15 in
        let* α17 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α16 in
        let* α18 := M.read α17 in
        let* α19 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α6 α18 in
        let* α20 : unit := std.io.stdio._print α19 in
        M.alloc α20 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "B: "; mk_str "
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 :
            ref
              (std.collections.hash.set.HashSet.t
                i32.t
                std.collections.hash.map.RandomState.t) :=
          borrow b in
        let* α8 :
            M.Val
              (std.collections.hash.set.HashSet.t
                i32.t
                std.collections.hash.map.RandomState.t) :=
          deref α7 in
        let* α9 :
            ref
              (std.collections.hash.set.HashSet.t
                i32.t
                std.collections.hash.map.RandomState.t) :=
          borrow α8 in
        let* α10 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_debug"] α9 in
        let* α11 : M.Val core.fmt.rt.Argument.t := M.alloc α10 in
        let* α12 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α11 ] in
        let* α13 : ref (array core.fmt.rt.Argument.t) := borrow α12 in
        let* α14 : M.Val (array core.fmt.rt.Argument.t) := deref α13 in
        let* α15 : ref (array core.fmt.rt.Argument.t) := borrow α14 in
        let* α16 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α15 in
        let* α17 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α16 in
        let* α18 := M.read α17 in
        let* α19 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α6 α18 in
        let* α20 : unit := std.io.stdio._print α19 in
        M.alloc α20 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Union: "; mk_str "
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 :
            ref
              (std.collections.hash.set.HashSet.t
                i32.t
                std.collections.hash.map.RandomState.t) :=
          borrow a in
        let* α8 :
            ref
              (std.collections.hash.set.HashSet.t
                i32.t
                std.collections.hash.map.RandomState.t) :=
          borrow b in
        let* α9 :
            M.Val
              (std.collections.hash.set.HashSet.t
                i32.t
                std.collections.hash.map.RandomState.t) :=
          deref α8 in
        let* α10 :
            ref
              (std.collections.hash.set.HashSet.t
                i32.t
                std.collections.hash.map.RandomState.t) :=
          borrow α9 in
        let* α11 :
            std.collections.hash.set.Union.t
              i32.t
              std.collections.hash.map.RandomState.t :=
          (std.collections.hash.set.HashSet.t
                i32.t
                std.collections.hash.map.RandomState.t)::["union"]
            α7
            α10 in
        let* α12 : alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t :=
          (core.iter.traits.iterator.Iterator.collect
              (Self :=
                std.collections.hash.set.Union.t
                  i32.t
                  std.collections.hash.map.RandomState.t)
              (Trait := ltac:(refine _)))
            α11 in
        let* α13 : M.Val (alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t) :=
          M.alloc α12 in
        let* α14 : ref (alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t) :=
          borrow α13 in
        let* α15 : M.Val (alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t) :=
          deref α14 in
        let* α16 : ref (alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t) :=
          borrow α15 in
        let* α17 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_debug"] α16 in
        let* α18 : M.Val core.fmt.rt.Argument.t := M.alloc α17 in
        let* α19 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α18 ] in
        let* α20 : ref (array core.fmt.rt.Argument.t) := borrow α19 in
        let* α21 : M.Val (array core.fmt.rt.Argument.t) := deref α20 in
        let* α22 : ref (array core.fmt.rt.Argument.t) := borrow α21 in
        let* α23 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α22 in
        let* α24 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α23 in
        let* α25 := M.read α24 in
        let* α26 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α6 α25 in
        let* α27 : unit := std.io.stdio._print α26 in
        M.alloc α27 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Difference: "; mk_str "
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 :
            ref
              (std.collections.hash.set.HashSet.t
                i32.t
                std.collections.hash.map.RandomState.t) :=
          borrow a in
        let* α8 :
            ref
              (std.collections.hash.set.HashSet.t
                i32.t
                std.collections.hash.map.RandomState.t) :=
          borrow b in
        let* α9 :
            M.Val
              (std.collections.hash.set.HashSet.t
                i32.t
                std.collections.hash.map.RandomState.t) :=
          deref α8 in
        let* α10 :
            ref
              (std.collections.hash.set.HashSet.t
                i32.t
                std.collections.hash.map.RandomState.t) :=
          borrow α9 in
        let* α11 :
            std.collections.hash.set.Difference.t
              i32.t
              std.collections.hash.map.RandomState.t :=
          (std.collections.hash.set.HashSet.t
                i32.t
                std.collections.hash.map.RandomState.t)::["difference"]
            α7
            α10 in
        let* α12 : alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t :=
          (core.iter.traits.iterator.Iterator.collect
              (Self :=
                std.collections.hash.set.Difference.t
                  i32.t
                  std.collections.hash.map.RandomState.t)
              (Trait := ltac:(refine _)))
            α11 in
        let* α13 : M.Val (alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t) :=
          M.alloc α12 in
        let* α14 : ref (alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t) :=
          borrow α13 in
        let* α15 : M.Val (alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t) :=
          deref α14 in
        let* α16 : ref (alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t) :=
          borrow α15 in
        let* α17 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_debug"] α16 in
        let* α18 : M.Val core.fmt.rt.Argument.t := M.alloc α17 in
        let* α19 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α18 ] in
        let* α20 : ref (array core.fmt.rt.Argument.t) := borrow α19 in
        let* α21 : M.Val (array core.fmt.rt.Argument.t) := deref α20 in
        let* α22 : ref (array core.fmt.rt.Argument.t) := borrow α21 in
        let* α23 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α22 in
        let* α24 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α23 in
        let* α25 := M.read α24 in
        let* α26 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α6 α25 in
        let* α27 : unit := std.io.stdio._print α26 in
        M.alloc α27 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Intersection: "; mk_str "
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 :
            ref
              (std.collections.hash.set.HashSet.t
                i32.t
                std.collections.hash.map.RandomState.t) :=
          borrow a in
        let* α8 :
            ref
              (std.collections.hash.set.HashSet.t
                i32.t
                std.collections.hash.map.RandomState.t) :=
          borrow b in
        let* α9 :
            M.Val
              (std.collections.hash.set.HashSet.t
                i32.t
                std.collections.hash.map.RandomState.t) :=
          deref α8 in
        let* α10 :
            ref
              (std.collections.hash.set.HashSet.t
                i32.t
                std.collections.hash.map.RandomState.t) :=
          borrow α9 in
        let* α11 :
            std.collections.hash.set.Intersection.t
              i32.t
              std.collections.hash.map.RandomState.t :=
          (std.collections.hash.set.HashSet.t
                i32.t
                std.collections.hash.map.RandomState.t)::["intersection"]
            α7
            α10 in
        let* α12 : alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t :=
          (core.iter.traits.iterator.Iterator.collect
              (Self :=
                std.collections.hash.set.Intersection.t
                  i32.t
                  std.collections.hash.map.RandomState.t)
              (Trait := ltac:(refine _)))
            α11 in
        let* α13 : M.Val (alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t) :=
          M.alloc α12 in
        let* α14 : ref (alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t) :=
          borrow α13 in
        let* α15 : M.Val (alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t) :=
          deref α14 in
        let* α16 : ref (alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t) :=
          borrow α15 in
        let* α17 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_debug"] α16 in
        let* α18 : M.Val core.fmt.rt.Argument.t := M.alloc α17 in
        let* α19 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α18 ] in
        let* α20 : ref (array core.fmt.rt.Argument.t) := borrow α19 in
        let* α21 : M.Val (array core.fmt.rt.Argument.t) := deref α20 in
        let* α22 : ref (array core.fmt.rt.Argument.t) := borrow α21 in
        let* α23 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α22 in
        let* α24 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α23 in
        let* α25 := M.read α24 in
        let* α26 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α6 α25 in
        let* α27 : unit := std.io.stdio._print α26 in
        M.alloc α27 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Symmetric Difference: "; mk_str "
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 :
            ref
              (std.collections.hash.set.HashSet.t
                i32.t
                std.collections.hash.map.RandomState.t) :=
          borrow a in
        let* α8 :
            ref
              (std.collections.hash.set.HashSet.t
                i32.t
                std.collections.hash.map.RandomState.t) :=
          borrow b in
        let* α9 :
            M.Val
              (std.collections.hash.set.HashSet.t
                i32.t
                std.collections.hash.map.RandomState.t) :=
          deref α8 in
        let* α10 :
            ref
              (std.collections.hash.set.HashSet.t
                i32.t
                std.collections.hash.map.RandomState.t) :=
          borrow α9 in
        let* α11 :
            std.collections.hash.set.SymmetricDifference.t
              i32.t
              std.collections.hash.map.RandomState.t :=
          (std.collections.hash.set.HashSet.t
                i32.t
                std.collections.hash.map.RandomState.t)::["symmetric_difference"]
            α7
            α10 in
        let* α12 : alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t :=
          (core.iter.traits.iterator.Iterator.collect
              (Self :=
                std.collections.hash.set.SymmetricDifference.t
                  i32.t
                  std.collections.hash.map.RandomState.t)
              (Trait := ltac:(refine _)))
            α11 in
        let* α13 : M.Val (alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t) :=
          M.alloc α12 in
        let* α14 : ref (alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t) :=
          borrow α13 in
        let* α15 : M.Val (alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t) :=
          deref α14 in
        let* α16 : ref (alloc.vec.Vec.t (ref i32.t) alloc.alloc.Global.t) :=
          borrow α15 in
        let* α17 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_debug"] α16 in
        let* α18 : M.Val core.fmt.rt.Argument.t := M.alloc α17 in
        let* α19 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α18 ] in
        let* α20 : ref (array core.fmt.rt.Argument.t) := borrow α19 in
        let* α21 : M.Val (array core.fmt.rt.Argument.t) := deref α20 in
        let* α22 : ref (array core.fmt.rt.Argument.t) := borrow α21 in
        let* α23 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α22 in
        let* α24 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α23 in
        let* α25 := M.read α24 in
        let* α26 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α6 α25 in
        let* α27 : unit := std.io.stdio._print α26 in
        M.alloc α27 in
      M.alloc tt in
    M.alloc tt).
