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
    let* α0 : alloc.boxed.Box.t u32.t alloc.alloc.Global.t :=
      M.call
        ((alloc.boxed.Box.t u32.t alloc.alloc.Global.t)::["new"]
          ((Integer.of_Z 5) : u32.t)) in
    M.alloc α0 in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "immutable_box contains ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : core.fmt.rt.Argument.t :=
        M.call
          (core.fmt.rt.Argument.t::["new_display"] (borrow immutable_box)) in
      let* α4 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α3 ] in
      let* α5 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α4))) in
      let* α6 : unit := M.call (std.io.stdio._print α5) in
      M.alloc α6 in
    M.alloc tt in
  let* mutable_box : M.Val (alloc.boxed.Box.t u32.t alloc.alloc.Global.t) :=
    M.copy immutable_box in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "mutable_box contains ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow mutable_box)) in
      let* α4 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α3 ] in
      let* α5 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α4))) in
      let* α6 : unit := M.call (std.io.stdio._print α5) in
      M.alloc α6 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* α0 : alloc.boxed.Box.t u32.t alloc.alloc.Global.t :=
      M.read mutable_box in
    assign (deref α0) ((Integer.of_Z 4) : u32.t) in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "mutable_box now contains ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow mutable_box)) in
      let* α4 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α3 ] in
      let* α5 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α4))) in
      let* α6 : unit := M.call (std.io.stdio._print α5) in
      M.alloc α6 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
