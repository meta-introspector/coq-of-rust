(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  let* _ :=
    let* _ :=
      let* α0 := borrow [ mk_str "1 + 2 = "; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := M.alloc 1 in
      let* α5 := M.alloc 2 in
      let* α6 := add α4 α5 in
      let* α7 := borrow α6 u32 in
      let* α8 := deref α7 u32 in
      let* α9 := borrow α8 u32 in
      let* α10 := core.fmt.rt.Argument::["new_display"] α9 in
      let* α11 := borrow [ α10 ] (list core.fmt.rt.Argument) in
      let* α12 := deref α11 (list core.fmt.rt.Argument) in
      let* α13 := borrow α12 (list core.fmt.rt.Argument) in
      let* α14 := pointer_coercion "Unsize" α13 in
      let* α15 := core.fmt.Arguments::["new_v1"] α3 α14 in
      std.io.stdio._print α15 in
    M.alloc tt in
  let* _ :=
    let* _ :=
      let* α0 := borrow [ mk_str "1 - 2 = "; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := M.alloc 1 in
      let* α5 := M.alloc 2 in
      let* α6 := sub α4 α5 in
      let* α7 := borrow α6 i32 in
      let* α8 := deref α7 i32 in
      let* α9 := borrow α8 i32 in
      let* α10 := core.fmt.rt.Argument::["new_display"] α9 in
      let* α11 := borrow [ α10 ] (list core.fmt.rt.Argument) in
      let* α12 := deref α11 (list core.fmt.rt.Argument) in
      let* α13 := borrow α12 (list core.fmt.rt.Argument) in
      let* α14 := pointer_coercion "Unsize" α13 in
      let* α15 := core.fmt.Arguments::["new_v1"] α3 α14 in
      std.io.stdio._print α15 in
    M.alloc tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow [ mk_str "true AND false is "; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := M.alloc true in
      let* α5 := M.alloc false in
      let* α6 := and α4 α5 in
      let* α7 := borrow α6 bool in
      let* α8 := deref α7 bool in
      let* α9 := borrow α8 bool in
      let* α10 := core.fmt.rt.Argument::["new_display"] α9 in
      let* α11 := borrow [ α10 ] (list core.fmt.rt.Argument) in
      let* α12 := deref α11 (list core.fmt.rt.Argument) in
      let* α13 := borrow α12 (list core.fmt.rt.Argument) in
      let* α14 := pointer_coercion "Unsize" α13 in
      let* α15 := core.fmt.Arguments::["new_v1"] α3 α14 in
      std.io.stdio._print α15 in
    M.alloc tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow [ mk_str "true OR false is "; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := M.alloc true in
      let* α5 := M.alloc false in
      let* α6 := or α4 α5 in
      let* α7 := borrow α6 bool in
      let* α8 := deref α7 bool in
      let* α9 := borrow α8 bool in
      let* α10 := core.fmt.rt.Argument::["new_display"] α9 in
      let* α11 := borrow [ α10 ] (list core.fmt.rt.Argument) in
      let* α12 := deref α11 (list core.fmt.rt.Argument) in
      let* α13 := borrow α12 (list core.fmt.rt.Argument) in
      let* α14 := pointer_coercion "Unsize" α13 in
      let* α15 := core.fmt.Arguments::["new_v1"] α3 α14 in
      std.io.stdio._print α15 in
    M.alloc tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow [ mk_str "NOT true is "; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := M.alloc true in
      let* α5 := not α4 in
      let* α6 := borrow α5 bool in
      let* α7 := deref α6 bool in
      let* α8 := borrow α7 bool in
      let* α9 := core.fmt.rt.Argument::["new_display"] α8 in
      let* α10 := borrow [ α9 ] (list core.fmt.rt.Argument) in
      let* α11 := deref α10 (list core.fmt.rt.Argument) in
      let* α12 := borrow α11 (list core.fmt.rt.Argument) in
      let* α13 := pointer_coercion "Unsize" α12 in
      let* α14 := core.fmt.Arguments::["new_v1"] α3 α13 in
      std.io.stdio._print α14 in
    M.alloc tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow [ mk_str "0011 AND 0101 is "; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := M.alloc 3 in
      let* α5 := M.alloc 5 in
      let* α6 := bitand α4 α5 in
      let* α7 := borrow α6 u32 in
      let* α8 := deref α7 u32 in
      let* α9 := borrow α8 u32 in
      let* α10 := core.fmt.rt.Argument::["new_binary"] α9 in
      let* α11 := borrow [ α10 ] (list core.fmt.rt.Argument) in
      let* α12 := deref α11 (list core.fmt.rt.Argument) in
      let* α13 := borrow α12 (list core.fmt.rt.Argument) in
      let* α14 := pointer_coercion "Unsize" α13 in
      let* α15 := M.alloc 0 in
      let* α16 := M.alloc " "%char in
      let* α17 := M.alloc 8 in
      let* α18 := M.alloc 4 in
      let* α19 := "unimplemented parent_kind" α18 in
      let* α20 :=
        core.fmt.rt.Placeholder::["new"]
          α15
          α16
          (core.fmt.rt.Alignment.Unknown tt)
          α17
          (core.fmt.rt.Count.Implied tt)
          α19 in
      let* α21 := borrow [ α20 ] (list core.fmt.rt.Placeholder) in
      let* α22 := deref α21 (list core.fmt.rt.Placeholder) in
      let* α23 := borrow α22 (list core.fmt.rt.Placeholder) in
      let* α24 := pointer_coercion "Unsize" α23 in
      let* α25 := core.fmt.rt.UnsafeArg::["new"] in
      let* α26 := core.fmt.Arguments::["new_v1_formatted"] α3 α14 α24 α25 in
      std.io.stdio._print α26 in
    M.alloc tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow [ mk_str "0011 OR 0101 is "; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := M.alloc 3 in
      let* α5 := M.alloc 5 in
      let* α6 := bitor α4 α5 in
      let* α7 := borrow α6 u32 in
      let* α8 := deref α7 u32 in
      let* α9 := borrow α8 u32 in
      let* α10 := core.fmt.rt.Argument::["new_binary"] α9 in
      let* α11 := borrow [ α10 ] (list core.fmt.rt.Argument) in
      let* α12 := deref α11 (list core.fmt.rt.Argument) in
      let* α13 := borrow α12 (list core.fmt.rt.Argument) in
      let* α14 := pointer_coercion "Unsize" α13 in
      let* α15 := M.alloc 0 in
      let* α16 := M.alloc " "%char in
      let* α17 := M.alloc 8 in
      let* α18 := M.alloc 4 in
      let* α19 := "unimplemented parent_kind" α18 in
      let* α20 :=
        core.fmt.rt.Placeholder::["new"]
          α15
          α16
          (core.fmt.rt.Alignment.Unknown tt)
          α17
          (core.fmt.rt.Count.Implied tt)
          α19 in
      let* α21 := borrow [ α20 ] (list core.fmt.rt.Placeholder) in
      let* α22 := deref α21 (list core.fmt.rt.Placeholder) in
      let* α23 := borrow α22 (list core.fmt.rt.Placeholder) in
      let* α24 := pointer_coercion "Unsize" α23 in
      let* α25 := core.fmt.rt.UnsafeArg::["new"] in
      let* α26 := core.fmt.Arguments::["new_v1_formatted"] α3 α14 α24 α25 in
      std.io.stdio._print α26 in
    M.alloc tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow [ mk_str "0011 XOR 0101 is "; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := M.alloc 3 in
      let* α5 := M.alloc 5 in
      let* α6 := bitxor α4 α5 in
      let* α7 := borrow α6 u32 in
      let* α8 := deref α7 u32 in
      let* α9 := borrow α8 u32 in
      let* α10 := core.fmt.rt.Argument::["new_binary"] α9 in
      let* α11 := borrow [ α10 ] (list core.fmt.rt.Argument) in
      let* α12 := deref α11 (list core.fmt.rt.Argument) in
      let* α13 := borrow α12 (list core.fmt.rt.Argument) in
      let* α14 := pointer_coercion "Unsize" α13 in
      let* α15 := M.alloc 0 in
      let* α16 := M.alloc " "%char in
      let* α17 := M.alloc 8 in
      let* α18 := M.alloc 4 in
      let* α19 := "unimplemented parent_kind" α18 in
      let* α20 :=
        core.fmt.rt.Placeholder::["new"]
          α15
          α16
          (core.fmt.rt.Alignment.Unknown tt)
          α17
          (core.fmt.rt.Count.Implied tt)
          α19 in
      let* α21 := borrow [ α20 ] (list core.fmt.rt.Placeholder) in
      let* α22 := deref α21 (list core.fmt.rt.Placeholder) in
      let* α23 := borrow α22 (list core.fmt.rt.Placeholder) in
      let* α24 := pointer_coercion "Unsize" α23 in
      let* α25 := core.fmt.rt.UnsafeArg::["new"] in
      let* α26 := core.fmt.Arguments::["new_v1_formatted"] α3 α14 α24 α25 in
      std.io.stdio._print α26 in
    M.alloc tt in
  let* _ :=
    let* _ :=
      let* α0 := borrow [ mk_str "1 << 5 is "; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := M.alloc 1 in
      let* α5 := M.alloc 5 in
      let* α6 := shl α4 α5 in
      let* α7 := borrow α6 u32 in
      let* α8 := deref α7 u32 in
      let* α9 := borrow α8 u32 in
      let* α10 := core.fmt.rt.Argument::["new_display"] α9 in
      let* α11 := borrow [ α10 ] (list core.fmt.rt.Argument) in
      let* α12 := deref α11 (list core.fmt.rt.Argument) in
      let* α13 := borrow α12 (list core.fmt.rt.Argument) in
      let* α14 := pointer_coercion "Unsize" α13 in
      let* α15 := core.fmt.Arguments::["new_v1"] α3 α14 in
      std.io.stdio._print α15 in
    M.alloc tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow [ mk_str "0x80 >> 2 is 0x"; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := M.alloc 128 in
      let* α5 := M.alloc 2 in
      let* α6 := shr α4 α5 in
      let* α7 := borrow α6 u32 in
      let* α8 := deref α7 u32 in
      let* α9 := borrow α8 u32 in
      let* α10 := core.fmt.rt.Argument::["new_lower_hex"] α9 in
      let* α11 := borrow [ α10 ] (list core.fmt.rt.Argument) in
      let* α12 := deref α11 (list core.fmt.rt.Argument) in
      let* α13 := borrow α12 (list core.fmt.rt.Argument) in
      let* α14 := pointer_coercion "Unsize" α13 in
      let* α15 := core.fmt.Arguments::["new_v1"] α3 α14 in
      std.io.stdio._print α15 in
    M.alloc tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow
          [ mk_str "One million is written as 1000000
" ]
          (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := borrow [ ] (list core.fmt.rt.Argument) in
      let* α5 := deref α4 (list core.fmt.rt.Argument) in
      let* α6 := borrow α5 (list core.fmt.rt.Argument) in
      let* α7 := pointer_coercion "Unsize" α6 in
      let* α8 := core.fmt.Arguments::["new_v1"] α3 α7 in
      std.io.stdio._print α8 in
    M.alloc tt in
  M.alloc tt.
