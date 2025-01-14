(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    let _immutable_binding = 1;
    let mut mutable_binding = 1;

    println!("Before mutation: {}", mutable_binding);

    // Ok
    mutable_binding += 1;

    println!("After mutation: {}", mutable_binding);

    // Error!
    // _immutable_binding += 1;
    // FIXME ^ Comment out this line
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* _immutable_binding : M.Val i32.t := M.alloc ((Integer.of_Z 1) : i32.t) in
  let* mutable_binding : M.Val i32.t := M.alloc ((Integer.of_Z 1) : i32.t) in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "Before mutation: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : core.fmt.rt.Argument.t :=
        M.call
          (core.fmt.rt.Argument.t::["new_display"] (borrow mutable_binding)) in
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
    let β : M.Val i32.t := mutable_binding in
    let* α0 := M.read β in
    let* α1 := BinOp.Panic.add α0 ((Integer.of_Z 1) : i32.t) in
    assign β α1 in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "After mutation: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : core.fmt.rt.Argument.t :=
        M.call
          (core.fmt.rt.Argument.t::["new_display"] (borrow mutable_binding)) in
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
