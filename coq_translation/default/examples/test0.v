(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition message `{ℋ : State.Trait} : ref str :=
  M.run (M.pure (mk_str "Hello, World!")).

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* _ :=
      let* _ :=
        let* α0 := borrow [ mk_str ""; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow test0.message (ref str) in
        let* α5 := deref α4 (ref str) in
        let* α6 := borrow α5 (ref str) in
        let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
        let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
        let* α9 := deref α8 (list core.fmt.rt.Argument) in
        let* α10 := borrow α9 (list core.fmt.rt.Argument) in
        let* α11 := pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
        std.io.stdio._print α12 in
      M.alloc tt in
    let* number :=
      let* α0 := M.alloc 7 in
      M.alloc (core.option.Option.Some α0) in
    let* letter := M.alloc core.option.Option.None in
    let* emoticon := M.alloc core.option.Option.None in
    let* _ :=
      let* α0 := let_if core.option.Option i := number in
      if (α0 : bool) then
        let* _ :=
          let* _ :=
            let* α0 :=
              borrow [ mk_str "Matched "; mk_str "!
" ] (list (ref str)) in
            let* α1 := deref α0 (list (ref str)) in
            let* α2 := borrow α1 (list (ref str)) in
            let* α3 := pointer_coercion "Unsize" α2 in
            let* α4 := borrow i i32 in
            let* α5 := deref α4 i32 in
            let* α6 := borrow α5 i32 in
            let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
            let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
            let* α9 := deref α8 (list core.fmt.rt.Argument) in
            let* α10 := borrow α9 (list core.fmt.rt.Argument) in
            let* α11 := pointer_coercion "Unsize" α10 in
            let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
            std.io.stdio._print α12 in
          M.alloc tt in
        M.alloc tt
      else
        M.alloc tt in
    let* _ :=
      let* α0 := let_if core.option.Option j := letter in
      if (α0 : bool) then
        let* _ :=
          let* _ :=
            let* α0 :=
              borrow [ mk_str "Matched "; mk_str "!
" ] (list (ref str)) in
            let* α1 := deref α0 (list (ref str)) in
            let* α2 := borrow α1 (list (ref str)) in
            let* α3 := pointer_coercion "Unsize" α2 in
            let* α4 := borrow j i32 in
            let* α5 := deref α4 i32 in
            let* α6 := borrow α5 i32 in
            let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
            let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
            let* α9 := deref α8 (list core.fmt.rt.Argument) in
            let* α10 := borrow α9 (list core.fmt.rt.Argument) in
            let* α11 := pointer_coercion "Unsize" α10 in
            let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
            std.io.stdio._print α12 in
          M.alloc tt in
        M.alloc tt
      else
        let* _ :=
          let* _ :=
            let* α0 :=
              borrow
                [ mk_str "Didn't match a number. Let's go with a letter!
" ]
                (list (ref str)) in
            let* α1 := deref α0 (list (ref str)) in
            let* α2 := borrow α1 (list (ref str)) in
            let* α3 := pointer_coercion "Unsize" α2 in
            let* α4 := core.fmt.Arguments::["new_const"] α3 in
            std.io.stdio._print α4 in
          M.alloc tt in
        M.alloc tt in
    let* i_like_letters := M.alloc false in
    let* α0 := let_if core.option.Option i := emoticon in
    if (α0 : bool) then
      let* _ :=
        let* _ :=
          let* α0 :=
            borrow [ mk_str "Matched "; mk_str "!
" ] (list (ref str)) in
          let* α1 := deref α0 (list (ref str)) in
          let* α2 := borrow α1 (list (ref str)) in
          let* α3 := pointer_coercion "Unsize" α2 in
          let* α4 := borrow i i32 in
          let* α5 := deref α4 i32 in
          let* α6 := borrow α5 i32 in
          let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
          let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
          let* α9 := deref α8 (list core.fmt.rt.Argument) in
          let* α10 := borrow α9 (list core.fmt.rt.Argument) in
          let* α11 := pointer_coercion "Unsize" α10 in
          let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
          std.io.stdio._print α12 in
        M.alloc tt in
      M.alloc tt
    else
      let* α0 := use i_like_letters in
      if (α0 : bool) then
        let* _ :=
          let* _ :=
            let* α0 :=
              borrow
                [ mk_str "Didn't match a number. Let's go with a letter!
" ]
                (list (ref str)) in
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
            let* α0 :=
              borrow
                [ mk_str "I don't like letters. Let's go with an emoticon :)!
"
                ]
                (list (ref str)) in
            let* α1 := deref α0 (list (ref str)) in
            let* α2 := borrow α1 (list (ref str)) in
            let* α3 := pointer_coercion "Unsize" α2 in
            let* α4 := core.fmt.Arguments::["new_const"] α3 in
            std.io.stdio._print α4 in
          M.alloc tt in
        M.alloc tt).
