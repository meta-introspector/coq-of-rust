(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition function `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* _ :=
      let* _ :=
        let* α0 := borrow [ mk_str "called `function()`
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := core.fmt.Arguments::["new_const"] α3 in
        std.io.stdio._print α4 in
      M.alloc tt in
    M.alloc tt).

Module deeply.
  Module nested.
    Definition function `{ℋ : State.Trait} : M unit :=
      M.function_body
        (let* _ :=
          let* _ :=
            let* α0 :=
              borrow
                [ mk_str "called `deeply::nested::function()`
" ]
                (list (ref str)) in
            let* α1 := deref α0 (list (ref str)) in
            let* α2 := borrow α1 (list (ref str)) in
            let* α3 := pointer_coercion "Unsize" α2 in
            let* α4 := core.fmt.Arguments::["new_const"] α3 in
            std.io.stdio._print α4 in
          M.alloc tt in
        M.alloc tt).
  End nested.
End deeply.

Module nested.
  Definition function `{ℋ : State.Trait} : M unit :=
    M.function_body
      (let* _ :=
        let* _ :=
          let* α0 :=
            borrow
              [ mk_str "called `deeply::nested::function()`
" ]
              (list (ref str)) in
          let* α1 := deref α0 (list (ref str)) in
          let* α2 := borrow α1 (list (ref str)) in
          let* α3 := pointer_coercion "Unsize" α2 in
          let* α4 := core.fmt.Arguments::["new_const"] α3 in
          std.io.stdio._print α4 in
        M.alloc tt in
      M.alloc tt).
End nested.

Definition function `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* _ :=
      let* _ :=
        let* α0 :=
          borrow
            [ mk_str "called `deeply::nested::function()`
" ]
            (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := core.fmt.Arguments::["new_const"] α3 in
        std.io.stdio._print α4 in
      M.alloc tt in
    M.alloc tt).

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* _ := the_use_as_declaration.deeply.nested.function in
    let* _ :=
      let* _ :=
        let* α0 := borrow [ mk_str "Entering block
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := core.fmt.Arguments::["new_const"] α3 in
        std.io.stdio._print α4 in
      M.alloc tt in
    let* _ :=
      let* _ := the_use_as_declaration.deeply.nested.function in
      let* _ :=
        let* _ :=
          let* α0 := borrow [ mk_str "Leaving block
" ] (list (ref str)) in
          let* α1 := deref α0 (list (ref str)) in
          let* α2 := borrow α1 (list (ref str)) in
          let* α3 := pointer_coercion "Unsize" α2 in
          let* α4 := core.fmt.Arguments::["new_const"] α3 in
          std.io.stdio._print α4 in
        M.alloc tt in
      M.alloc tt in
    let* _ := the_use_as_declaration.function in
    M.alloc tt).
