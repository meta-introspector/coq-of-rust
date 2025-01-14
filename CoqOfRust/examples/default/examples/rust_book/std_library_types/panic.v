(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn division(dividend: i32, divisor: i32) -> i32 {
    if divisor == 0 {
        // Division by zero triggers a panic
        panic!("division by zero");
    } else {
        dividend / divisor
    }
}
*)
Definition division (dividend : i32.t) (divisor : i32.t) : M i32.t :=
  let* dividend := M.alloc dividend in
  let* divisor := M.alloc divisor in
  let* α0 : i32.t := M.read divisor in
  let* α1 : M.Val bool.t :=
    M.alloc (BinOp.Pure.eq α0 ((Integer.of_Z 0) : i32.t)) in
  let* α2 : bool.t := M.read (use α1) in
  let* α3 : M.Val i32.t :=
    if α2 then
      let* α0 : ref str.t := M.read (mk_str "division by zero") in
      let* α1 : never.t := M.call (std.panicking.begin_panic α0) in
      let* α2 : i32.t := never_to_any α1 in
      M.alloc α2
    else
      let* α0 : i32.t := M.read dividend in
      let* α1 : i32.t := M.read divisor in
      let* α2 : i32.t := BinOp.Panic.div α0 α1 in
      M.alloc α2 in
  M.read α3.

(*
fn main() {
    // Heap allocated integer
    let _x = Box::new(0i32);

    // This operation will trigger a task failure
    division(3, 0);

    println!("This point won't be reached!");

    // `_x` should get destroyed at this point
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* _x : M.Val (alloc.boxed.Box.t i32.t alloc.alloc.Global.t) :=
    let* α0 : alloc.boxed.Box.t i32.t alloc.alloc.Global.t :=
      M.call
        ((alloc.boxed.Box.t i32.t alloc.alloc.Global.t)::["new"]
          ((Integer.of_Z 0) : i32.t)) in
    M.alloc α0 in
  let* _ : M.Val i32.t :=
    let* α0 : i32.t :=
      M.call
        (panic.division
          ((Integer.of_Z 3) : i32.t)
          ((Integer.of_Z 0) : i32.t)) in
    M.alloc α0 in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "This point won't be reached!
") in
      let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
      let* α2 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_const"]
            (pointer_coercion "Unsize" (borrow α1))) in
      let* α3 : unit := M.call (std.io.stdio._print α2) in
      M.alloc α3 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
