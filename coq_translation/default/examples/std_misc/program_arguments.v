(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  let* args :=
    let* α0 := std.env.args in
    core.iter.traits.iterator.Iterator.collect α0 in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow [ mk_str "My path is "; mk_str ".
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 :=
        borrow args (alloc.vec.Vec alloc.string.String alloc.alloc.Global) in
      let* α5 := M.alloc 0 in
      let* α6 := core.ops.index.Index.index α4 α5 in
      let* α7 := deref α6 alloc.string.String in
      let* α8 := borrow α7 alloc.string.String in
      let* α9 := deref α8 alloc.string.String in
      let* α10 := borrow α9 alloc.string.String in
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
        borrow
          [ mk_str "I got "; mk_str " arguments: "; mk_str ".
" ]
          (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 :=
        borrow args (alloc.vec.Vec alloc.string.String alloc.alloc.Global) in
      let* α5 := (alloc.vec.Vec _ _)::["len"] α4 in
      let* α6 := M.alloc 1 in
      let* α7 := sub α5 α6 in
      let* α8 := borrow α7 usize in
      let* α9 := deref α8 usize in
      let* α10 := borrow α9 usize in
      let* α11 := core.fmt.rt.Argument::["new_debug"] α10 in
      let* α12 :=
        borrow args (alloc.vec.Vec alloc.string.String alloc.alloc.Global) in
      let* α13 := M.alloc 1 in
      let* α14 := M.alloc {| core.ops.range.RangeFrom.start := α13; |} in
      let* α15 := core.ops.index.Index.index α12 α14 in
      let* α16 := deref α15 (Slice alloc.string.String) in
      let* α17 := borrow α16 (Slice alloc.string.String) in
      let* α18 := borrow α17 (ref (Slice alloc.string.String)) in
      let* α19 := deref α18 (ref (Slice alloc.string.String)) in
      let* α20 := borrow α19 (ref (Slice alloc.string.String)) in
      let* α21 := core.fmt.rt.Argument::["new_debug"] α20 in
      let* α22 := borrow [ α11; α21 ] (list core.fmt.rt.Argument) in
      let* α23 := deref α22 (list core.fmt.rt.Argument) in
      let* α24 := borrow α23 (list core.fmt.rt.Argument) in
      let* α25 := pointer_coercion "Unsize" α24 in
      let* α26 := core.fmt.Arguments::["new_v1"] α3 α25 in
      std.io.stdio._print α26 in
    M.alloc tt in
  M.alloc tt.
