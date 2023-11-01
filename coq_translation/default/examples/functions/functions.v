(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  let* _ :=
    let* α0 := M.alloc 100 in
    functions.fizzbuzz_to α0 in
  M.alloc tt.

Definition is_divisible_by
    `{ℋ : State.Trait}
    (lhs : u32)
    (rhs : u32)
    : M bool :=
  let* _ :=
    let* α0 := M.alloc 0 in
    let* α1 := BinOp.eq rhs α0 in
    let* α2 := use α1 in
    if (α2 : bool) then
      let* _ :=
        let* α0 := M.alloc false in
        Return α0 in
      let* α0 := M.alloc tt in
      never_to_any α0
    else
      M.alloc tt in
  let* α0 := BinOp.rem lhs rhs in
  let* α1 := M.alloc 0 in
  BinOp.eq α0 α1.

Definition fizzbuzz `{ℋ : State.Trait} (n : u32) : M unit :=
  let* α0 := M.alloc 15 in
  let* α1 := functions.is_divisible_by n α0 in
  let* α2 := use α1 in
  if (α2 : bool) then
    let* _ :=
      let* _ :=
        let* α0 := borrow [ mk_str "fizzbuzz
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := core.fmt.Arguments::["new_const"] α3 in
        std.io.stdio._print α4 in
      M.alloc tt in
    M.alloc tt
  else
    let* α0 := M.alloc 3 in
    let* α1 := functions.is_divisible_by n α0 in
    let* α2 := use α1 in
    if (α2 : bool) then
      let* _ :=
        let* _ :=
          let* α0 := borrow [ mk_str "fizz
" ] (list (ref str)) in
          let* α1 := deref α0 (list (ref str)) in
          let* α2 := borrow α1 (list (ref str)) in
          let* α3 := pointer_coercion "Unsize" α2 in
          let* α4 := core.fmt.Arguments::["new_const"] α3 in
          std.io.stdio._print α4 in
        M.alloc tt in
      M.alloc tt
    else
      let* α0 := M.alloc 5 in
      let* α1 := functions.is_divisible_by n α0 in
      let* α2 := use α1 in
      if (α2 : bool) then
        let* _ :=
          let* _ :=
            let* α0 := borrow [ mk_str "buzz
" ] (list (ref str)) in
            let* α1 := deref α0 (list (ref str)) in
            let* α2 := borrow α1 (list (ref str)) in
            let* α3 := pointer_coercion "Unsize" α2 in
            let* α4 := core.fmt.Arguments::["new_const"] α3 in
            std.io.stdio._print α4 in
          M.alloc tt in
        M.alloc tt
      else
        let* _ :=
          let* _ :=
            let* α0 := borrow [ mk_str ""; mk_str "
" ] (list (ref str)) in
            let* α1 := deref α0 (list (ref str)) in
            let* α2 := borrow α1 (list (ref str)) in
            let* α3 := pointer_coercion "Unsize" α2 in
            let* α4 := borrow n u32 in
            let* α5 := deref α4 u32 in
            let* α6 := borrow α5 u32 in
            let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
            let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
            let* α9 := deref α8 (list core.fmt.rt.Argument) in
            let* α10 := borrow α9 (list core.fmt.rt.Argument) in
            let* α11 := pointer_coercion "Unsize" α10 in
            let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
            std.io.stdio._print α12 in
          M.alloc tt in
        M.alloc tt.

Definition fizzbuzz_to `{ℋ : State.Trait} (n : u32) : M unit :=
  let* α0 := M.alloc 1 in
  let* α1 := (core.ops.range.RangeInclusive u32)::["new"] α0 n in
  let* α2 :=
    (core.iter.traits.collect.IntoIterator.into_iter
        (Self := core.ops.range.RangeInclusive u32)
        (Trait := ltac:(refine _)))
      α1 in
  let* α3 :=
    match α2 with
    | iter =>
      loop
        (let* _ :=
          let* α0 := borrow_mut iter (core.ops.range.RangeInclusive u32) in
          let* α1 := deref α0 (core.ops.range.RangeInclusive u32) in
          let* α2 := borrow_mut α1 (core.ops.range.RangeInclusive u32) in
          let* α3 :=
            (core.iter.traits.iterator.Iterator.next
                (Self := core.ops.range.RangeInclusive u32)
                (Trait := ltac:(refine _)))
              α2 in
          match α3 with
          | core.option.Option  =>
            let* α0 := Break in
            never_to_any α0
          | core.option.Option n =>
            let* _ := functions.fizzbuzz n in
            M.alloc tt
          end in
        M.alloc tt)
    end in
  use α3.
