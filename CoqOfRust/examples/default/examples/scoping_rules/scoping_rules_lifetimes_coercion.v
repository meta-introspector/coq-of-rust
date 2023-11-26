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
  M.function_body
    (let* α0 := M.read first in
    let* α1 := M.read second in
    let* α2 :=
      (core.ops.arith.Mul.mul (Self := ref i32.t) (Trait := ltac:(refine _)))
        α0
        α1 in
    M.alloc α2).

(*
fn choose_first<'a: 'b, 'b>(first: &'a i32, _: &'b i32) -> &'b i32 {
    first
}
*)
Definition choose_first (first : ref i32.t) (arg : ref i32.t) : M (ref i32.t) :=
  let* first := M.alloc first in
  let* arg := M.alloc arg in
  M.function_body
    (let* α0 : M.Val i32.t := deref first in
    borrow α0).

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
  M.function_body
    (let* first : M.Val i32.t :=
      let* α0 : M.Val i32.t := M.alloc 2 in
      M.copy α0 in
    let* _ : M.Val unit :=
      let* second : M.Val i32.t :=
        let* α0 : M.Val i32.t := M.alloc 3 in
        M.copy α0 in
      let* _ : M.Val unit :=
        let* _ : M.Val unit :=
          let* α0 : M.Val (array (ref str.t)) :=
            M.alloc [ mk_str "The product is "; mk_str "
" ] in
          let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
          let* α2 : M.Val (ref (slice (ref str.t))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 := M.read α2 in
          let* α4 : M.Val (ref i32.t) := borrow first in
          let* α5 := M.read α4 in
          let* α6 : M.Val (ref i32.t) := borrow second in
          let* α7 := M.read α6 in
          let* α8 := scoping_rules_lifetimes_coercion.multiply α5 α7 in
          let* α9 : M.Val i32.t := M.alloc α8 in
          let* α10 : M.Val (ref i32.t) := borrow α9 in
          let* α11 := M.read α10 in
          let* α12 := core.fmt.rt.Argument.t::["new_display"] α11 in
          let* α13 : M.Val core.fmt.rt.Argument.t := M.alloc α12 in
          let* α14 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α13 ] in
          let* α15 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α14 in
          let* α16 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
            pointer_coercion "Unsize" α15 in
          let* α17 := M.read α16 in
          let* α18 := core.fmt.Arguments.t::["new_v1"] α3 α17 in
          let* α19 := std.io.stdio._print α18 in
          M.alloc α19 in
        M.alloc tt in
      let* _ : M.Val unit :=
        let* _ : M.Val unit :=
          let* α0 : M.Val (array (ref str.t)) :=
            M.alloc [ mk_str ""; mk_str " is the first
" ] in
          let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
          let* α2 : M.Val (ref (slice (ref str.t))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 := M.read α2 in
          let* α4 : M.Val (ref i32.t) := borrow first in
          let* α5 := M.read α4 in
          let* α6 : M.Val (ref i32.t) := borrow second in
          let* α7 := M.read α6 in
          let* α8 := scoping_rules_lifetimes_coercion.choose_first α5 α7 in
          let* α9 : M.Val (ref i32.t) := M.alloc α8 in
          let* α10 : M.Val (ref (ref i32.t)) := borrow α9 in
          let* α11 := M.read α10 in
          let* α12 := core.fmt.rt.Argument.t::["new_display"] α11 in
          let* α13 : M.Val core.fmt.rt.Argument.t := M.alloc α12 in
          let* α14 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α13 ] in
          let* α15 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α14 in
          let* α16 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
            pointer_coercion "Unsize" α15 in
          let* α17 := M.read α16 in
          let* α18 := core.fmt.Arguments.t::["new_v1"] α3 α17 in
          let* α19 := std.io.stdio._print α18 in
          M.alloc α19 in
        M.alloc tt in
      M.alloc tt in
    M.alloc tt).
