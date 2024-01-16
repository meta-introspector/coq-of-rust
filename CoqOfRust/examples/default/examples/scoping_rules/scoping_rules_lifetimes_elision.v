(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn elided_input(x: &i32) {
    println!("`elided_input`: {}", x);
}
*)
Definition elided_input (x : ref i32.t) : M unit :=
  let* x := M.alloc x in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "`elided_input`: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow x)) in
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

(*
fn annotated_input<'a>(x: &'a i32) {
    println!("`annotated_input`: {}", x);
}
*)
Definition annotated_input (x : ref i32.t) : M unit :=
  let* x := M.alloc x in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "`annotated_input`: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow x)) in
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

(*
fn elided_pass(x: &i32) -> &i32 {
    x
}
*)
Definition elided_pass (x : ref i32.t) : M (ref i32.t) :=
  let* x := M.alloc x in
  M.read x.

(*
fn annotated_pass<'a>(x: &'a i32) -> &'a i32 {
    x
}
*)
Definition annotated_pass (x : ref i32.t) : M (ref i32.t) :=
  let* x := M.alloc x in
  M.read x.

(*
fn main() {
    let x = 3;

    elided_input(&x);
    annotated_input(&x);

    println!("`elided_pass`: {}", elided_pass(&x));
    println!("`annotated_pass`: {}", annotated_pass(&x));
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* x : M.Val i32.t := M.alloc ((Integer.of_Z 3) : i32.t) in
  let* _ : M.Val unit :=
    let* α0 : unit :=
      M.call (scoping_rules_lifetimes_elision.elided_input (borrow x)) in
    M.alloc α0 in
  let* _ : M.Val unit :=
    let* α0 : unit :=
      M.call (scoping_rules_lifetimes_elision.annotated_input (borrow x)) in
    M.alloc α0 in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "`elided_pass`: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : ref i32.t :=
        M.call (scoping_rules_lifetimes_elision.elided_pass (borrow x)) in
      let* α4 : M.Val (ref i32.t) := M.alloc α3 in
      let* α5 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α4)) in
      let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
      let* α7 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α6))) in
      let* α8 : unit := M.call (std.io.stdio._print α7) in
      M.alloc α8 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "`annotated_pass`: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : ref i32.t :=
        M.call (scoping_rules_lifetimes_elision.annotated_pass (borrow x)) in
      let* α4 : M.Val (ref i32.t) := M.alloc α3 in
      let* α5 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α4)) in
      let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
      let* α7 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α6))) in
      let* α8 : unit := M.call (std.io.stdio._print α7) in
      M.alloc α8 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
