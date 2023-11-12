(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    let vec1 = vec![1, 2, 3];
    let vec2 = vec![4, 5, 6];

    // `iter()` for vecs yields `&i32`. Destructure to `i32`.
    println!("2 in vec1: {}", vec1.iter().any(|&x| x == 2));
    // `into_iter()` for vecs yields `i32`. No destructuring required.
    println!("2 in vec2: {}", vec2.into_iter().any(|x| x == 2));

    // `iter()` only borrows `vec1` and its elements, so they can be used again
    println!("vec1 len: {}", vec1.len());
    println!("First element of vec1 is: {}", vec1[0]);
    // `into_iter()` does move `vec2` and its elements, so they cannot be used again
    // println!("First element of vec2 is: {}", vec2[0]);
    // println!("vec2 len: {}", vec2.len());
    // TODO: uncomment two lines above and see compiler errors.

    let array1 = [1, 2, 3];
    let array2 = [4, 5, 6];

    // `iter()` for arrays yields `&i32`.
    println!("2 in array1: {}", array1.iter().any(|&x| x == 2));
    // `into_iter()` for arrays yields `i32`.
    println!("2 in array2: {}", array2.into_iter().any(|x| *x == 2));
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M (M.Val unit) :=
  M.function_body
    (let* vec1 :
        ltac:(refine (M.Val (alloc.vec.Vec.t i32.t alloc.alloc.Global.t))) :=
      let* α0 : ltac:(refine (M.Val i32.t)) := M.alloc 1 in
      let* α1 : ltac:(refine (M.Val i32.t)) := M.alloc 2 in
      let* α2 : ltac:(refine (M.Val i32.t)) := M.alloc 3 in
      let* α3 : ltac:(refine (M.Val (array i32.t))) := M.alloc [ α0; α1; α2 ] in
      let* α4 :
          ltac:(refine
            (M.Val (alloc.boxed.Box.t (array i32.t) alloc.alloc.Global.t))) :=
        (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α3 in
      let* α5 :
          ltac:(refine
            (M.Val (alloc.boxed.Box.t (slice i32.t) alloc.alloc.Global.t))) :=
        pointer_coercion "Unsize" α4 in
      (slice i32.t)::["into_vec"] α5 in
    let* vec2 :
        ltac:(refine (M.Val (alloc.vec.Vec.t i32.t alloc.alloc.Global.t))) :=
      let* α0 : ltac:(refine (M.Val i32.t)) := M.alloc 4 in
      let* α1 : ltac:(refine (M.Val i32.t)) := M.alloc 5 in
      let* α2 : ltac:(refine (M.Val i32.t)) := M.alloc 6 in
      let* α3 : ltac:(refine (M.Val (array i32.t))) := M.alloc [ α0; α1; α2 ] in
      let* α4 :
          ltac:(refine
            (M.Val (alloc.boxed.Box.t (array i32.t) alloc.alloc.Global.t))) :=
        (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α3 in
      let* α5 :
          ltac:(refine
            (M.Val (alloc.boxed.Box.t (slice i32.t) alloc.alloc.Global.t))) :=
        pointer_coercion "Unsize" α4 in
      (slice i32.t)::["into_vec"] α5 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc [ mk_str "2 in vec1: "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 :
            ltac:(refine
              (M.Val (ref (alloc.vec.Vec.t i32.t alloc.alloc.Global.t)))) :=
          borrow vec1 in
        let* α4 : ltac:(refine (M.Val (ref (slice i32.t)))) :=
          (core.ops.deref.Deref.deref
              (Self := alloc.vec.Vec.t i32.t alloc.alloc.Global.t)
              (Trait := ltac:(refine _)))
            α3 in
        let* α5 : ltac:(refine (M.Val (slice i32.t))) := deref α4 in
        let* α6 : ltac:(refine (M.Val (ref (slice i32.t)))) := borrow α5 in
        let* α7 : ltac:(refine (M.Val (core.slice.iter.Iter.t i32.t))) :=
          (slice i32.t)::["iter"] α6 in
        let* α8 :
            ltac:(refine (M.Val (mut_ref (core.slice.iter.Iter.t i32.t)))) :=
          borrow_mut α7 in
        let* α9 : ltac:(refine (M.Val bool.t)) :=
          (core.iter.traits.iterator.Iterator.any
              (Self := core.slice.iter.Iter.t i32.t)
              (Trait := ltac:(refine _)))
            α8
            (let* α0 : ltac:(refine (M.Val i32.t)) := M.alloc 2 in
            BinOp.eq x α0) in
        let* α10 : ltac:(refine (M.Val (ref bool.t))) := borrow α9 in
        let* α11 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α10 in
        let* α12 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α11 ] in
        let* α13 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α12 in
        let* α14 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α13 in
        let* α15 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α14 in
        std.io.stdio._print α15 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc [ mk_str "2 in vec2: "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 :
            ltac:(refine
              (M.Val
                (alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t))) :=
          (core.iter.traits.collect.IntoIterator.into_iter
              (Self := alloc.vec.Vec.t i32.t alloc.alloc.Global.t)
              (Trait := ltac:(refine _)))
            vec2 in
        let* α4 :
            ltac:(refine
              (M.Val
                (mut_ref
                  (alloc.vec.into_iter.IntoIter.t
                    i32.t
                    alloc.alloc.Global.t)))) :=
          borrow_mut α3 in
        let* α5 : ltac:(refine (M.Val bool.t)) :=
          (core.iter.traits.iterator.Iterator.any
              (Self :=
                alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t)
              (Trait := ltac:(refine _)))
            α4
            (let* α0 : ltac:(refine (M.Val i32.t)) := M.alloc 2 in
            BinOp.eq x α0) in
        let* α6 : ltac:(refine (M.Val (ref bool.t))) := borrow α5 in
        let* α7 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α6 in
        let* α8 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α7 ] in
        let* α9 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α8 in
        let* α10 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α9 in
        let* α11 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α10 in
        std.io.stdio._print α11 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc [ mk_str "vec1 len: "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 :
            ltac:(refine
              (M.Val (ref (alloc.vec.Vec.t i32.t alloc.alloc.Global.t)))) :=
          borrow vec1 in
        let* α4 : ltac:(refine (M.Val usize.t)) :=
          (alloc.vec.Vec.t i32.t alloc.alloc.Global.t)::["len"] α3 in
        let* α5 : ltac:(refine (M.Val (ref usize.t))) := borrow α4 in
        let* α6 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α5 in
        let* α7 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α6 ] in
        let* α8 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α7 in
        let* α9 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α8 in
        let* α10 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α9 in
        std.io.stdio._print α10 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc [ mk_str "First element of vec1 is: "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 :
            ltac:(refine
              (M.Val (ref (alloc.vec.Vec.t i32.t alloc.alloc.Global.t)))) :=
          borrow vec1 in
        let* α4 : ltac:(refine (M.Val usize.t)) := M.alloc 0 in
        let* α5 : ltac:(refine (M.Val (ref i32.t))) :=
          (core.ops.index.Index.index
              (Self := alloc.vec.Vec.t i32.t alloc.alloc.Global.t)
              (Trait := ltac:(refine _)))
            α3
            α4 in
        let* α6 : ltac:(refine (M.Val i32.t)) := deref α5 in
        let* α7 : ltac:(refine (M.Val (ref i32.t))) := borrow α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α7 in
        let* α9 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α8 ] in
        let* α10 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α9 in
        let* α11 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α10 in
        let* α12 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α11 in
        std.io.stdio._print α12 in
      M.alloc tt in
    let* array1 : ltac:(refine (M.Val (array i32.t))) :=
      let* α0 : ltac:(refine (M.Val i32.t)) := M.alloc 1 in
      let* α1 : ltac:(refine (M.Val i32.t)) := M.alloc 2 in
      let* α2 : ltac:(refine (M.Val i32.t)) := M.alloc 3 in
      M.alloc [ α0; α1; α2 ] in
    let* array2 : ltac:(refine (M.Val (array i32.t))) :=
      let* α0 : ltac:(refine (M.Val i32.t)) := M.alloc 4 in
      let* α1 : ltac:(refine (M.Val i32.t)) := M.alloc 5 in
      let* α2 : ltac:(refine (M.Val i32.t)) := M.alloc 6 in
      M.alloc [ α0; α1; α2 ] in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc [ mk_str "2 in array1: "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref (array i32.t)))) := borrow array1 in
        let* α4 : ltac:(refine (M.Val (ref (slice i32.t)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine (M.Val (core.slice.iter.Iter.t i32.t))) :=
          (slice i32.t)::["iter"] α4 in
        let* α6 :
            ltac:(refine (M.Val (mut_ref (core.slice.iter.Iter.t i32.t)))) :=
          borrow_mut α5 in
        let* α7 : ltac:(refine (M.Val bool.t)) :=
          (core.iter.traits.iterator.Iterator.any
              (Self := core.slice.iter.Iter.t i32.t)
              (Trait := ltac:(refine _)))
            α6
            (let* α0 : ltac:(refine (M.Val i32.t)) := M.alloc 2 in
            BinOp.eq x α0) in
        let* α8 : ltac:(refine (M.Val (ref bool.t))) := borrow α7 in
        let* α9 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α8 in
        let* α10 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α9 ] in
        let* α11 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α10 in
        let* α12 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α11 in
        let* α13 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α12 in
        std.io.stdio._print α13 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc [ mk_str "2 in array2: "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref (array i32.t)))) := borrow array2 in
        let* α4 : ltac:(refine (M.Val (core.slice.iter.Iter.t i32.t))) :=
          (core.iter.traits.collect.IntoIterator.into_iter
              (Self := ref (array i32.t))
              (Trait := ltac:(refine _)))
            α3 in
        let* α5 :
            ltac:(refine (M.Val (mut_ref (core.slice.iter.Iter.t i32.t)))) :=
          borrow_mut α4 in
        let* α6 : ltac:(refine (M.Val bool.t)) :=
          (core.iter.traits.iterator.Iterator.any
              (Self := core.slice.iter.Iter.t i32.t)
              (Trait := ltac:(refine _)))
            α5
            (let* α0 : ltac:(refine (M.Val i32.t)) := deref x in
            let* α1 : ltac:(refine (M.Val i32.t)) := M.alloc 2 in
            BinOp.eq α0 α1) in
        let* α7 : ltac:(refine (M.Val (ref bool.t))) := borrow α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α7 in
        let* α9 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α8 ] in
        let* α10 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α9 in
        let* α11 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α10 in
        let* α12 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α11 in
        std.io.stdio._print α12 in
      M.alloc tt in
    M.alloc tt).
