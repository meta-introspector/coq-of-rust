(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn destroy_box(c: Box<i32>) {
    println!("Destroying a box that contains {}", c);

    // `c` is destroyed and the memory freed
}
*)
Definition destroy_box
    (c : alloc.boxed.Box.t i32.t alloc.boxed.Box.Default.A)
    : M unit :=
  let* c := M.alloc c in
  M.function_body
    (let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Destroying a box that contains "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := M.read α2 in
        let* α4 : M.Val (ref (alloc.boxed.Box.t i32.t alloc.alloc.Global.t)) :=
          borrow c in
        let* α5 := M.read α4 in
        let* α6 := core.fmt.rt.Argument.t::["new_display"] α5 in
        let* α7 : M.Val core.fmt.rt.Argument.t := M.alloc α6 in
        let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
        let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α8 in
        let* α10 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α9 in
        let* α11 := M.read α10 in
        let* α12 := core.fmt.Arguments.t::["new_v1"] α3 α11 in
        let* α13 := std.io.stdio._print α12 in
        M.alloc α13 in
      M.alloc tt in
    M.alloc tt).

(*
fn main() {
    // _Stack_ allocated integer
    let x = 5u32;

    // *Copy* `x` into `y` - no resources are moved
    let y = x;

    // Both values can be independently used
    println!("x is {}, and y is {}", x, y);

    // `a` is a pointer to a _heap_ allocated integer
    let a = Box::new(5i32);

    println!("a contains: {}", a);

    // *Move* `a` into `b`
    let b = a;
    // The pointer address of `a` is copied (not the data) into `b`.
    // Both are now pointers to the same heap allocated data, but
    // `b` now owns it.

    // Error! `a` can no longer access the data, because it no longer owns the
    // heap memory
    //println!("a contains: {}", a);
    // TODO ^ Try uncommenting this line

    // This function takes ownership of the heap allocated memory from `b`
    destroy_box(b);

    // Since the heap memory has been freed at this point, this action would
    // result in dereferencing freed memory, but it's forbidden by the compiler
    // Error! Same reason as the previous Error
    //println!("b contains: {}", b);
    // TODO ^ Try uncommenting this line
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* x : M.Val u32.t :=
      let* α0 : M.Val u32.t := M.alloc 5 in
      M.copy α0 in
    let* y : M.Val u32.t := M.copy x in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "x is "; mk_str ", and y is "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := M.read α2 in
        let* α4 : M.Val (ref u32.t) := borrow x in
        let* α5 := M.read α4 in
        let* α6 := core.fmt.rt.Argument.t::["new_display"] α5 in
        let* α7 : M.Val core.fmt.rt.Argument.t := M.alloc α6 in
        let* α8 : M.Val (ref u32.t) := borrow y in
        let* α9 := M.read α8 in
        let* α10 := core.fmt.rt.Argument.t::["new_display"] α9 in
        let* α11 : M.Val core.fmt.rt.Argument.t := M.alloc α10 in
        let* α12 : M.Val (array core.fmt.rt.Argument.t) :=
          M.alloc [ α7; α11 ] in
        let* α13 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α12 in
        let* α14 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α13 in
        let* α15 := M.read α14 in
        let* α16 := core.fmt.Arguments.t::["new_v1"] α3 α15 in
        let* α17 := std.io.stdio._print α16 in
        M.alloc α17 in
      M.alloc tt in
    let* a : M.Val (alloc.boxed.Box.t i32.t alloc.alloc.Global.t) :=
      let* α0 : M.Val i32.t := M.alloc 5 in
      let* α1 := M.read α0 in
      let* α2 := (alloc.boxed.Box.t i32.t alloc.alloc.Global.t)::["new"] α1 in
      M.alloc α2 in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "a contains: "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := M.read α2 in
        let* α4 : M.Val (ref (alloc.boxed.Box.t i32.t alloc.alloc.Global.t)) :=
          borrow a in
        let* α5 := M.read α4 in
        let* α6 := core.fmt.rt.Argument.t::["new_display"] α5 in
        let* α7 : M.Val core.fmt.rt.Argument.t := M.alloc α6 in
        let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
        let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α8 in
        let* α10 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α9 in
        let* α11 := M.read α10 in
        let* α12 := core.fmt.Arguments.t::["new_v1"] α3 α11 in
        let* α13 := std.io.stdio._print α12 in
        M.alloc α13 in
      M.alloc tt in
    let* b : M.Val (alloc.boxed.Box.t i32.t alloc.alloc.Global.t) := M.copy a in
    let* _ : M.Val unit :=
      let* α0 := M.read b in
      let* α1 := scoping_rules_ownership_and_rules.destroy_box α0 in
      M.alloc α1 in
    M.alloc tt).
