(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition elided_input `{ℋ : State.Trait} (x : ref i32) : M unit :=
  M.function_body
    (let* _ :=
      let* _ :=
        let* α0 :=
          borrow [ mk_str "`elided_input`: "; mk_str "
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
    M.alloc tt).

Definition annotated_input `{ℋ : State.Trait} (x : ref i32) : M unit :=
  M.function_body
    (let* _ :=
      let* _ :=
        let* α0 :=
          borrow
            [ mk_str "`annotated_input`: "; mk_str "
" ]
            (list (ref str)) in
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
    M.alloc tt).

Definition elided_pass `{ℋ : State.Trait} (x : ref i32) : M (ref i32) :=
  M.function_body (M.pure x).

Definition annotated_pass `{ℋ : State.Trait} (x : ref i32) : M (ref i32) :=
  M.function_body (M.pure x).

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* x := M.alloc 3 in
    let* _ :=
      let* α0 := borrow x i32 in
      let* α1 := deref α0 i32 in
      let* α2 := borrow α1 i32 in
      scoping_rules_lifetimes_elision.elided_input α2 in
    let* _ :=
      let* α0 := borrow x i32 in
      let* α1 := deref α0 i32 in
      let* α2 := borrow α1 i32 in
      scoping_rules_lifetimes_elision.annotated_input α2 in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow [ mk_str "`elided_pass`: "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow x i32 in
        let* α5 := deref α4 i32 in
        let* α6 := borrow α5 i32 in
        let* α7 := scoping_rules_lifetimes_elision.elided_pass α6 in
        let* α8 := borrow α7 (ref i32) in
        let* α9 := deref α8 (ref i32) in
        let* α10 := borrow α9 (ref i32) in
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
          borrow [ mk_str "`annotated_pass`: "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow x i32 in
        let* α5 := deref α4 i32 in
        let* α6 := borrow α5 i32 in
        let* α7 := scoping_rules_lifetimes_elision.annotated_pass α6 in
        let* α8 := borrow α7 (ref i32) in
        let* α9 := deref α8 (ref i32) in
        let* α10 := borrow α9 (ref i32) in
        let* α11 := core.fmt.rt.Argument::["new_display"] α10 in
        let* α12 := borrow [ α11 ] (list core.fmt.rt.Argument) in
        let* α13 := deref α12 (list core.fmt.rt.Argument) in
        let* α14 := borrow α13 (list core.fmt.rt.Argument) in
        let* α15 := pointer_coercion "Unsize" α14 in
        let* α16 := core.fmt.Arguments::["new_v1"] α3 α15 in
        std.io.stdio._print α16 in
      M.alloc tt in
    M.alloc tt).
