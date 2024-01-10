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
  let* vec1 : M.Val (alloc.vec.Vec.t i32.t alloc.alloc.Global.t) :=
    let* α0 : M.Val (array i32.t) :=
      M.alloc [ Integer.of_Z 1; Integer.of_Z 2; Integer.of_Z 3 ] in
    let* α1 : M.Val (alloc.boxed.Box.t (array i32.t) alloc.alloc.Global.t) :=
      M.call ((alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α0) in
    let* α2 : alloc.boxed.Box.t (slice i32.t) alloc.alloc.Global.t :=
      M.read (pointer_coercion "Unsize" α1) in
    let* α3 : alloc.vec.Vec.t i32.t alloc.alloc.Global.t :=
      M.call ((slice i32.t)::["into_vec"] α2) in
    M.alloc α3 in
  let* vec2 : M.Val (alloc.vec.Vec.t i32.t alloc.alloc.Global.t) :=
    let* α0 : M.Val (array i32.t) :=
      M.alloc [ Integer.of_Z 4; Integer.of_Z 5; Integer.of_Z 6 ] in
    let* α1 : M.Val (alloc.boxed.Box.t (array i32.t) alloc.alloc.Global.t) :=
      M.call ((alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α0) in
    let* α2 : alloc.boxed.Box.t (slice i32.t) alloc.alloc.Global.t :=
      M.read (pointer_coercion "Unsize" α1) in
    let* α3 : alloc.vec.Vec.t i32.t alloc.alloc.Global.t :=
      M.call ((slice i32.t)::["into_vec"] α2) in
    M.alloc α3 in
  let* iter : M.Val (core.slice.iter.Iter.t i32.t) :=
    let* α0 : _ :=
      ltac:(M.get_method (fun ℐ =>
        core.ops.deref.Deref.deref
          (Self := alloc.vec.Vec.t i32.t alloc.alloc.Global.t)
          (Trait := ℐ))) in
    let* α1 : ref (slice i32.t) := M.call (α0 (borrow vec1)) in
    let* α2 : core.slice.iter.Iter.t i32.t :=
      M.call ((slice i32.t)::["iter"] α1) in
    M.alloc α2 in
  let* into_iter :
      M.Val (alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t) :=
    let* α0 : _ :=
      ltac:(M.get_method (fun ℐ =>
        core.iter.traits.collect.IntoIterator.into_iter
          (Self := alloc.vec.Vec.t i32.t alloc.alloc.Global.t)
          (Trait := ℐ))) in
    let* α1 : alloc.vec.Vec.t i32.t alloc.alloc.Global.t := M.read vec2 in
    let* α2 : alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t :=
      M.call (α0 α1) in
    M.alloc α2 in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "Find 2 in vec1: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : _ :=
        ltac:(M.get_method (fun ℐ =>
          core.iter.traits.iterator.Iterator.find
            (Self := core.slice.iter.Iter.t i32.t)
            (P := (ref (ref i32.t)) -> M bool.t)
            (Trait := ℐ))) in
      let* α6 : core.option.Option.t (ref i32.t) :=
        M.call
          (α5
            (borrow_mut iter)
            (fun (α0 : ref (ref i32.t)) =>
              (let* α0 := M.alloc α0 in
              match_operator
                α0
                [
                  fun γ =>
                    (let* γ :=
                      let* α0 := M.read γ in
                      M.pure (deref α0) in
                    let* γ :=
                      let* α0 := M.read γ in
                      M.pure (deref α0) in
                    let* x := M.copy γ in
                    let* α0 : i32.t := M.read x in
                    M.pure (BinOp.Pure.eq α0 (Integer.of_Z 2))) :
                    M bool.t
                ]) :
              M bool.t)) in
      let* α7 : M.Val (core.option.Option.t (ref i32.t)) := M.alloc α6 in
      let* α8 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow α7)) in
      let* α9 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α8 ] in
      let* α10 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α9) in
      let* α11 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α10) in
      let* α12 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α4 α11) in
      let* α13 : unit := M.call (std.io.stdio._print α12) in
      M.alloc α13 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "Find 2 in vec2: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : _ :=
        ltac:(M.get_method (fun ℐ =>
          core.iter.traits.iterator.Iterator.find
            (Self := alloc.vec.into_iter.IntoIter.t i32.t alloc.alloc.Global.t)
            (P := (ref i32.t) -> M bool.t)
            (Trait := ℐ))) in
      let* α6 : core.option.Option.t i32.t :=
        M.call
          (α5
            (borrow_mut into_iter)
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
                    M.pure (BinOp.Pure.eq α0 (Integer.of_Z 2))) :
                    M bool.t
                ]) :
              M bool.t)) in
      let* α7 : M.Val (core.option.Option.t i32.t) := M.alloc α6 in
      let* α8 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow α7)) in
      let* α9 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α8 ] in
      let* α10 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α9) in
      let* α11 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α10) in
      let* α12 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α4 α11) in
      let* α13 : unit := M.call (std.io.stdio._print α12) in
      M.alloc α13 in
    M.alloc tt in
  let* array1 : M.Val (array i32.t) :=
    M.alloc [ Integer.of_Z 1; Integer.of_Z 2; Integer.of_Z 3 ] in
  let* array2 : M.Val (array i32.t) :=
    M.alloc [ Integer.of_Z 4; Integer.of_Z 5; Integer.of_Z 6 ] in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "Find 2 in array1: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : _ :=
        ltac:(M.get_method (fun ℐ =>
          core.iter.traits.iterator.Iterator.find
            (Self := core.slice.iter.Iter.t i32.t)
            (P := (ref (ref i32.t)) -> M bool.t)
            (Trait := ℐ))) in
      let* α6 : M.Val (ref (array i32.t)) := M.alloc (borrow array1) in
      let* α7 : ref (slice i32.t) := M.read (pointer_coercion "Unsize" α6) in
      let* α8 : core.slice.iter.Iter.t i32.t :=
        M.call ((slice i32.t)::["iter"] α7) in
      let* α9 : M.Val (core.slice.iter.Iter.t i32.t) := M.alloc α8 in
      let* α10 : core.option.Option.t (ref i32.t) :=
        M.call
          (α5
            (borrow_mut α9)
            (fun (α0 : ref (ref i32.t)) =>
              (let* α0 := M.alloc α0 in
              match_operator
                α0
                [
                  fun γ =>
                    (let* γ :=
                      let* α0 := M.read γ in
                      M.pure (deref α0) in
                    let* γ :=
                      let* α0 := M.read γ in
                      M.pure (deref α0) in
                    let* x := M.copy γ in
                    let* α0 : i32.t := M.read x in
                    M.pure (BinOp.Pure.eq α0 (Integer.of_Z 2))) :
                    M bool.t
                ]) :
              M bool.t)) in
      let* α11 : M.Val (core.option.Option.t (ref i32.t)) := M.alloc α10 in
      let* α12 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow α11)) in
      let* α13 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α12 ] in
      let* α14 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α13) in
      let* α15 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α14) in
      let* α16 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α4 α15) in
      let* α17 : unit := M.call (std.io.stdio._print α16) in
      M.alloc α17 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "Find 2 in array2: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : _ :=
        ltac:(M.get_method (fun ℐ =>
          core.iter.traits.iterator.Iterator.find
            (Self := core.slice.iter.Iter.t i32.t)
            (P := (ref (ref i32.t)) -> M bool.t)
            (Trait := ℐ))) in
      let* α6 : _ :=
        ltac:(M.get_method (fun ℐ =>
          core.iter.traits.collect.IntoIterator.into_iter
            (Self := ref (array i32.t))
            (Trait := ℐ))) in
      let* α7 : core.slice.iter.Iter.t i32.t := M.call (α6 (borrow array2)) in
      let* α8 : M.Val (core.slice.iter.Iter.t i32.t) := M.alloc α7 in
      let* α9 : core.option.Option.t (ref i32.t) :=
        M.call
          (α5
            (borrow_mut α8)
            (fun (α0 : ref (ref i32.t)) =>
              (let* α0 := M.alloc α0 in
              match_operator
                α0
                [
                  fun γ =>
                    (let* γ :=
                      let* α0 := M.read γ in
                      M.pure (deref α0) in
                    let* x := M.copy γ in
                    let* α0 : ref i32.t := M.read x in
                    let* α1 : i32.t := M.read (deref α0) in
                    M.pure (BinOp.Pure.eq α1 (Integer.of_Z 2))) :
                    M bool.t
                ]) :
              M bool.t)) in
      let* α10 : M.Val (core.option.Option.t (ref i32.t)) := M.alloc α9 in
      let* α11 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow α10)) in
      let* α12 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α11 ] in
      let* α13 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α12) in
      let* α14 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α13) in
      let* α15 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α4 α14) in
      let* α16 : unit := M.call (std.io.stdio._print α15) in
      M.alloc α16 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
