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
    (Slice _)::["into_vec"] α5 in
  let* α0 := core.iter.traits.collect.IntoIterator.into_iter names in
  let* α1 := core.iter.traits.collect.IntoIterator.into_iter α0 in
  let* α2 :=
    match α1 with
    | iter =>
      loop
        (let* _ :=
          let* α0 :=
            borrow_mut
              iter
              (alloc.vec.into_iter.IntoIter (ref str) alloc.alloc.Global) in
          let* α1 :=
            deref
              α0
              (alloc.vec.into_iter.IntoIter (ref str) alloc.alloc.Global) in
          let* α2 :=
            borrow_mut
              α1
              (alloc.vec.into_iter.IntoIter (ref str) alloc.alloc.Global) in
          let* α3 := core.iter.traits.iterator.Iterator.next α2 in
          match α3 with
          | core.option.Option  =>
            let* α0 := Break in
            never_to_any α0
          | core.option.Option name =>
            match name with
            | _ =>
              let* _ :=
                let* α0 :=
                  borrow
                    [ mk_str "There is a rustacean among us!
" ]
                    (list (ref str)) in
                let* α1 := deref α0 (list (ref str)) in
                let* α2 := borrow α1 (list (ref str)) in
                let* α3 := pointer_coercion "Unsize" α2 in
                let* α4 := core.fmt.Arguments::["new_const"] α3 in
                std.io.stdio._print α4 in
              M.alloc tt
            | _ =>
              let* _ :=
                let* α0 :=
                  borrow [ mk_str "Hello "; mk_str "
" ] (list (ref str)) in
                let* α1 := deref α0 (list (ref str)) in
                let* α2 := borrow α1 (list (ref str)) in
                let* α3 := pointer_coercion "Unsize" α2 in
                let* α4 := borrow name (ref str) in
                let* α5 := deref α4 (ref str) in
                let* α6 := borrow α5 (ref str) in
                let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
                let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
                let* α9 := deref α8 (list core.fmt.rt.Argument) in
                let* α10 := borrow α9 (list core.fmt.rt.Argument) in
                let* α11 := pointer_coercion "Unsize" α10 in
                let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
                std.io.stdio._print α12 in
              M.alloc tt
            end
          end in
        M.alloc tt)
    end in
  use α2.
