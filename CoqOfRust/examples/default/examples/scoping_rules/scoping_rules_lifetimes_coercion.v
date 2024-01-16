(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn multiply<'a>(first: &'a i32, second: &'a i32) -> i32 {
    first * second
}
*)
Definition multiply (first : ref i32.t) (second : ref i32.t) : M i32.t :=
  let* first := M.alloc first in
  let* second := M.alloc second in
  let* α0 : _ :=
    ltac:(M.get_method (fun ℐ =>
      core.ops.arith.Mul.mul
        (Self := ref i32.t)
        (Rhs := ref i32.t)
        (Trait := ℐ))) in
  let* α1 : ref i32.t := M.read first in
  let* α2 : ref i32.t := M.read second in
  M.call (α0 α1 α2).

(*
fn choose_first<'a: 'b, 'b>(first: &'a i32, _: &'b i32) -> &'b i32 {
    first
}
*)
Definition choose_first (first : ref i32.t) (arg : ref i32.t) : M (ref i32.t) :=
  let* first := M.alloc first in
  let* arg := M.alloc arg in
  M.read first.

(*
fn main() {
    let first = 2; // Longer lifetime

    {
        let second = 3; // Shorter lifetime

        println!("The product is {}", multiply(&first, &second));
        println!("{} is the first", choose_first(&first, &second));
    };
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* first : M.Val i32.t := M.alloc ((Integer.of_Z 2) : i32.t) in
  let* _ : M.Val unit :=
    let* second : M.Val i32.t := M.alloc ((Integer.of_Z 3) : i32.t) in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : ref str.t := M.read (mk_str "The product is ") in
        let* α1 : ref str.t := M.read (mk_str "
") in
        let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
        let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
        let* α4 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α3) in
        let* α5 : i32.t :=
          M.call
            (scoping_rules_lifetimes_coercion.multiply
              (borrow first)
              (borrow second)) in
        let* α6 : M.Val i32.t := M.alloc α5 in
        let* α7 : core.fmt.rt.Argument.t :=
          M.call (impl core.fmt.rt.Argument.t "new_display" (borrow α6)) in
        let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
        let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α8) in
        let* α10 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α9) in
        let* α11 : core.fmt.Arguments.t :=
          M.call (impl core.fmt.Arguments.t "new_v1" α4 α10) in
        let* α12 : unit := M.call (std.io.stdio._print α11) in
        M.alloc α12 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : ref str.t := M.read (mk_str "") in
        let* α1 : ref str.t := M.read (mk_str " is the first
") in
        let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
        let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
        let* α4 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α3) in
        let* α5 : ref i32.t :=
          M.call
            (scoping_rules_lifetimes_coercion.choose_first
              (borrow first)
              (borrow second)) in
        let* α6 : M.Val (ref i32.t) := M.alloc α5 in
        let* α7 : core.fmt.rt.Argument.t :=
          M.call (impl core.fmt.rt.Argument.t "new_display" (borrow α6)) in
        let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
        let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α8) in
        let* α10 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α9) in
        let* α11 : core.fmt.Arguments.t :=
          M.call (impl core.fmt.Arguments.t "new_v1" α4 α10) in
        let* α12 : unit := M.call (std.io.stdio._print α11) in
        M.alloc α12 in
      M.alloc tt in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
