(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  let* strings :=
    let* α0 := deref (mk_str "93") str in
    let* α1 := borrow α0 str in
    let* α2 := deref (mk_str "18") str in
    let* α3 := borrow α2 str in
    let* α4 :=
      (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"]
        [ mk_str "tofu"; α1; α3 ] in
    let* α5 := pointer_coercion "Unsize" α4 in
    (Slice (ref str))::["into_vec"] α5 in
  let* '(numbers, errors) :=
    let* α0 :=
      (core.iter.traits.collect.IntoIterator.into_iter
          (Self := alloc.vec.Vec (ref str) alloc.alloc.Global)
          (Trait := ltac:(refine _)))
        strings in
    let* α1 :=
      (core.iter.traits.iterator.Iterator.map
          (Self := alloc.vec.into_iter.IntoIter (ref str) alloc.alloc.Global)
          (Trait := ltac:(refine _)))
        α0
        (let* α0 := deref s str in
        let* α1 := borrow α0 str in
        str::["parse"] α1) in
    (core.iter.traits.iterator.Iterator.partition
        (Self :=
          core.iter.adapters.map.Map
            (alloc.vec.into_iter.IntoIter (ref str) alloc.alloc.Global)
            type not implemented)
        (Trait := ltac:(refine _)))
      α1
      (core.result.Result i32 core.num.error.ParseIntError)::["is_ok"] in
  let* numbers :=
    let* α0 :=
      (core.iter.traits.collect.IntoIterator.into_iter
          (Self :=
            alloc.vec.Vec
              (core.result.Result i32 core.num.error.ParseIntError)
              alloc.alloc.Global)
          (Trait := ltac:(refine _)))
        numbers in
    let* α1 :=
      (core.iter.traits.iterator.Iterator.map
          (Self :=
            alloc.vec.into_iter.IntoIter
              (core.result.Result i32 core.num.error.ParseIntError)
              alloc.alloc.Global)
          (Trait := ltac:(refine _)))
        α0
        (core.result.Result i32 core.num.error.ParseIntError)::["unwrap"] in
    (core.iter.traits.iterator.Iterator.collect
        (Self :=
          core.iter.adapters.map.Map
            (alloc.vec.into_iter.IntoIter
              (core.result.Result i32 core.num.error.ParseIntError)
              alloc.alloc.Global)
            type not implemented)
        (Trait := ltac:(refine _)))
      α1 in
  let* errors :=
    let* α0 :=
      (core.iter.traits.collect.IntoIterator.into_iter
          (Self :=
            alloc.vec.Vec
              (core.result.Result i32 core.num.error.ParseIntError)
              alloc.alloc.Global)
          (Trait := ltac:(refine _)))
        errors in
    let* α1 :=
      (core.iter.traits.iterator.Iterator.map
          (Self :=
            alloc.vec.into_iter.IntoIter
              (core.result.Result i32 core.num.error.ParseIntError)
              alloc.alloc.Global)
          (Trait := ltac:(refine _)))
        α0
        (core.result.Result i32 core.num.error.ParseIntError)::["unwrap_err"] in
    (core.iter.traits.iterator.Iterator.collect
        (Self :=
          core.iter.adapters.map.Map
            (alloc.vec.into_iter.IntoIter
              (core.result.Result i32 core.num.error.ParseIntError)
              alloc.alloc.Global)
            type not implemented)
        (Trait := ltac:(refine _)))
      α1 in
  let* _ :=
    let* _ :=
      let* α0 := borrow [ mk_str "Numbers: "; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := borrow numbers (alloc.vec.Vec i32 alloc.alloc.Global) in
      let* α5 := deref α4 (alloc.vec.Vec i32 alloc.alloc.Global) in
      let* α6 := borrow α5 (alloc.vec.Vec i32 alloc.alloc.Global) in
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
      let* α0 := borrow [ mk_str "Errors: "; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 :=
        borrow
          errors
          (alloc.vec.Vec core.num.error.ParseIntError alloc.alloc.Global) in
      let* α5 :=
        deref
          α4
          (alloc.vec.Vec core.num.error.ParseIntError alloc.alloc.Global) in
      let* α6 :=
        borrow
          α5
          (alloc.vec.Vec core.num.error.ParseIntError alloc.alloc.Global) in
      let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
      let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
      let* α9 := deref α8 (list core.fmt.rt.Argument) in
      let* α10 := borrow α9 (list core.fmt.rt.Argument) in
      let* α11 := pointer_coercion "Unsize" α10 in
      let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
      std.io.stdio._print α12 in
    M.alloc tt in
  M.alloc tt.
