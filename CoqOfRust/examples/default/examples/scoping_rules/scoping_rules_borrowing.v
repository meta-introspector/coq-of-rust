(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn eat_box_i32(boxed_i32: Box<i32>) {
    println!("Destroying box that contains {}", boxed_i32);
}
*)
Definition eat_box_i32
    (boxed_i32 : alloc.boxed.Box.t i32.t alloc.boxed.Box.Default.A)
    : M unit :=
  let* boxed_i32 : M.Val (alloc.boxed.Box.t i32.t alloc.boxed.Box.Default.A) :=
    M.alloc boxed_i32 in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "Destroying box that contains "; mk_str "
" ] in
      let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
      let* α2 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α1) in
      let* α3 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow boxed_i32)) in
      let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
      let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
      let* α6 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α5) in
      let* α7 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α6) in
      let* α8 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α2 α7) in
      let* α9 : unit := M.call (std.io.stdio._print α8) in
      M.alloc α9 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

(*
fn borrow_i32(borrowed_i32: &i32) {
    println!("This int is: {}", borrowed_i32);
}
*)
Definition borrow_i32 (borrowed_i32 : ref i32.t) : M unit :=
  let* borrowed_i32 : M.Val (ref i32.t) := M.alloc borrowed_i32 in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "This int is: "; mk_str "
" ] in
      let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
      let* α2 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α1) in
      let* α3 : core.fmt.rt.Argument.t :=
        M.call
          (core.fmt.rt.Argument.t::["new_display"] (borrow borrowed_i32)) in
      let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
      let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
      let* α6 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α5) in
      let* α7 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α6) in
      let* α8 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α2 α7) in
      let* α9 : unit := M.call (std.io.stdio._print α8) in
      M.alloc α9 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

(*
fn main() {
    // Create a boxed i32, and a stacked i32
    let boxed_i32 = Box::new(5_i32);
    let stacked_i32 = 6_i32;

    // Borrow the contents of the box. Ownership is not taken,
    // so the contents can be borrowed again.
    borrow_i32(&boxed_i32);
    borrow_i32(&stacked_i32);

    {
        // Take a reference to the data contained inside the box
        let _ref_to_i32: &i32 = &boxed_i32;

        // Error!
        // Can't destroy `boxed_i32` while the inner value is borrowed later in scope.
        // eat_box_i32(boxed_i32);
        // FIXME ^ Comment out this line

        // Attempt to borrow `_ref_to_i32` after inner value is destroyed
        borrow_i32(_ref_to_i32);
        // `_ref_to_i32` goes out of scope and is no longer borrowed.
    }

    // `boxed_i32` can now give up ownership to `eat_box` and be destroyed
    eat_box_i32(boxed_i32);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* boxed_i32 : M.Val (alloc.boxed.Box.t i32.t alloc.alloc.Global.t) :=
    let* α0 : alloc.boxed.Box.t i32.t alloc.alloc.Global.t :=
      M.call
        ((alloc.boxed.Box.t i32.t alloc.alloc.Global.t)::["new"]
          (Integer.of_Z 5)) in
    M.alloc α0 in
  let* stacked_i32 : M.Val i32.t := M.alloc (Integer.of_Z 6) in
  let* _ : M.Val unit :=
    let* α0 : alloc.boxed.Box.t i32.t alloc.alloc.Global.t :=
      M.read boxed_i32 in
    let* α1 : unit :=
      M.call (scoping_rules_borrowing.borrow_i32 (borrow (deref α0))) in
    M.alloc α1 in
  let* _ : M.Val unit :=
    let* α0 : unit :=
      M.call (scoping_rules_borrowing.borrow_i32 (borrow stacked_i32)) in
    M.alloc α0 in
  let* _ : M.Val unit :=
    let* _ref_to_i32 : M.Val (ref i32.t) :=
      let* α0 : alloc.boxed.Box.t i32.t alloc.alloc.Global.t :=
        M.read boxed_i32 in
      M.alloc (borrow (deref α0)) in
    let* _ : M.Val unit :=
      let* α0 : ref i32.t := M.read _ref_to_i32 in
      let* α1 : unit := M.call (scoping_rules_borrowing.borrow_i32 α0) in
      M.alloc α1 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* α0 : alloc.boxed.Box.t i32.t alloc.alloc.Global.t :=
      M.read boxed_i32 in
    let* α1 : unit := M.call (scoping_rules_borrowing.eat_box_i32 α0) in
    M.alloc α1 in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.