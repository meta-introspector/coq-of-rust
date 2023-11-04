(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Number.
  Inductive t `{ℋ : State.Trait} : Set :=
  | Zero
  | One
  | Two.
End Number.
Definition Number `{ℋ : State.Trait} : Set := M.Val Number.t.

Module Color.
  Inductive t `{ℋ : State.Trait} : Set :=
  | Red
  | Green
  | Blue.
End Color.
Definition Color `{ℋ : State.Trait} : Set := M.Val Color.t.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* _ :=
      let* _ :=
        let* α0 := borrow [ mk_str "zero is "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := cast 0 in
        let* α5 := borrow α4 i32 in
        let* α6 := deref α5 i32 in
        let* α7 := borrow α6 i32 in
        let* α8 := core.fmt.rt.Argument::["new_display"] α7 in
        let* α9 := borrow [ α8 ] (list core.fmt.rt.Argument) in
        let* α10 := deref α9 (list core.fmt.rt.Argument) in
        let* α11 := borrow α10 (list core.fmt.rt.Argument) in
        let* α12 := pointer_coercion "Unsize" α11 in
        let* α13 := core.fmt.Arguments::["new_v1"] α3 α12 in
        std.io.stdio._print α13 in
      M.alloc tt in
    let* _ :=
      let* _ :=
        let* α0 := borrow [ mk_str "one is "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := cast 1 in
        let* α5 := borrow α4 i32 in
        let* α6 := deref α5 i32 in
        let* α7 := borrow α6 i32 in
        let* α8 := core.fmt.rt.Argument::["new_display"] α7 in
        let* α9 := borrow [ α8 ] (list core.fmt.rt.Argument) in
        let* α10 := deref α9 (list core.fmt.rt.Argument) in
        let* α11 := borrow α10 (list core.fmt.rt.Argument) in
        let* α12 := pointer_coercion "Unsize" α11 in
        let* α13 := core.fmt.Arguments::["new_v1"] α3 α12 in
        std.io.stdio._print α13 in
      M.alloc tt in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow [ mk_str "roses are #"; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := BinOp.add enums_c_like.Color.Red 0 in
        let* α5 := cast α4 in
        let* α6 := borrow α5 i32 in
        let* α7 := deref α6 i32 in
        let* α8 := borrow α7 i32 in
        let* α9 := core.fmt.rt.Argument::["new_lower_hex"] α8 in
        let* α10 := borrow [ α9 ] (list core.fmt.rt.Argument) in
        let* α11 := deref α10 (list core.fmt.rt.Argument) in
        let* α12 := borrow α11 (list core.fmt.rt.Argument) in
        let* α13 := pointer_coercion "Unsize" α12 in
        let* α14 := M.alloc 0 in
        let* α15 := M.alloc " "%char in
        let* α16 := M.alloc core.fmt.rt.Alignment.Unknown in
        let* α17 := M.alloc 8 in
        let* α18 := M.alloc core.fmt.rt.Count.Implied in
        let* α19 := M.alloc 6 in
        let* α20 := "unimplemented parent_kind" α19 in
        let* α21 := core.fmt.rt.Placeholder::["new"] α14 α15 α16 α17 α18 α20 in
        let* α22 := borrow [ α21 ] (list core.fmt.rt.Placeholder) in
        let* α23 := deref α22 (list core.fmt.rt.Placeholder) in
        let* α24 := borrow α23 (list core.fmt.rt.Placeholder) in
        let* α25 := pointer_coercion "Unsize" α24 in
        let* α26 := core.fmt.rt.UnsafeArg::["new"] in
        let* α27 := core.fmt.Arguments::["new_v1_formatted"] α3 α13 α25 α26 in
        std.io.stdio._print α27 in
      M.alloc tt in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow [ mk_str "violets are #"; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := BinOp.add enums_c_like.Color.Blue 0 in
        let* α5 := cast α4 in
        let* α6 := borrow α5 i32 in
        let* α7 := deref α6 i32 in
        let* α8 := borrow α7 i32 in
        let* α9 := core.fmt.rt.Argument::["new_lower_hex"] α8 in
        let* α10 := borrow [ α9 ] (list core.fmt.rt.Argument) in
        let* α11 := deref α10 (list core.fmt.rt.Argument) in
        let* α12 := borrow α11 (list core.fmt.rt.Argument) in
        let* α13 := pointer_coercion "Unsize" α12 in
        let* α14 := M.alloc 0 in
        let* α15 := M.alloc " "%char in
        let* α16 := M.alloc core.fmt.rt.Alignment.Unknown in
        let* α17 := M.alloc 8 in
        let* α18 := M.alloc core.fmt.rt.Count.Implied in
        let* α19 := M.alloc 6 in
        let* α20 := "unimplemented parent_kind" α19 in
        let* α21 := core.fmt.rt.Placeholder::["new"] α14 α15 α16 α17 α18 α20 in
        let* α22 := borrow [ α21 ] (list core.fmt.rt.Placeholder) in
        let* α23 := deref α22 (list core.fmt.rt.Placeholder) in
        let* α24 := borrow α23 (list core.fmt.rt.Placeholder) in
        let* α25 := pointer_coercion "Unsize" α24 in
        let* α26 := core.fmt.rt.UnsafeArg::["new"] in
        let* α27 := core.fmt.Arguments::["new_v1_formatted"] α3 α13 α25 α26 in
        std.io.stdio._print α27 in
      M.alloc tt in
    M.alloc tt).
