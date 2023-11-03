(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* collected_iterator :=
      let* α0 := M.alloc 0 in
      let* α1 := M.alloc 10 in
      let* α2 :=
        M.alloc
          {| core.ops.range.Range.start := α0; core.ops.range.Range.end := α1;
          |} in
      (core.iter.traits.iterator.Iterator.collect
          (Self := core.ops.range.Range i32)
          (Trait := ltac:(refine _)))
        α2 in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow
            [ mk_str "Collected (0..10) into: "; mk_str "
" ]
            (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 :=
          borrow collected_iterator (alloc.vec.Vec i32 alloc.alloc.Global) in
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
    let* xs :=
      let* α0 := M.alloc 1 in
      let* α1 := M.alloc 2 in
      let* α2 := M.alloc 3 in
      let* α3 :=
        (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] [ α0; α1; α2 ] in
      let* α4 := pointer_coercion "Unsize" α3 in
      (Slice i32)::["into_vec"] α4 in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow [ mk_str "Initial vector: "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow xs (alloc.vec.Vec i32 alloc.alloc.Global) in
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
        let* α0 :=
          borrow [ mk_str "Push 4 into the vector
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := core.fmt.Arguments::["new_const"] α3 in
        std.io.stdio._print α4 in
      M.alloc tt in
    let* _ :=
      let* α0 := borrow_mut xs (alloc.vec.Vec i32 alloc.alloc.Global) in
      let* α1 := M.alloc 4 in
      (alloc.vec.Vec i32 alloc.alloc.Global)::["push"] α0 α1 in
    let* _ :=
      let* _ :=
        let* α0 := borrow [ mk_str "Vector: "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow xs (alloc.vec.Vec i32 alloc.alloc.Global) in
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
        let* α0 :=
          borrow [ mk_str "Vector length: "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow xs (alloc.vec.Vec i32 alloc.alloc.Global) in
        let* α5 := (alloc.vec.Vec i32 alloc.alloc.Global)::["len"] α4 in
        let* α6 := borrow α5 usize in
        let* α7 := deref α6 usize in
        let* α8 := borrow α7 usize in
        let* α9 := core.fmt.rt.Argument::["new_display"] α8 in
        let* α10 := borrow [ α9 ] (list core.fmt.rt.Argument) in
        let* α11 := deref α10 (list core.fmt.rt.Argument) in
        let* α12 := borrow α11 (list core.fmt.rt.Argument) in
        let* α13 := pointer_coercion "Unsize" α12 in
        let* α14 := core.fmt.Arguments::["new_v1"] α3 α13 in
        std.io.stdio._print α14 in
      M.alloc tt in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow [ mk_str "Second element: "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow xs (alloc.vec.Vec i32 alloc.alloc.Global) in
        let* α5 := M.alloc 1 in
        let* α6 :=
          (core.ops.index.Index.index
              (Self := alloc.vec.Vec i32 alloc.alloc.Global)
              (Trait := ltac:(refine _)))
            α4
            α5 in
        let* α7 := deref α6 i32 in
        let* α8 := borrow α7 i32 in
        let* α9 := deref α8 i32 in
        let* α10 := borrow α9 i32 in
        let* α11 := core.fmt.rt.Argument::["new_display"] α10 in
        let* α12 := borrow [ α11 ] (list core.fmt.rt.Argument) in
        let* α13 := deref α12 (list core.fmt.rt.Argument) in
        let* α14 := borrow α13 (list core.fmt.rt.Argument) in
        let* α15 := pointer_coercion "Unsize" α14 in
        let* α16 := core.fmt.Arguments::["new_v1"] α3 α15 in
        std.io.stdio._print α16 in
      M.alloc tt in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow [ mk_str "Pop last element: "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow_mut xs (alloc.vec.Vec i32 alloc.alloc.Global) in
        let* α5 := (alloc.vec.Vec i32 alloc.alloc.Global)::["pop"] α4 in
        let* α6 := borrow α5 (core.option.Option i32) in
        let* α7 := deref α6 (core.option.Option i32) in
        let* α8 := borrow α7 (core.option.Option i32) in
        let* α9 := core.fmt.rt.Argument::["new_debug"] α8 in
        let* α10 := borrow [ α9 ] (list core.fmt.rt.Argument) in
        let* α11 := deref α10 (list core.fmt.rt.Argument) in
        let* α12 := borrow α11 (list core.fmt.rt.Argument) in
        let* α13 := pointer_coercion "Unsize" α12 in
        let* α14 := core.fmt.Arguments::["new_v1"] α3 α13 in
        std.io.stdio._print α14 in
      M.alloc tt in
    let* _ :=
      let* _ :=
        let* α0 := borrow [ mk_str "Contents of xs:
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := core.fmt.Arguments::["new_const"] α3 in
        std.io.stdio._print α4 in
      M.alloc tt in
    let* _ :=
      let* α0 := borrow xs (alloc.vec.Vec i32 alloc.alloc.Global) in
      let* α1 :=
        (core.ops.deref.Deref.deref
            (Self := alloc.vec.Vec i32 alloc.alloc.Global)
            (Trait := ltac:(refine _)))
          α0 in
      let* α2 := deref α1 (Slice i32) in
      let* α3 := borrow α2 (Slice i32) in
      let* α4 := (Slice i32)::["iter"] α3 in
      let* α5 :=
        (core.iter.traits.collect.IntoIterator.into_iter
            (Self := core.slice.iter.Iter i32)
            (Trait := ltac:(refine _)))
          α4 in
      let* α6 :=
        match α5 with
        | iter =>
          loop
            (let* _ :=
              let* α0 := borrow_mut iter (core.slice.iter.Iter i32) in
              let* α1 := deref α0 (core.slice.iter.Iter i32) in
              let* α2 := borrow_mut α1 (core.slice.iter.Iter i32) in
              let* α3 :=
                (core.iter.traits.iterator.Iterator.next
                    (Self := core.slice.iter.Iter i32)
                    (Trait := ltac:(refine _)))
                  α2 in
              match α3 with
              | core.option.Option  =>
                let* α0 := Break in
                never_to_any α0
              | core.option.Option x =>
                let* _ :=
                  let* _ :=
                    let* α0 :=
                      borrow [ mk_str "> "; mk_str "
" ] (list (ref str)) in
                    let* α1 := deref α0 (list (ref str)) in
                    let* α2 := borrow α1 (list (ref str)) in
                    let* α3 := pointer_coercion "Unsize" α2 in
                    let* α4 := borrow x (ref i32) in
                    let* α5 := deref α4 (ref i32) in
                    let* α6 := borrow α5 (ref i32) in
                    let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
                    let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
                    let* α9 := deref α8 (list core.fmt.rt.Argument) in
                    let* α10 := borrow α9 (list core.fmt.rt.Argument) in
                    let* α11 := pointer_coercion "Unsize" α10 in
                    let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
                    std.io.stdio._print α12 in
                  M.alloc tt in
                M.alloc tt
              end in
            M.alloc tt)
        end in
      use α6 in
    let* _ :=
      let* α0 := borrow xs (alloc.vec.Vec i32 alloc.alloc.Global) in
      let* α1 :=
        (core.ops.deref.Deref.deref
            (Self := alloc.vec.Vec i32 alloc.alloc.Global)
            (Trait := ltac:(refine _)))
          α0 in
      let* α2 := deref α1 (Slice i32) in
      let* α3 := borrow α2 (Slice i32) in
      let* α4 := (Slice i32)::["iter"] α3 in
      let* α5 :=
        (core.iter.traits.iterator.Iterator.enumerate
            (Self := core.slice.iter.Iter i32)
            (Trait := ltac:(refine _)))
          α4 in
      let* α6 :=
        (core.iter.traits.collect.IntoIterator.into_iter
            (Self :=
              core.iter.adapters.enumerate.Enumerate (core.slice.iter.Iter i32))
            (Trait := ltac:(refine _)))
          α5 in
      let* α7 :=
        match α6 with
        | iter =>
          loop
            (let* _ :=
              let* α0 :=
                borrow_mut
                  iter
                  (core.iter.adapters.enumerate.Enumerate
                    (core.slice.iter.Iter i32)) in
              let* α1 :=
                deref
                  α0
                  (core.iter.adapters.enumerate.Enumerate
                    (core.slice.iter.Iter i32)) in
              let* α2 :=
                borrow_mut
                  α1
                  (core.iter.adapters.enumerate.Enumerate
                    (core.slice.iter.Iter i32)) in
              let* α3 :=
                (core.iter.traits.iterator.Iterator.next
                    (Self :=
                      core.iter.adapters.enumerate.Enumerate
                        (core.slice.iter.Iter i32))
                    (Trait := ltac:(refine _)))
                  α2 in
              match α3 with
              | core.option.Option  =>
                let* α0 := Break in
                never_to_any α0
              | core.option.Option (i, x) =>
                let* _ :=
                  let* _ :=
                    let* α0 :=
                      borrow
                        [
                          mk_str "In position ";
                          mk_str " we have value ";
                          mk_str "
"
                        ]
                        (list (ref str)) in
                    let* α1 := deref α0 (list (ref str)) in
                    let* α2 := borrow α1 (list (ref str)) in
                    let* α3 := pointer_coercion "Unsize" α2 in
                    let* α4 := borrow i usize in
                    let* α5 := deref α4 usize in
                    let* α6 := borrow α5 usize in
                    let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
                    let* α8 := borrow x (ref i32) in
                    let* α9 := deref α8 (ref i32) in
                    let* α10 := borrow α9 (ref i32) in
                    let* α11 := core.fmt.rt.Argument::["new_display"] α10 in
                    let* α12 :=
                      borrow [ α7; α11 ] (list core.fmt.rt.Argument) in
                    let* α13 := deref α12 (list core.fmt.rt.Argument) in
                    let* α14 := borrow α13 (list core.fmt.rt.Argument) in
                    let* α15 := pointer_coercion "Unsize" α14 in
                    let* α16 := core.fmt.Arguments::["new_v1"] α3 α15 in
                    std.io.stdio._print α16 in
                  M.alloc tt in
                M.alloc tt
              end in
            M.alloc tt)
        end in
      use α7 in
    let* _ :=
      let* α0 := borrow_mut xs (alloc.vec.Vec i32 alloc.alloc.Global) in
      let* α1 :=
        (core.ops.deref.DerefMut.deref_mut
            (Self := alloc.vec.Vec i32 alloc.alloc.Global)
            (Trait := ltac:(refine _)))
          α0 in
      let* α2 := deref α1 (Slice i32) in
      let* α3 := borrow_mut α2 (Slice i32) in
      let* α4 := (Slice i32)::["iter_mut"] α3 in
      let* α5 :=
        (core.iter.traits.collect.IntoIterator.into_iter
            (Self := core.slice.iter.IterMut i32)
            (Trait := ltac:(refine _)))
          α4 in
      let* α6 :=
        match α5 with
        | iter =>
          loop
            (let* _ :=
              let* α0 := borrow_mut iter (core.slice.iter.IterMut i32) in
              let* α1 := deref α0 (core.slice.iter.IterMut i32) in
              let* α2 := borrow_mut α1 (core.slice.iter.IterMut i32) in
              let* α3 :=
                (core.iter.traits.iterator.Iterator.next
                    (Self := core.slice.iter.IterMut i32)
                    (Trait := ltac:(refine _)))
                  α2 in
              match α3 with
              | core.option.Option  =>
                let* α0 := Break in
                never_to_any α0
              | core.option.Option x =>
                let* _ :=
                  let* α0 := deref x i32 in
                  let* α1 := M.alloc 3 in
                  assign_op mul α0 α1 in
                M.alloc tt
              end in
            M.alloc tt)
        end in
      use α6 in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow [ mk_str "Updated vector: "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow xs (alloc.vec.Vec i32 alloc.alloc.Global) in
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
    M.alloc tt).
