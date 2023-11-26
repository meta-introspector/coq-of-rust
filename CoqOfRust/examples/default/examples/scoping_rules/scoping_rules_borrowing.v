(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn eat_box_i32(boxed_i32: Box<i32>) {
    println!("Destroying box that contains {}", boxed_i32);
}
*)
Definition eat_box_i32
    (boxed_i32 : M.Val (alloc.boxed.Box.t i32.t alloc.boxed.Box.Default.A))
    : M unit :=
  M.function_body
    (let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Destroying box that contains "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : M.Val (ref (alloc.boxed.Box.t i32.t alloc.alloc.Global.t)) :=
          borrow boxed_i32 in
        let* α4 := core.fmt.rt.Argument.t::["new_display"] α3 in
        let* α5 : M.Val core.fmt.rt.Argument.t := M.alloc α4 in
        let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
        let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α6 in
        let* α8 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α7 in
        let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
        let* α10 : M.Val core.fmt.Arguments.t := M.alloc α9 in
        let* α11 := std.io.stdio._print α10 in
        M.alloc α11 in
      M.alloc tt in
    M.alloc tt).

(*
fn borrow_i32(borrowed_i32: &i32) {
    println!("This int is: {}", borrowed_i32);
}
*)
Definition borrow_i32 (borrowed_i32 : M.Val (ref i32.t)) : M unit :=
  M.function_body
    (let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "This int is: "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : M.Val (ref (ref i32.t)) := borrow borrowed_i32 in
        let* α4 := core.fmt.rt.Argument.t::["new_display"] α3 in
        let* α5 : M.Val core.fmt.rt.Argument.t := M.alloc α4 in
        let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
        let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α6 in
        let* α8 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α7 in
        let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
        let* α10 : M.Val core.fmt.Arguments.t := M.alloc α9 in
        let* α11 := std.io.stdio._print α10 in
        M.alloc α11 in
      M.alloc tt in
    M.alloc tt).

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
  M.function_body
    (let* boxed_i32 : M.Val (alloc.boxed.Box.t i32.t alloc.alloc.Global.t) :=
      let* α0 : M.Val i32.t := M.alloc 5 in
      let* α1 := (alloc.boxed.Box.t i32.t alloc.alloc.Global.t)::["new"] α0 in
      M.alloc α1 in
    let* stacked_i32 : M.Val i32.t :=
      let* α0 : M.Val i32.t := M.alloc 6 in
      M.copy α0 in
    let* _ : M.Val unit :=
      let* α0 : M.Val i32.t := deref boxed_i32 in
      let* α1 : M.Val (ref i32.t) := borrow α0 in
      let* α2 := scoping_rules_borrowing.borrow_i32 α1 in
      M.alloc α2 in
    let* _ : M.Val unit :=
      let* α0 : M.Val (ref i32.t) := borrow stacked_i32 in
      let* α1 := scoping_rules_borrowing.borrow_i32 α0 in
      M.alloc α1 in
    let* _ : M.Val unit :=
      let* _ref_to_i32 : M.Val (ref i32.t) :=
        let* α0 : M.Val i32.t := deref boxed_i32 in
        let* α1 : M.Val (ref i32.t) := borrow α0 in
        M.copy α1 in
      let* _ : M.Val unit :=
        let* α0 : M.Val i32.t := deref _ref_to_i32 in
        let* α1 : M.Val (ref i32.t) := borrow α0 in
        let* α2 := scoping_rules_borrowing.borrow_i32 α1 in
        M.alloc α2 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* α0 := scoping_rules_borrowing.eat_box_i32 boxed_i32 in
      M.alloc α0 in
    M.alloc tt).
