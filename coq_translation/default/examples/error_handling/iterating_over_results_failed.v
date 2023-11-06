(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* strings :
        ltac:(refine (alloc.vec.Vec (ref str) alloc.alloc.Global)) :=
      let* α0 : ltac:(refine str) := deref (mk_str "93") in
      let* α1 : ltac:(refine (ref str)) := borrow α0 in
      let* α2 : ltac:(refine str) := deref (mk_str "18") in
      let* α3 : ltac:(refine (ref str)) := borrow α2 in
      let* α4 : ltac:(refine (array (ref str))) :=
        M.alloc [ mk_str "tofu"; α1; α3 ] in
      let* α5 :
          ltac:(refine
            (alloc.boxed.Box (array (ref str)) alloc.alloc.Global)) :=
        (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α4 in
      let* α6 :
          ltac:(refine
            (alloc.boxed.Box (slice (ref str)) alloc.alloc.Global)) :=
        pointer_coercion "Unsize" α5 in
      (slice (ref str))::["into_vec"] α6 in
    let* numbers :
        ltac:(refine
          (alloc.vec.Vec
            (core.result.Result i32 core.num.error.ParseIntError)
            alloc.alloc.Global)) :=
      let* α0 :
          ltac:(refine
            (alloc.vec.into_iter.IntoIter (ref str) alloc.alloc.Global)) :=
        (core.iter.traits.collect.IntoIterator.into_iter
            (Self := alloc.vec.Vec (ref str) alloc.alloc.Global)
            (Trait := ltac:(refine _)))
          strings in
      let* α1 :
          ltac:(refine
            (core.iter.adapters.map.Map
              (alloc.vec.into_iter.IntoIter (ref str) alloc.alloc.Global)
              type not implemented)) :=
        (core.iter.traits.iterator.Iterator.map
            (Self := alloc.vec.into_iter.IntoIter (ref str) alloc.alloc.Global)
            (Trait := ltac:(refine _)))
          α0
          (let* α0 : ltac:(refine str) := deref s in
          let* α1 : ltac:(refine (ref str)) := borrow α0 in
          str::["parse"] α1) in
      (core.iter.traits.iterator.Iterator.collect
          (Self :=
            core.iter.adapters.map.Map
              (alloc.vec.into_iter.IntoIter (ref str) alloc.alloc.Global)
              type not implemented)
          (Trait := ltac:(refine _)))
        α1 in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "Results: "; mk_str "
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 :
            ltac:(refine
              (ref
                (alloc.vec.Vec
                  (core.result.Result i32 core.num.error.ParseIntError)
                  alloc.alloc.Global))) :=
          borrow numbers in
        let* α6 :
            ltac:(refine
              (alloc.vec.Vec
                (core.result.Result i32 core.num.error.ParseIntError)
                alloc.alloc.Global)) :=
          deref α5 in
        let* α7 :
            ltac:(refine
              (ref
                (alloc.vec.Vec
                  (core.result.Result i32 core.num.error.ParseIntError)
                  alloc.alloc.Global))) :=
          borrow α6 in
        let* α8 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_debug"] α7 in
        let* α9 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α8 ] in
        let* α10 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α9 in
        let* α11 : ltac:(refine (array core.fmt.rt.Argument)) := deref α10 in
        let* α12 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α11 in
        let* α13 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α12 in
        let* α14 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α4 α13 in
        std.io.stdio._print α14 in
      M.alloc tt in
    M.alloc tt).
