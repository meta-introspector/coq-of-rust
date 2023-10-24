(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition multiply
    `{ℋ : State.Trait}
    (first : ref i32)
    (second : ref i32)
    : M i32 :=
  core.ops.arith.Mul.mul first second.

Definition choose_first
    `{ℋ : State.Trait}
    (first : ref i32)
    (arg : ref i32)
    : M (ref i32) :=
  let* α0 := deref first i32 in
  borrow α0 i32.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  let* first := M.alloc 2 in
  let* _ :=
    let* second := M.alloc 3 in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow [ mk_str "The product is "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow first i32 in
        let* α5 := deref α4 i32 in
        let* α6 := borrow α5 i32 in
        let* α7 := borrow second i32 in
        let* α8 := deref α7 i32 in
        let* α9 := borrow α8 i32 in
        let* α10 := scoping_rules_lifetimes_coercion.multiply α6 α9 in
        let* α11 := borrow α10 i32 in
        let* α12 := deref α11 i32 in
        let* α13 := borrow α12 i32 in
        let* α14 := core.fmt.rt.Argument::["new_display"] α13 in
        let* α15 := borrow [ α14 ] (list core.fmt.rt.Argument) in
        let* α16 := deref α15 (list core.fmt.rt.Argument) in
        let* α17 := borrow α16 (list core.fmt.rt.Argument) in
        let* α18 := pointer_coercion "Unsize" α17 in
        let* α19 := core.fmt.Arguments::["new_v1"] α3 α18 in
        std.io.stdio._print α19 in
      M.alloc tt in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow [ mk_str ""; mk_str " is the first
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow first i32 in
        let* α5 := deref α4 i32 in
        let* α6 := borrow α5 i32 in
        let* α7 := borrow second i32 in
        let* α8 := deref α7 i32 in
        let* α9 := borrow α8 i32 in
        let* α10 := scoping_rules_lifetimes_coercion.choose_first α6 α9 in
        let* α11 := borrow α10 (ref i32) in
        let* α12 := deref α11 (ref i32) in
        let* α13 := borrow α12 (ref i32) in
        let* α14 := core.fmt.rt.Argument::["new_display"] α13 in
        let* α15 := borrow [ α14 ] (list core.fmt.rt.Argument) in
        let* α16 := deref α15 (list core.fmt.rt.Argument) in
        let* α17 := borrow α16 (list core.fmt.rt.Argument) in
        let* α18 := pointer_coercion "Unsize" α17 in
        let* α19 := core.fmt.Arguments::["new_v1"] α3 α18 in
        std.io.stdio._print α19 in
      M.alloc tt in
    M.alloc tt in
  M.alloc tt.
