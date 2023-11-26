(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    let immutable_box = Box::new(5u32);

    println!("immutable_box contains {}", immutable_box);

    // Mutability error
    //*immutable_box = 4;

    // *Move* the box, changing the ownership (and mutability)
    let mut mutable_box = immutable_box;

    println!("mutable_box contains {}", mutable_box);

    // Modify the contents of the box
    *mutable_box = 4;

    println!("mutable_box now contains {}", mutable_box);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* immutable_box : M.Val (alloc.boxed.Box.t u32.t alloc.alloc.Global.t) :=
    let* α0 : M.Val u32.t := M.alloc 5 in
    let* α1 : u32.t := M.read α0 in
    let* α2 : alloc.boxed.Box.t u32.t alloc.alloc.Global.t :=
      (alloc.boxed.Box.t u32.t alloc.alloc.Global.t)::["new"] α1 in
    M.alloc α2 in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "immutable_box contains "; mk_str "
" ] in
      let* α1 : ref (array (ref str.t)) := borrow α0 in
      let* α2 : M.Val (ref (array (ref str.t))) := M.alloc α1 in
      let* α3 : M.Val (ref (slice (ref str.t))) :=
        pointer_coercion "Unsize" α2 in
      let* α4 : ref (slice (ref str.t)) := M.read α3 in
      let* α5 : ref (alloc.boxed.Box.t u32.t alloc.alloc.Global.t) :=
        borrow immutable_box in
      let* α6 : core.fmt.rt.Argument.t :=
        core.fmt.rt.Argument.t::["new_display"] α5 in
      let* α7 : M.Val core.fmt.rt.Argument.t := M.alloc α6 in
      let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
      let* α9 : ref (array core.fmt.rt.Argument.t) := borrow α8 in
      let* α10 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α9 in
      let* α11 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
        pointer_coercion "Unsize" α10 in
      let* α12 : ref (slice core.fmt.rt.Argument.t) := M.read α11 in
      let* α13 : core.fmt.Arguments.t :=
        core.fmt.Arguments.t::["new_v1"] α4 α12 in
      let* α14 : unit := std.io.stdio._print α13 in
      M.alloc α14 in
    M.alloc tt in
  let* mutable_box : M.Val (alloc.boxed.Box.t u32.t alloc.alloc.Global.t) :=
    M.copy immutable_box in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "mutable_box contains "; mk_str "
" ] in
      let* α1 : ref (array (ref str.t)) := borrow α0 in
      let* α2 : M.Val (ref (array (ref str.t))) := M.alloc α1 in
      let* α3 : M.Val (ref (slice (ref str.t))) :=
        pointer_coercion "Unsize" α2 in
      let* α4 : ref (slice (ref str.t)) := M.read α3 in
      let* α5 : ref (alloc.boxed.Box.t u32.t alloc.alloc.Global.t) :=
        borrow mutable_box in
      let* α6 : core.fmt.rt.Argument.t :=
        core.fmt.rt.Argument.t::["new_display"] α5 in
      let* α7 : M.Val core.fmt.rt.Argument.t := M.alloc α6 in
      let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
      let* α9 : ref (array core.fmt.rt.Argument.t) := borrow α8 in
      let* α10 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α9 in
      let* α11 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
        pointer_coercion "Unsize" α10 in
      let* α12 : ref (slice core.fmt.rt.Argument.t) := M.read α11 in
      let* α13 : core.fmt.Arguments.t :=
        core.fmt.Arguments.t::["new_v1"] α4 α12 in
      let* α14 : unit := std.io.stdio._print α13 in
      M.alloc α14 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* α0 : alloc.boxed.Box.t u32.t alloc.alloc.Global.t :=
      M.read mutable_box in
    let* α1 : M.Val u32.t := deref α0 in
    let* α2 : M.Val u32.t := M.alloc 4 in
    let* α3 : u32.t := M.read α2 in
    assign α1 α3 in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "mutable_box now contains "; mk_str "
" ] in
      let* α1 : ref (array (ref str.t)) := borrow α0 in
      let* α2 : M.Val (ref (array (ref str.t))) := M.alloc α1 in
      let* α3 : M.Val (ref (slice (ref str.t))) :=
        pointer_coercion "Unsize" α2 in
      let* α4 : ref (slice (ref str.t)) := M.read α3 in
      let* α5 : ref (alloc.boxed.Box.t u32.t alloc.alloc.Global.t) :=
        borrow mutable_box in
      let* α6 : core.fmt.rt.Argument.t :=
        core.fmt.rt.Argument.t::["new_display"] α5 in
      let* α7 : M.Val core.fmt.rt.Argument.t := M.alloc α6 in
      let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
      let* α9 : ref (array core.fmt.rt.Argument.t) := borrow α8 in
      let* α10 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α9 in
      let* α11 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
        pointer_coercion "Unsize" α10 in
      let* α12 : ref (slice core.fmt.rt.Argument.t) := M.read α11 in
      let* α13 : core.fmt.Arguments.t :=
        core.fmt.Arguments.t::["new_v1"] α4 α12 in
      let* α14 : unit := std.io.stdio._print α13 in
      M.alloc α14 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
