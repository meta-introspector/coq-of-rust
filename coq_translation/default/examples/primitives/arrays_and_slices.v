(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition analyze_slice `{State.Trait} (slice : ref (Slice i32)) : M unit :=
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow
          [ mk_str "first element of the slice: "; mk_str "
" ]
          (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := deref slice (Slice i32) in
      let* α5 := borrow α4[M.alloc 0] i32 in
      let* α6 := deref α5 i32 in
      let* α7 := borrow α6 i32 in
      let* α8 := core.fmt.rt.Argument::["new_display"] α7 in
      let* α9 := borrow [ α8 ] (list core.fmt.rt.Argument) in
      let* α10 := deref α9 (list core.fmt.rt.Argument) in
      let* α11 := borrow α10 (list core.fmt.rt.Argument) in
      let* α12 := pointer_coercion "Unsize" α11 in
      let* α13 := core.fmt.Arguments::["new_v1"] α3 α12 in
      std.io.stdio._print α13 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow
          [ mk_str "the slice has "; mk_str " elements
" ]
          (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := deref slice (Slice i32) in
      let* α5 := borrow α4 (Slice i32) in
      let* α6 := (Slice _)::["len"] α5 in
      let* α7 := borrow α6 usize in
      let* α8 := deref α7 usize in
      let* α9 := borrow α8 usize in
      let* α10 := core.fmt.rt.Argument::["new_display"] α9 in
      let* α11 := borrow [ α10 ] (list core.fmt.rt.Argument) in
      let* α12 := deref α11 (list core.fmt.rt.Argument) in
      let* α13 := borrow α12 (list core.fmt.rt.Argument) in
      let* α14 := pointer_coercion "Unsize" α13 in
      let* α15 := core.fmt.Arguments::["new_v1"] α3 α14 in
      std.io.stdio._print α15 in
    Pure tt in
  Pure tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{State.Trait} : M unit :=
  let* xs :=
    let* α0 := M.alloc 1 in
    let* α1 := M.alloc 2 in
    let* α2 := M.alloc 3 in
    let* α3 := M.alloc 4 in
    let* α4 := M.alloc 5 in
    Pure [ α0; α1; α2; α3; α4 ] in
  let* ys :=
    let* α0 := M.alloc 0 in
    repeat α0 500 in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow
          [ mk_str "first element of the array: "; mk_str "
" ]
          (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := borrow xs[M.alloc 0] i32 in
      let* α5 := deref α4 i32 in
      let* α6 := borrow α5 i32 in
      let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
      let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
      let* α9 := deref α8 (list core.fmt.rt.Argument) in
      let* α10 := borrow α9 (list core.fmt.rt.Argument) in
      let* α11 := pointer_coercion "Unsize" α10 in
      let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
      std.io.stdio._print α12 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow
          [ mk_str "second element of the array: "; mk_str "
" ]
          (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := borrow xs[M.alloc 1] i32 in
      let* α5 := deref α4 i32 in
      let* α6 := borrow α5 i32 in
      let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
      let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
      let* α9 := deref α8 (list core.fmt.rt.Argument) in
      let* α10 := borrow α9 (list core.fmt.rt.Argument) in
      let* α11 := pointer_coercion "Unsize" α10 in
      let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
      std.io.stdio._print α12 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow
          [ mk_str "number of elements in array: "; mk_str "
" ]
          (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := borrow xs (list i32) in
      let* α5 := pointer_coercion "Unsize" α4 in
      let* α6 := (Slice _)::["len"] α5 in
      let* α7 := borrow α6 usize in
      let* α8 := deref α7 usize in
      let* α9 := borrow α8 usize in
      let* α10 := core.fmt.rt.Argument::["new_display"] α9 in
      let* α11 := borrow [ α10 ] (list core.fmt.rt.Argument) in
      let* α12 := deref α11 (list core.fmt.rt.Argument) in
      let* α13 := borrow α12 (list core.fmt.rt.Argument) in
      let* α14 := pointer_coercion "Unsize" α13 in
      let* α15 := core.fmt.Arguments::["new_v1"] α3 α14 in
      std.io.stdio._print α15 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow
          [ mk_str "array occupies "; mk_str " bytes
" ]
          (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := borrow xs (list i32) in
      let* α5 := deref α4 (list i32) in
      let* α6 := borrow α5 (list i32) in
      let* α7 := core.mem.size_of_val α6 in
      let* α8 := borrow α7 usize in
      let* α9 := deref α8 usize in
      let* α10 := borrow α9 usize in
      let* α11 := core.fmt.rt.Argument::["new_display"] α10 in
      let* α12 := borrow [ α11 ] (list core.fmt.rt.Argument) in
      let* α13 := deref α12 (list core.fmt.rt.Argument) in
      let* α14 := borrow α13 (list core.fmt.rt.Argument) in
      let* α15 := pointer_coercion "Unsize" α14 in
      let* α16 := core.fmt.Arguments::["new_v1"] α3 α15 in
      std.io.stdio._print α16 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow
          [ mk_str "borrow the whole array as a slice
" ]
          (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := core.fmt.Arguments::["new_const"] α3 in
      std.io.stdio._print α4 in
    Pure tt in
  let* _ :=
    let* α0 := borrow xs (list i32) in
    let* α1 := deref α0 (list i32) in
    let* α2 := borrow α1 (list i32) in
    let* α3 := pointer_coercion "Unsize" α2 in
    arrays_and_slices.analyze_slice α3 in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow
          [ mk_str "borrow a section of the array as a slice
" ]
          (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := core.fmt.Arguments::["new_const"] α3 in
      std.io.stdio._print α4 in
    Pure tt in
  let* _ :=
    let* α0 := borrow ys (list i32) in
    let* α1 := M.alloc 1 in
    let* α2 := M.alloc 4 in
    let* α3 :=
      M.alloc
        {| core.ops.range.Range.start := α1; core.ops.range.Range.end := α2;
        |} in
    let* α4 := core.ops.index.Index.index α0 α3 in
    let* α5 := deref α4 (Slice i32) in
    let* α6 := borrow α5 (Slice i32) in
    let* α7 := deref α6 (Slice i32) in
    let* α8 := borrow α7 (Slice i32) in
    arrays_and_slices.analyze_slice α8 in
  let empty_array := [ ] in
  let* _ :=
    let* α0 := borrow empty_array (list u32) in
    let* α1 := borrow α0 (ref (list u32)) in
    let* α2 := borrow [ ] (list u32) in
    let* α3 := borrow α2 (ref (list u32)) in
    match (α1, α3) with
    | (left_val, right_val) =>
      let* α0 := deref left_val (ref (list u32)) in
      let* α1 := borrow α0 (ref (list u32)) in
      let* α2 := deref right_val (ref (list u32)) in
      let* α3 := borrow α2 (ref (list u32)) in
      let* α4 := core.cmp.PartialEq.eq α1 α3 in
      let* α5 := not α4 in
      let* α6 := use α5 in
      if (α6 : bool) then
        let kind := core.panicking.AssertKind.Eq tt in
        let* _ :=
          let* α0 := deref left_val (ref (list u32)) in
          let* α1 := borrow α0 (ref (list u32)) in
          let* α2 := deref α1 (ref (list u32)) in
          let* α3 := borrow α2 (ref (list u32)) in
          let* α4 := deref right_val (ref (list u32)) in
          let* α5 := borrow α4 (ref (list u32)) in
          let* α6 := deref α5 (ref (list u32)) in
          let* α7 := borrow α6 (ref (list u32)) in
          core.panicking.assert_failed
            kind
            α3
            α7
            (core.option.Option.None tt) in
        never_to_any tt
      else
        Pure tt
    end in
  let* _ :=
    let* α0 := borrow empty_array (list u32) in
    let* α1 := borrow α0 (ref (list u32)) in
    let* α2 := borrow [ ] (list u32) in
    let* α3 :=
      core.ops.index.Index.index α2 (core.ops.range.RangeFull.Build_t tt) in
    let* α4 := deref α3 (Slice u32) in
    let* α5 := borrow α4 (Slice u32) in
    let* α6 := borrow α5 (ref (Slice u32)) in
    match (α1, α6) with
    | (left_val, right_val) =>
      let* α0 := deref left_val (ref (list u32)) in
      let* α1 := borrow α0 (ref (list u32)) in
      let* α2 := deref right_val (ref (Slice u32)) in
      let* α3 := borrow α2 (ref (Slice u32)) in
      let* α4 := core.cmp.PartialEq.eq α1 α3 in
      let* α5 := not α4 in
      let* α6 := use α5 in
      if (α6 : bool) then
        let kind := core.panicking.AssertKind.Eq tt in
        let* _ :=
          let* α0 := deref left_val (ref (list u32)) in
          let* α1 := borrow α0 (ref (list u32)) in
          let* α2 := deref α1 (ref (list u32)) in
          let* α3 := borrow α2 (ref (list u32)) in
          let* α4 := deref right_val (ref (Slice u32)) in
          let* α5 := borrow α4 (ref (Slice u32)) in
          let* α6 := deref α5 (ref (Slice u32)) in
          let* α7 := borrow α6 (ref (Slice u32)) in
          core.panicking.assert_failed
            kind
            α3
            α7
            (core.option.Option.None tt) in
        never_to_any tt
      else
        Pure tt
    end in
  let* α0 := M.alloc 0 in
  let* α1 := borrow xs (list i32) in
  let* α2 := pointer_coercion "Unsize" α1 in
  let* α3 := (Slice _)::["len"] α2 in
  let* α4 := M.alloc 1 in
  let* α5 := add α3 α4 in
  let* α6 :=
    M.alloc
      {| core.ops.range.Range.start := α0; core.ops.range.Range.end := α5; |} in
  let* α7 := core.iter.traits.collect.IntoIterator.into_iter α6 in
  let* α8 :=
    match α7 with
    | iter =>
      loop
        (let* _ :=
          let* α0 := borrow_mut iter (core.ops.range.Range usize) in
          let* α1 := deref α0 (core.ops.range.Range usize) in
          let* α2 := borrow_mut α1 (core.ops.range.Range usize) in
          let* α3 := core.iter.traits.iterator.Iterator.next α2 in
          match α3 with
          | core.option.Option  =>
            let* α0 := Break in
            never_to_any α0
          | core.option.Option i =>
            let* α0 := borrow xs (list i32) in
            let* α1 := pointer_coercion "Unsize" α0 in
            let* α2 := (Slice _)::["get"] α1 i in
            match α2 with
            | core.option.Option xval =>
              let* _ :=
                let* α0 :=
                  borrow
                    [ mk_str ""; mk_str ": "; mk_str "
" ]
                    (list (ref str)) in
                let* α1 := deref α0 (list (ref str)) in
                let* α2 := borrow α1 (list (ref str)) in
                let* α3 := pointer_coercion "Unsize" α2 in
                let* α4 := borrow i usize in
                let* α5 := deref α4 usize in
                let* α6 := borrow α5 usize in
                let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
                let* α8 := borrow xval (ref i32) in
                let* α9 := deref α8 (ref i32) in
                let* α10 := borrow α9 (ref i32) in
                let* α11 := core.fmt.rt.Argument::["new_display"] α10 in
                let* α12 := borrow [ α7; α11 ] (list core.fmt.rt.Argument) in
                let* α13 := deref α12 (list core.fmt.rt.Argument) in
                let* α14 := borrow α13 (list core.fmt.rt.Argument) in
                let* α15 := pointer_coercion "Unsize" α14 in
                let* α16 := core.fmt.Arguments::["new_v1"] α3 α15 in
                std.io.stdio._print α16 in
              Pure tt
            | core.option.Option  =>
              let* _ :=
                let* α0 :=
                  borrow
                    [ mk_str "Slow down! "; mk_str " is too far!
" ]
                    (list (ref str)) in
                let* α1 := deref α0 (list (ref str)) in
                let* α2 := borrow α1 (list (ref str)) in
                let* α3 := pointer_coercion "Unsize" α2 in
                let* α4 := borrow i usize in
                let* α5 := deref α4 usize in
                let* α6 := borrow α5 usize in
                let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
                let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
                let* α9 := deref α8 (list core.fmt.rt.Argument) in
                let* α10 := borrow α9 (list core.fmt.rt.Argument) in
                let* α11 := pointer_coercion "Unsize" α10 in
                let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
                std.io.stdio._print α12 in
              Pure tt
            end
          end in
        Pure tt)
    end in
  use α8.
