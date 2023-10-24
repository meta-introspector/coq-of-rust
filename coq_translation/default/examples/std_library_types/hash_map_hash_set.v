(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{State.Trait} : M unit :=
  let* a :=
    let* α0 := M.alloc 1 in
    let* α1 := M.alloc 2 in
    let* α2 := M.alloc 3 in
    let* α3 :=
      (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] [ α0; α1; α2 ] in
    let* α4 := pointer_coercion "Unsize" α3 in
    let* α5 := (Slice _)::["into_vec"] α4 in
    let* α6 := core.iter.traits.collect.IntoIterator.into_iter α5 in
    core.iter.traits.iterator.Iterator.collect α6 in
  let* b :=
    let* α0 := M.alloc 2 in
    let* α1 := M.alloc 3 in
    let* α2 := M.alloc 4 in
    let* α3 :=
      (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] [ α0; α1; α2 ] in
    let* α4 := pointer_coercion "Unsize" α3 in
    let* α5 := (Slice _)::["into_vec"] α4 in
    let* α6 := core.iter.traits.collect.IntoIterator.into_iter α5 in
    core.iter.traits.iterator.Iterator.collect α6 in
  let* _ :=
    let* α0 :=
      borrow_mut
        a
        (std.collections.hash.set.HashSet
          i32
          std.collections.hash.map.RandomState) in
    let* α1 := M.alloc 4 in
    let* α2 := (std.collections.hash.set.HashSet _ _)::["insert"] α0 α1 in
    let* α3 := not α2 in
    let* α4 := use α3 in
    if (α4 : bool) then
      let* α0 :=
        core.panicking.panic (mk_str "assertion failed: a.insert(4)") in
      never_to_any α0
    else
      M.alloc tt in
  let* _ :=
    let* α0 :=
      borrow
        a
        (std.collections.hash.set.HashSet
          i32
          std.collections.hash.map.RandomState) in
    let* α1 := M.alloc 4 in
    let* α2 := borrow α1 i32 in
    let* α3 := deref α2 i32 in
    let* α4 := borrow α3 i32 in
    let* α5 := (std.collections.hash.set.HashSet _ _)::["contains"] α0 α4 in
    let* α6 := not α5 in
    let* α7 := use α6 in
    if (α7 : bool) then
      let* α0 :=
        core.panicking.panic (mk_str "assertion failed: a.contains(&4)") in
      never_to_any α0
    else
      M.alloc tt in
  let* _ :=
    let* α0 :=
      borrow_mut
        b
        (std.collections.hash.set.HashSet
          i32
          std.collections.hash.map.RandomState) in
    let* α1 := M.alloc 5 in
    (std.collections.hash.set.HashSet _ _)::["insert"] α0 α1 in
  let* _ :=
    let* _ :=
      let* α0 := borrow [ mk_str "A: "; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 :=
        borrow
          a
          (std.collections.hash.set.HashSet
            i32
            std.collections.hash.map.RandomState) in
      let* α5 :=
        deref
          α4
          (std.collections.hash.set.HashSet
            i32
            std.collections.hash.map.RandomState) in
      let* α6 :=
        borrow
          α5
          (std.collections.hash.set.HashSet
            i32
            std.collections.hash.map.RandomState) in
      let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
      let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
      let* α9 := deref α8 (list core.fmt.rt.Argument) in
      let* α10 := borrow α9 (list core.fmt.rt.Argument) in
      let* α11 := pointer_coercion "Unsize" α10 in
      let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
      std.io.stdio._print α12 in
    M.alloc tt in
  let* _ :=
    let* _ :=
      let* α0 := borrow [ mk_str "B: "; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 :=
        borrow
          b
          (std.collections.hash.set.HashSet
            i32
            std.collections.hash.map.RandomState) in
      let* α5 :=
        deref
          α4
          (std.collections.hash.set.HashSet
            i32
            std.collections.hash.map.RandomState) in
      let* α6 :=
        borrow
          α5
          (std.collections.hash.set.HashSet
            i32
            std.collections.hash.map.RandomState) in
      let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
      let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
      let* α9 := deref α8 (list core.fmt.rt.Argument) in
      let* α10 := borrow α9 (list core.fmt.rt.Argument) in
      let* α11 := pointer_coercion "Unsize" α10 in
      let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
      std.io.stdio._print α12 in
    M.alloc tt in
  let* _ :=
    let* _ :=
      let* α0 := borrow [ mk_str "Union: "; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 :=
        borrow
          a
          (std.collections.hash.set.HashSet
            i32
            std.collections.hash.map.RandomState) in
      let* α5 :=
        borrow
          b
          (std.collections.hash.set.HashSet
            i32
            std.collections.hash.map.RandomState) in
      let* α6 :=
        deref
          α5
          (std.collections.hash.set.HashSet
            i32
            std.collections.hash.map.RandomState) in
      let* α7 :=
        borrow
          α6
          (std.collections.hash.set.HashSet
            i32
            std.collections.hash.map.RandomState) in
      let* α8 := (std.collections.hash.set.HashSet _ _)::["union"] α4 α7 in
      let* α9 := core.iter.traits.iterator.Iterator.collect α8 in
      let* α10 := borrow α9 (alloc.vec.Vec (ref i32) alloc.alloc.Global) in
      let* α11 := deref α10 (alloc.vec.Vec (ref i32) alloc.alloc.Global) in
      let* α12 := borrow α11 (alloc.vec.Vec (ref i32) alloc.alloc.Global) in
      let* α13 := core.fmt.rt.Argument::["new_debug"] α12 in
      let* α14 := borrow [ α13 ] (list core.fmt.rt.Argument) in
      let* α15 := deref α14 (list core.fmt.rt.Argument) in
      let* α16 := borrow α15 (list core.fmt.rt.Argument) in
      let* α17 := pointer_coercion "Unsize" α16 in
      let* α18 := core.fmt.Arguments::["new_v1"] α3 α17 in
      std.io.stdio._print α18 in
    M.alloc tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow [ mk_str "Difference: "; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 :=
        borrow
          a
          (std.collections.hash.set.HashSet
            i32
            std.collections.hash.map.RandomState) in
      let* α5 :=
        borrow
          b
          (std.collections.hash.set.HashSet
            i32
            std.collections.hash.map.RandomState) in
      let* α6 :=
        deref
          α5
          (std.collections.hash.set.HashSet
            i32
            std.collections.hash.map.RandomState) in
      let* α7 :=
        borrow
          α6
          (std.collections.hash.set.HashSet
            i32
            std.collections.hash.map.RandomState) in
      let* α8 := (std.collections.hash.set.HashSet _ _)::["difference"] α4 α7 in
      let* α9 := core.iter.traits.iterator.Iterator.collect α8 in
      let* α10 := borrow α9 (alloc.vec.Vec (ref i32) alloc.alloc.Global) in
      let* α11 := deref α10 (alloc.vec.Vec (ref i32) alloc.alloc.Global) in
      let* α12 := borrow α11 (alloc.vec.Vec (ref i32) alloc.alloc.Global) in
      let* α13 := core.fmt.rt.Argument::["new_debug"] α12 in
      let* α14 := borrow [ α13 ] (list core.fmt.rt.Argument) in
      let* α15 := deref α14 (list core.fmt.rt.Argument) in
      let* α16 := borrow α15 (list core.fmt.rt.Argument) in
      let* α17 := pointer_coercion "Unsize" α16 in
      let* α18 := core.fmt.Arguments::["new_v1"] α3 α17 in
      std.io.stdio._print α18 in
    M.alloc tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow [ mk_str "Intersection: "; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 :=
        borrow
          a
          (std.collections.hash.set.HashSet
            i32
            std.collections.hash.map.RandomState) in
      let* α5 :=
        borrow
          b
          (std.collections.hash.set.HashSet
            i32
            std.collections.hash.map.RandomState) in
      let* α6 :=
        deref
          α5
          (std.collections.hash.set.HashSet
            i32
            std.collections.hash.map.RandomState) in
      let* α7 :=
        borrow
          α6
          (std.collections.hash.set.HashSet
            i32
            std.collections.hash.map.RandomState) in
      let* α8 :=
        (std.collections.hash.set.HashSet _ _)::["intersection"] α4 α7 in
      let* α9 := core.iter.traits.iterator.Iterator.collect α8 in
      let* α10 := borrow α9 (alloc.vec.Vec (ref i32) alloc.alloc.Global) in
      let* α11 := deref α10 (alloc.vec.Vec (ref i32) alloc.alloc.Global) in
      let* α12 := borrow α11 (alloc.vec.Vec (ref i32) alloc.alloc.Global) in
      let* α13 := core.fmt.rt.Argument::["new_debug"] α12 in
      let* α14 := borrow [ α13 ] (list core.fmt.rt.Argument) in
      let* α15 := deref α14 (list core.fmt.rt.Argument) in
      let* α16 := borrow α15 (list core.fmt.rt.Argument) in
      let* α17 := pointer_coercion "Unsize" α16 in
      let* α18 := core.fmt.Arguments::["new_v1"] α3 α17 in
      std.io.stdio._print α18 in
    M.alloc tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow
          [ mk_str "Symmetric Difference: "; mk_str "
" ]
          (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 :=
        borrow
          a
          (std.collections.hash.set.HashSet
            i32
            std.collections.hash.map.RandomState) in
      let* α5 :=
        borrow
          b
          (std.collections.hash.set.HashSet
            i32
            std.collections.hash.map.RandomState) in
      let* α6 :=
        deref
          α5
          (std.collections.hash.set.HashSet
            i32
            std.collections.hash.map.RandomState) in
      let* α7 :=
        borrow
          α6
          (std.collections.hash.set.HashSet
            i32
            std.collections.hash.map.RandomState) in
      let* α8 :=
        (std.collections.hash.set.HashSet _ _)::["symmetric_difference"]
          α4
          α7 in
      let* α9 := core.iter.traits.iterator.Iterator.collect α8 in
      let* α10 := borrow α9 (alloc.vec.Vec (ref i32) alloc.alloc.Global) in
      let* α11 := deref α10 (alloc.vec.Vec (ref i32) alloc.alloc.Global) in
      let* α12 := borrow α11 (alloc.vec.Vec (ref i32) alloc.alloc.Global) in
      let* α13 := core.fmt.rt.Argument::["new_debug"] α12 in
      let* α14 := borrow [ α13 ] (list core.fmt.rt.Argument) in
      let* α15 := deref α14 (list core.fmt.rt.Argument) in
      let* α16 := borrow α15 (list core.fmt.rt.Argument) in
      let* α17 := pointer_coercion "Unsize" α16 in
      let* α18 := core.fmt.Arguments::["new_v1"] α3 α17 in
      std.io.stdio._print α18 in
    M.alloc tt in
  M.alloc tt.
