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
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t :=
        M.read (mk_str "Destroying a box that contains ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow c)) in
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
  let* x : M.Val u32.t := M.alloc ((Integer.of_Z 5) : u32.t) in
  let* y : M.Val u32.t := M.copy x in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "x is ") in
      let* α1 : ref str.t := M.read (mk_str ", and y is ") in
      let* α2 : ref str.t := M.read (mk_str "
") in
      let* α3 : M.Val (array (ref str.t)) := M.alloc [ α0; α1; α2 ] in
      let* α4 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow x)) in
      let* α5 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow y)) in
      let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4; α5 ] in
      let* α7 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α3))
            (pointer_coercion "Unsize" (borrow α6))) in
      let* α8 : unit := M.call (std.io.stdio._print α7) in
      M.alloc α8 in
    M.alloc tt in
  let* a : M.Val (alloc.boxed.Box.t i32.t alloc.alloc.Global.t) :=
    let* α0 : alloc.boxed.Box.t i32.t alloc.alloc.Global.t :=
      M.call
        ((alloc.boxed.Box.t i32.t alloc.alloc.Global.t)::["new"]
          ((Integer.of_Z 5) : i32.t)) in
    M.alloc α0 in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "a contains: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow a)) in
      let* α4 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α3 ] in
      let* α5 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α4))) in
      let* α6 : unit := M.call (std.io.stdio._print α5) in
      M.alloc α6 in
    M.alloc tt in
  let* b : M.Val (alloc.boxed.Box.t i32.t alloc.alloc.Global.t) := M.copy a in
  let* _ : M.Val unit :=
    let* α0 : alloc.boxed.Box.t i32.t alloc.alloc.Global.t := M.read b in
    let* α1 : unit :=
      M.call (scoping_rules_ownership_and_rules.destroy_box α0) in
    M.alloc α1 in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.