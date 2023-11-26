(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Number.
  Inductive t : Set :=
  | Zero
  | One
  | Two.
End Number.

Module Color.
  Inductive t : Set :=
  | Red
  | Green
  | Blue.
End Color.

(*
fn main() {
    // `enums` can be cast as integers.
    println!("zero is {}", Number::Zero as i32);
    println!("one is {}", Number::One as i32);

    println!("roses are #{:06x}", Color::Red as i32);
    println!("violets are #{:06x}", Color::Blue as i32);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "zero is "; mk_str "
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 : M.Val i32.t := cast 0 in
        let* α8 : ref i32.t := borrow α7 in
        let* α9 : M.Val i32.t := deref α8 in
        let* α10 : ref i32.t := borrow α9 in
        let* α11 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_display"] α10 in
        let* α12 : M.Val core.fmt.rt.Argument.t := M.alloc α11 in
        let* α13 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α12 ] in
        let* α14 : ref (array core.fmt.rt.Argument.t) := borrow α13 in
        let* α15 : M.Val (array core.fmt.rt.Argument.t) := deref α14 in
        let* α16 : ref (array core.fmt.rt.Argument.t) := borrow α15 in
        let* α17 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α16 in
        let* α18 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α17 in
        let* α19 := M.read α18 in
        let* α20 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α6 α19 in
        let* α21 : unit := std.io.stdio._print α20 in
        M.alloc α21 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "one is "; mk_str "
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 : M.Val i32.t := cast 1 in
        let* α8 : ref i32.t := borrow α7 in
        let* α9 : M.Val i32.t := deref α8 in
        let* α10 : ref i32.t := borrow α9 in
        let* α11 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_display"] α10 in
        let* α12 : M.Val core.fmt.rt.Argument.t := M.alloc α11 in
        let* α13 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α12 ] in
        let* α14 : ref (array core.fmt.rt.Argument.t) := borrow α13 in
        let* α15 : M.Val (array core.fmt.rt.Argument.t) := deref α14 in
        let* α16 : ref (array core.fmt.rt.Argument.t) := borrow α15 in
        let* α17 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α16 in
        let* α18 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α17 in
        let* α19 := M.read α18 in
        let* α20 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α6 α19 in
        let* α21 : unit := std.io.stdio._print α20 in
        M.alloc α21 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "roses are #"; mk_str "
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 : M.Val isize.t := BinOp.add enums_c_like.Color.Red 0 in
        let* α8 : M.Val i32.t := cast α7 in
        let* α9 : ref i32.t := borrow α8 in
        let* α10 : M.Val i32.t := deref α9 in
        let* α11 : ref i32.t := borrow α10 in
        let* α12 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_lower_hex"] α11 in
        let* α13 : M.Val core.fmt.rt.Argument.t := M.alloc α12 in
        let* α14 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α13 ] in
        let* α15 : ref (array core.fmt.rt.Argument.t) := borrow α14 in
        let* α16 : M.Val (array core.fmt.rt.Argument.t) := deref α15 in
        let* α17 : ref (array core.fmt.rt.Argument.t) := borrow α16 in
        let* α18 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α17 in
        let* α19 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α18 in
        let* α20 := M.read α19 in
        let* α21 : M.Val usize.t := M.alloc 0 in
        let* α22 := M.read α21 in
        let* α23 : M.Val char.t := M.alloc " "%char in
        let* α24 := M.read α23 in
        let* α25 : M.Val u32.t := M.alloc 8 in
        let* α26 := M.read α25 in
        let* α27 : M.Val usize.t := M.alloc 6 in
        let* α28 := M.read α27 in
        let* α29 : core.fmt.rt.Count.t := "unimplemented parent_kind" α28 in
        let* α30 : core.fmt.rt.Placeholder.t :=
          core.fmt.rt.Placeholder.t::["new"]
            α22
            α24
            core.fmt.rt.Alignment.Unknown
            α26
            core.fmt.rt.Count.Implied
            α29 in
        let* α31 : M.Val core.fmt.rt.Placeholder.t := M.alloc α30 in
        let* α32 : M.Val (array core.fmt.rt.Placeholder.t) := M.alloc [ α31 ] in
        let* α33 : ref (array core.fmt.rt.Placeholder.t) := borrow α32 in
        let* α34 : M.Val (array core.fmt.rt.Placeholder.t) := deref α33 in
        let* α35 : ref (array core.fmt.rt.Placeholder.t) := borrow α34 in
        let* α36 : M.Val (ref (array core.fmt.rt.Placeholder.t)) :=
          M.alloc α35 in
        let* α37 : M.Val (ref (slice core.fmt.rt.Placeholder.t)) :=
          pointer_coercion "Unsize" α36 in
        let* α38 := M.read α37 in
        let* α0 : core.fmt.rt.UnsafeArg.t := core.fmt.rt.UnsafeArg.t::["new"] in
        let* α39 : M.Val core.fmt.rt.UnsafeArg.t := M.alloc α0 in
        let* α40 := M.read α39 in
        let* α41 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1_formatted"] α6 α20 α38 α40 in
        let* α42 : unit := std.io.stdio._print α41 in
        M.alloc α42 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "violets are #"; mk_str "
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 : M.Val isize.t := BinOp.add enums_c_like.Color.Blue 0 in
        let* α8 : M.Val i32.t := cast α7 in
        let* α9 : ref i32.t := borrow α8 in
        let* α10 : M.Val i32.t := deref α9 in
        let* α11 : ref i32.t := borrow α10 in
        let* α12 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_lower_hex"] α11 in
        let* α13 : M.Val core.fmt.rt.Argument.t := M.alloc α12 in
        let* α14 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α13 ] in
        let* α15 : ref (array core.fmt.rt.Argument.t) := borrow α14 in
        let* α16 : M.Val (array core.fmt.rt.Argument.t) := deref α15 in
        let* α17 : ref (array core.fmt.rt.Argument.t) := borrow α16 in
        let* α18 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α17 in
        let* α19 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α18 in
        let* α20 := M.read α19 in
        let* α21 : M.Val usize.t := M.alloc 0 in
        let* α22 := M.read α21 in
        let* α23 : M.Val char.t := M.alloc " "%char in
        let* α24 := M.read α23 in
        let* α25 : M.Val u32.t := M.alloc 8 in
        let* α26 := M.read α25 in
        let* α27 : M.Val usize.t := M.alloc 6 in
        let* α28 := M.read α27 in
        let* α29 : core.fmt.rt.Count.t := "unimplemented parent_kind" α28 in
        let* α30 : core.fmt.rt.Placeholder.t :=
          core.fmt.rt.Placeholder.t::["new"]
            α22
            α24
            core.fmt.rt.Alignment.Unknown
            α26
            core.fmt.rt.Count.Implied
            α29 in
        let* α31 : M.Val core.fmt.rt.Placeholder.t := M.alloc α30 in
        let* α32 : M.Val (array core.fmt.rt.Placeholder.t) := M.alloc [ α31 ] in
        let* α33 : ref (array core.fmt.rt.Placeholder.t) := borrow α32 in
        let* α34 : M.Val (array core.fmt.rt.Placeholder.t) := deref α33 in
        let* α35 : ref (array core.fmt.rt.Placeholder.t) := borrow α34 in
        let* α36 : M.Val (ref (array core.fmt.rt.Placeholder.t)) :=
          M.alloc α35 in
        let* α37 : M.Val (ref (slice core.fmt.rt.Placeholder.t)) :=
          pointer_coercion "Unsize" α36 in
        let* α38 := M.read α37 in
        let* α0 : core.fmt.rt.UnsafeArg.t := core.fmt.rt.UnsafeArg.t::["new"] in
        let* α39 : M.Val core.fmt.rt.UnsafeArg.t := M.alloc α0 in
        let* α40 := M.read α39 in
        let* α41 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1_formatted"] α6 α20 α38 α40 in
        let* α42 : unit := std.io.stdio._print α41 in
        M.alloc α42 in
      M.alloc tt in
    M.alloc tt).
