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
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "zero is "; mk_str "
" ] in
      let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
      let* α2 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α1) in
      let* α3 : isize.t := M.read 0 in
      let* α4 : i32.t := cast α3 in
      let* α5 : M.Val i32.t := M.alloc α4 in
      let* α6 : core.fmt.rt.Argument.t :=
        core.fmt.rt.Argument.t::["new_display"] (borrow α5) in
      let* α7 : M.Val core.fmt.rt.Argument.t := M.alloc α6 in
      let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
      let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α8) in
      let* α10 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α9) in
      let* α11 : core.fmt.Arguments.t :=
        core.fmt.Arguments.t::["new_v1"] α2 α10 in
      let* α12 : unit := std.io.stdio._print α11 in
      M.alloc α12 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "one is "; mk_str "
" ] in
      let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
      let* α2 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α1) in
      let* α3 : isize.t := M.read 1 in
      let* α4 : i32.t := cast α3 in
      let* α5 : M.Val i32.t := M.alloc α4 in
      let* α6 : core.fmt.rt.Argument.t :=
        core.fmt.rt.Argument.t::["new_display"] (borrow α5) in
      let* α7 : M.Val core.fmt.rt.Argument.t := M.alloc α6 in
      let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
      let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α8) in
      let* α10 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α9) in
      let* α11 : core.fmt.Arguments.t :=
        core.fmt.Arguments.t::["new_v1"] α2 α10 in
      let* α12 : unit := std.io.stdio._print α11 in
      M.alloc α12 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "roses are #"; mk_str "
" ] in
      let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
      let* α2 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α1) in
      let* α3 : isize.t := M.read enums_c_like.Color.Red in
      let* α4 : isize.t := M.read 0 in
      let* α5 : isize.t := BinOp.Panic.add α3 α4 in
      let* α6 : i32.t := cast α5 in
      let* α7 : M.Val i32.t := M.alloc α6 in
      let* α8 : core.fmt.rt.Argument.t :=
        core.fmt.rt.Argument.t::["new_lower_hex"] (borrow α7) in
      let* α9 : M.Val core.fmt.rt.Argument.t := M.alloc α8 in
      let* α10 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α9 ] in
      let* α11 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α10) in
      let* α12 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α11) in
      let* α13 : core.fmt.rt.Count.t :=
        "unimplemented parent_kind" (Integer.of_Z 6) in
      let* α14 : core.fmt.rt.Placeholder.t :=
        core.fmt.rt.Placeholder.t::["new"]
          (Integer.of_Z 0)
          " "%char
          core.fmt.rt.Alignment.Unknown
          (Integer.of_Z 8)
          core.fmt.rt.Count.Implied
          α13 in
      let* α15 : M.Val core.fmt.rt.Placeholder.t := M.alloc α14 in
      let* α16 : M.Val (array core.fmt.rt.Placeholder.t) := M.alloc [ α15 ] in
      let* α17 : M.Val (ref (array core.fmt.rt.Placeholder.t)) :=
        M.alloc (borrow α16) in
      let* α18 : ref (slice core.fmt.rt.Placeholder.t) :=
        M.read (pointer_coercion "Unsize" α17) in
      let* α19 : core.fmt.rt.UnsafeArg.t := core.fmt.rt.UnsafeArg.t::["new"] in
      let* α20 : core.fmt.Arguments.t :=
        core.fmt.Arguments.t::["new_v1_formatted"] α2 α12 α18 α19 in
      let* α21 : unit := std.io.stdio._print α20 in
      M.alloc α21 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "violets are #"; mk_str "
" ] in
      let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
      let* α2 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α1) in
      let* α3 : isize.t := M.read enums_c_like.Color.Blue in
      let* α4 : isize.t := M.read 0 in
      let* α5 : isize.t := BinOp.Panic.add α3 α4 in
      let* α6 : i32.t := cast α5 in
      let* α7 : M.Val i32.t := M.alloc α6 in
      let* α8 : core.fmt.rt.Argument.t :=
        core.fmt.rt.Argument.t::["new_lower_hex"] (borrow α7) in
      let* α9 : M.Val core.fmt.rt.Argument.t := M.alloc α8 in
      let* α10 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α9 ] in
      let* α11 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α10) in
      let* α12 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α11) in
      let* α13 : core.fmt.rt.Count.t :=
        "unimplemented parent_kind" (Integer.of_Z 6) in
      let* α14 : core.fmt.rt.Placeholder.t :=
        core.fmt.rt.Placeholder.t::["new"]
          (Integer.of_Z 0)
          " "%char
          core.fmt.rt.Alignment.Unknown
          (Integer.of_Z 8)
          core.fmt.rt.Count.Implied
          α13 in
      let* α15 : M.Val core.fmt.rt.Placeholder.t := M.alloc α14 in
      let* α16 : M.Val (array core.fmt.rt.Placeholder.t) := M.alloc [ α15 ] in
      let* α17 : M.Val (ref (array core.fmt.rt.Placeholder.t)) :=
        M.alloc (borrow α16) in
      let* α18 : ref (slice core.fmt.rt.Placeholder.t) :=
        M.read (pointer_coercion "Unsize" α17) in
      let* α19 : core.fmt.rt.UnsafeArg.t := core.fmt.rt.UnsafeArg.t::["new"] in
      let* α20 : core.fmt.Arguments.t :=
        core.fmt.Arguments.t::["new_v1_formatted"] α2 α12 α18 α19 in
      let* α21 : unit := std.io.stdio._print α20 in
      M.alloc α21 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
