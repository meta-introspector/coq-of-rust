(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  let* names :=
    let* α0 := deref (mk_str "Frank") str in
    let* α1 := borrow α0 str in
    let* α2 := deref (mk_str "Ferris") str in
    let* α3 := borrow α2 str in
    let* α4 :=
      (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"]
        [ mk_str "Bob"; α1; α3 ] in
    let* α5 := pointer_coercion "Unsize" α4 in
    (Slice (ref str))::["into_vec"] α5 in
  let* _ :=
    let* α0 := borrow_mut names (alloc.vec.Vec (ref str) alloc.alloc.Global) in
    let* α1 :=
      (core.ops.deref.DerefMut.deref_mut
          (Self := alloc.vec.Vec (ref str) alloc.alloc.Global)
          (Trait := ltac:(refine _)))
        α0 in
    let* α2 := deref α1 (Slice (ref str)) in
    let* α3 := borrow_mut α2 (Slice (ref str)) in
    let* α4 := (Slice (ref str))::["iter_mut"] α3 in
    let* α5 :=
      (core.iter.traits.collect.IntoIterator.into_iter
          (Self := core.slice.iter.IterMut (ref str))
          (Trait := ltac:(refine _)))
        α4 in
    let* α6 :=
      match α5 with
      | iter =>
        loop
          (let* _ :=
            let* α0 := borrow_mut iter (core.slice.iter.IterMut (ref str)) in
            let* α1 := deref α0 (core.slice.iter.IterMut (ref str)) in
            let* α2 := borrow_mut α1 (core.slice.iter.IterMut (ref str)) in
            let* α3 :=
              (core.iter.traits.iterator.Iterator.next
                  (Self := core.slice.iter.IterMut (ref str))
                  (Trait := ltac:(refine _)))
                α2 in
            match α3 with
            | core.option.Option  =>
              let* α0 := Break in
              never_to_any α0
            | core.option.Option name =>
              let* α0 := deref name (ref str) in
              let* α1 :=
                match name with
                | _ =>
                  let* α0 :=
                    deref (mk_str "There is a rustacean among us!") str in
                  borrow α0 str
                | _ =>
                  let* α0 := deref (mk_str "Hello") str in
                  borrow α0 str
                end in
              assign α0 α1
            end in
          M.alloc tt)
      end in
    use α6 in
  let* _ :=
    let* _ :=
      let* α0 := borrow [ mk_str "names: "; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := borrow names (alloc.vec.Vec (ref str) alloc.alloc.Global) in
      let* α5 := deref α4 (alloc.vec.Vec (ref str) alloc.alloc.Global) in
      let* α6 := borrow α5 (alloc.vec.Vec (ref str) alloc.alloc.Global) in
      let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
      let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
      let* α9 := deref α8 (list core.fmt.rt.Argument) in
      let* α10 := borrow α9 (list core.fmt.rt.Argument) in
      let* α11 := pointer_coercion "Unsize" α10 in
      let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
      std.io.stdio._print α12 in
    M.alloc tt in
  M.alloc tt.
