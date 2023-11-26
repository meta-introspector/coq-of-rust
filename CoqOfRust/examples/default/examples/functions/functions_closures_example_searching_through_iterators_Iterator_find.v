(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    let vec1 = vec![1, 2, 3];
    let vec2 = vec![4, 5, 6];

    // `iter()` for vecs yields `&i32`.
    let mut iter = vec1.iter();
    // `into_iter()` for vecs yields `i32`.
    let mut into_iter = vec2.into_iter();

    // `iter()` for vecs yields `&i32`, and we want to reference one of its
    // items, so we have to destructure `&&i32` to `i32`
    println!("Find 2 in vec1: {:?}", iter.find(|&&x| x == 2));
    // `into_iter()` for vecs yields `i32`, and we want to reference one of
    // its items, so we have to destructure `&i32` to `i32`
    println!("Find 2 in vec2: {:?}", into_iter.find(|&x| x == 2));

    let array1 = [1, 2, 3];
    let array2 = [4, 5, 6];

    // `iter()` for arrays yields `&i32`
    println!("Find 2 in array1: {:?}", array1.iter().find(|&&x| x == 2));
    // `into_iter()` for arrays yields `i32`
    println!(
        "Find 2 in array2: {:?}",
        array2.into_iter().find(|&x| *x == 2)
    );
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* vec1 : M.Val (alloc.vec.Vec.t i32.t alloc.alloc.Global.t) :=
      let* α0 : M.Val i32.t := M.alloc 1 in
      let* α1 : M.Val i32.t := M.alloc 2 in
      let* α2 : M.Val i32.t := M.alloc 3 in
      let* α3 : M.Val (array i32.t) := M.alloc [ α0; α1; α2 ] in
      let* α4 : M.Val (alloc.boxed.Box.t (array i32.t) alloc.alloc.Global.t) :=
        (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α3 in
      let* α5 : M.Val (alloc.boxed.Box.t (slice i32.t) alloc.alloc.Global.t) :=
        pointer_coercion "Unsize" α4 in
      let* α6 := M.read α5 in
      let* α7 := (slice i32.t)::["into_vec"] α6 in
      M.alloc α7 in
    let* vec2 : M.Val (alloc.vec.Vec.t i32.t alloc.alloc.Global.t) :=
      let* α0 : M.Val i32.t := M.alloc 4 in
      let* α1 : M.Val i32.t := M.alloc 5 in
      let* α2 : M.Val i32.t := M.alloc 6 in
      let* α3 : M.Val (array i32.t) := M.alloc [ α0; α1; α2 ] in
      let* α4 : M.Val (alloc.boxed.Box.t (array i32.t) alloc.alloc.Global.t) :=
        (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α3 in
      let* α5 : M.Val (alloc.boxed.Box.t (slice i32.t) alloc.alloc.Global.t) :=
        pointer_coercion "Unsize" α4 in
      let* α6 := M.read α5 in
      let* α7 := (slice i32.t)::["into_vec"] α6 in
      M.alloc α7 in
    let* iter : M.Val (core.slice.iter.Iter.t i32.t) :=
      let* α0 : M.Val (ref (alloc.vec.Vec.t i32.t alloc.alloc.Global.t)) :=
        borrow vec1 in
      let* α1 := M.read α0 in
      let* α2 :=
        (core.ops.deref.Deref.deref
            (Self := alloc.vec.Vec.t i32.t alloc.alloc.Global.t)
            (Trait := ltac:(refine _)))
          α1 in
      let* α3 : M.Val (ref (slice i32.t)) := M.alloc α2 in
      let* α4 : M.Val (slice i32.t) := deref α3 in
      let* α5 : M.Val (ref (slice i32.t)) := borrow α4 in
      let* α6 := M.read α5 in
      let* α7 := (slice i32.t)::["iter"] α6 in
      M.alloc α7 in
    let* into_iter :
        M.Val (alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t) :=
      let* α0 := M.read vec2 in
      let* α1 :=
        (core.iter.traits.collect.IntoIterator.into_iter
            (Self := alloc.vec.Vec.t i32.t alloc.alloc.Global.t)
            (Trait := ltac:(refine _)))
          α0 in
      M.alloc α1 in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Find 2 in vec1: "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := M.read α2 in
        let* α4 : M.Val (mut_ref (core.slice.iter.Iter.t i32.t)) :=
          borrow_mut iter in
        let* α5 := M.read α4 in
        let* α6 :=
          M.read
            (let* α0 : M.Val i32.t := M.alloc 2 in
            BinOp.eq x α0) in
        let* α7 :=
          (core.iter.traits.iterator.Iterator.find
              (Self := core.slice.iter.Iter.t i32.t)
              (Trait := ltac:(refine _)))
            α5
            α6 in
        let* α8 : M.Val (core.option.Option.t (ref i32.t)) := M.alloc α7 in
        let* α9 : M.Val (ref (core.option.Option.t (ref i32.t))) := borrow α8 in
        let* α10 := M.read α9 in
        let* α11 := core.fmt.rt.Argument.t::["new_debug"] α10 in
        let* α12 : M.Val core.fmt.rt.Argument.t := M.alloc α11 in
        let* α13 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α12 ] in
        let* α14 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α13 in
        let* α15 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α14 in
        let* α16 := M.read α15 in
        let* α17 := core.fmt.Arguments.t::["new_v1"] α3 α16 in
        let* α18 := std.io.stdio._print α17 in
        M.alloc α18 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Find 2 in vec2: "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := M.read α2 in
        let* α4 :
            M.Val
              (mut_ref
                (alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t)) :=
          borrow_mut into_iter in
        let* α5 := M.read α4 in
        let* α6 :=
          M.read
            (let* α0 : M.Val i32.t := M.alloc 2 in
            BinOp.eq x α0) in
        let* α7 :=
          (core.iter.traits.iterator.Iterator.find
              (Self :=
                alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t)
              (Trait := ltac:(refine _)))
            α5
            α6 in
        let* α8 : M.Val (core.option.Option.t i32.t) := M.alloc α7 in
        let* α9 : M.Val (ref (core.option.Option.t i32.t)) := borrow α8 in
        let* α10 := M.read α9 in
        let* α11 := core.fmt.rt.Argument.t::["new_debug"] α10 in
        let* α12 : M.Val core.fmt.rt.Argument.t := M.alloc α11 in
        let* α13 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α12 ] in
        let* α14 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α13 in
        let* α15 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α14 in
        let* α16 := M.read α15 in
        let* α17 := core.fmt.Arguments.t::["new_v1"] α3 α16 in
        let* α18 := std.io.stdio._print α17 in
        M.alloc α18 in
      M.alloc tt in
    let* array1 : M.Val (array i32.t) :=
      let* α0 : M.Val i32.t := M.alloc 1 in
      let* α1 : M.Val i32.t := M.alloc 2 in
      let* α2 : M.Val i32.t := M.alloc 3 in
      M.alloc [ α0; α1; α2 ] in
    let* array2 : M.Val (array i32.t) :=
      let* α0 : M.Val i32.t := M.alloc 4 in
      let* α1 : M.Val i32.t := M.alloc 5 in
      let* α2 : M.Val i32.t := M.alloc 6 in
      M.alloc [ α0; α1; α2 ] in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Find 2 in array1: "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := M.read α2 in
        let* α4 : M.Val (ref (array i32.t)) := borrow array1 in
        let* α5 : M.Val (ref (slice i32.t)) := pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 := (slice i32.t)::["iter"] α6 in
        let* α8 : M.Val (core.slice.iter.Iter.t i32.t) := M.alloc α7 in
        let* α9 : M.Val (mut_ref (core.slice.iter.Iter.t i32.t)) :=
          borrow_mut α8 in
        let* α10 := M.read α9 in
        let* α11 :=
          M.read
            (let* α0 : M.Val i32.t := M.alloc 2 in
            BinOp.eq x α0) in
        let* α12 :=
          (core.iter.traits.iterator.Iterator.find
              (Self := core.slice.iter.Iter.t i32.t)
              (Trait := ltac:(refine _)))
            α10
            α11 in
        let* α13 : M.Val (core.option.Option.t (ref i32.t)) := M.alloc α12 in
        let* α14 : M.Val (ref (core.option.Option.t (ref i32.t))) :=
          borrow α13 in
        let* α15 := M.read α14 in
        let* α16 := core.fmt.rt.Argument.t::["new_debug"] α15 in
        let* α17 : M.Val core.fmt.rt.Argument.t := M.alloc α16 in
        let* α18 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α17 ] in
        let* α19 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α18 in
        let* α20 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α19 in
        let* α21 := M.read α20 in
        let* α22 := core.fmt.Arguments.t::["new_v1"] α3 α21 in
        let* α23 := std.io.stdio._print α22 in
        M.alloc α23 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Find 2 in array2: "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := M.read α2 in
        let* α4 : M.Val (ref (array i32.t)) := borrow array2 in
        let* α5 := M.read α4 in
        let* α6 :=
          (core.iter.traits.collect.IntoIterator.into_iter
              (Self := ref (array i32.t))
              (Trait := ltac:(refine _)))
            α5 in
        let* α7 : M.Val (core.slice.iter.Iter.t i32.t) := M.alloc α6 in
        let* α8 : M.Val (mut_ref (core.slice.iter.Iter.t i32.t)) :=
          borrow_mut α7 in
        let* α9 := M.read α8 in
        let* α10 :=
          M.read
            (let* α0 : M.Val i32.t := deref x in
            let* α1 : M.Val i32.t := M.alloc 2 in
            BinOp.eq α0 α1) in
        let* α11 :=
          (core.iter.traits.iterator.Iterator.find
              (Self := core.slice.iter.Iter.t i32.t)
              (Trait := ltac:(refine _)))
            α9
            α10 in
        let* α12 : M.Val (core.option.Option.t (ref i32.t)) := M.alloc α11 in
        let* α13 : M.Val (ref (core.option.Option.t (ref i32.t))) :=
          borrow α12 in
        let* α14 := M.read α13 in
        let* α15 := core.fmt.rt.Argument.t::["new_debug"] α14 in
        let* α16 : M.Val core.fmt.rt.Argument.t := M.alloc α15 in
        let* α17 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α16 ] in
        let* α18 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α17 in
        let* α19 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α18 in
        let* α20 := M.read α19 in
        let* α21 := core.fmt.Arguments.t::["new_v1"] α3 α20 in
        let* α22 := std.io.stdio._print α21 in
        M.alloc α22 in
      M.alloc tt in
    M.alloc tt).
