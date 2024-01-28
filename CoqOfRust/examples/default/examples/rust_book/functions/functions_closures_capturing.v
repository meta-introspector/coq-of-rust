(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    use std::mem;

    let color = String::from("green");

    // A closure to print `color` which immediately borrows (`&`) `color` and
    // stores the borrow and closure in the `print` variable. It will remain
    // borrowed until `print` is used the last time.
    //
    // `println!` only requires arguments by immutable reference so it doesn't
    // impose anything more restrictive.
    let print = || println!("`color`: {}", color);

    // Call the closure using the borrow.
    print();

    // `color` can be borrowed immutably again, because the closure only holds
    // an immutable reference to `color`.
    let _reborrow = &color;
    print();

    // A move or reborrow is allowed after the final use of `print`
    let _color_moved = color;

    let mut count = 0;
    // A closure to increment `count` could take either `&mut count` or `count`
    // but `&mut count` is less restrictive so it takes that. Immediately
    // borrows `count`.
    //
    // A `mut` is required on `inc` because a `&mut` is stored inside. Thus,
    // calling the closure mutates the closure which requires a `mut`.
    let mut inc = || {
        count += 1;
        println!("`count`: {}", count);
    };

    // Call the closure using a mutable borrow.
    inc();

    // The closure still mutably borrows `count` because it is called later.
    // An attempt to reborrow will lead to an error.
    // let _reborrow = &count;
    // ^ TODO: try uncommenting this line.
    inc();

    // The closure no longer needs to borrow `&mut count`. Therefore, it is
    // possible to reborrow without an error
    let _count_reborrowed = &mut count;

    // A non-copy type.
    let movable = Box::new(3);

    // `mem::drop` requires `T` so this must take by value. A copy type
    // would copy into the closure leaving the original untouched.
    // A non-copy must move and so `movable` immediately moves into
    // the closure.
    let consume = || {
        println!("`movable`: {:?}", movable);
        mem::drop(movable);
    };

    // `consume` consumes the variable so this can only be called once.
    consume();
    // consume();
    // ^ TODO: Try uncommenting this line.
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* color : M.Val alloc.string.String.t :=
    let* α0 : (ref str.t) -> M alloc.string.String.t :=
      ltac:(M.get_method (fun ℐ =>
        core.convert.From.from
          (Self := alloc.string.String.t)
          (T := ref str.t)
          (Trait := ℐ))) in
    let* α1 : ref str.t := M.read (mk_str "green") in
    let* α2 : alloc.string.String.t := M.call (α0 α1) in
    M.alloc α2 in
  let* print : M.Val (unit -> M unit) :=
    M.alloc
      (fun (α0 : unit) =>
        (let* α0 := M.alloc α0 in
        match_operator
          α0
          [
            fun γ =>
              (let* _ : M.Val unit :=
                let* α0 : ref str.t := M.read (mk_str "`color`: ") in
                let* α1 : ref str.t := M.read (mk_str "
") in
                let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
                let* α3 : core.fmt.rt.Argument.t :=
                  M.call
                    (core.fmt.rt.Argument.t::["new_display"] (borrow color)) in
                let* α4 : M.Val (array core.fmt.rt.Argument.t) :=
                  M.alloc [ α3 ] in
                let* α5 : core.fmt.Arguments.t :=
                  M.call
                    (core.fmt.Arguments.t::["new_v1"]
                      (pointer_coercion "Unsize" (borrow α2))
                      (pointer_coercion "Unsize" (borrow α4))) in
                let* α6 : unit := M.call (std.io.stdio._print α5) in
                M.alloc α6 in
              let* α0 : M.Val unit := M.alloc tt in
              M.read α0) :
              M unit
          ]) :
        M unit) in
  let* _ : M.Val unit :=
    let* α0 : (ref (unit -> M unit)) -> unit -> M _ :=
      ltac:(M.get_method (fun ℐ =>
        core.ops.function.Fn.call
          (Self := unit -> M unit)
          (Args := unit)
          (Trait := ℐ))) in
    let* α1 : unit := M.call (α0 (borrow print) tt) in
    M.alloc α1 in
  let* _reborrow : M.Val (ref alloc.string.String.t) :=
    M.alloc (borrow color) in
  let* _ : M.Val unit :=
    let* α0 : (ref (unit -> M unit)) -> unit -> M _ :=
      ltac:(M.get_method (fun ℐ =>
        core.ops.function.Fn.call
          (Self := unit -> M unit)
          (Args := unit)
          (Trait := ℐ))) in
    let* α1 : unit := M.call (α0 (borrow print) tt) in
    M.alloc α1 in
  let* _color_moved : M.Val alloc.string.String.t := M.copy color in
  let* count : M.Val i32.t := M.alloc ((Integer.of_Z 0) : i32.t) in
  let* inc : M.Val (unit -> M unit) :=
    M.alloc
      (fun (α0 : unit) =>
        (let* α0 := M.alloc α0 in
        match_operator
          α0
          [
            fun γ =>
              (let* _ : M.Val unit :=
                let β : M.Val i32.t := count in
                let* α0 := M.read β in
                let* α1 := BinOp.Panic.add α0 ((Integer.of_Z 1) : i32.t) in
                assign β α1 in
              let* _ : M.Val unit :=
                let* _ : M.Val unit :=
                  let* α0 : ref str.t := M.read (mk_str "`count`: ") in
                  let* α1 : ref str.t := M.read (mk_str "
") in
                  let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
                  let* α3 : core.fmt.rt.Argument.t :=
                    M.call
                      (core.fmt.rt.Argument.t::["new_display"]
                        (borrow count)) in
                  let* α4 : M.Val (array core.fmt.rt.Argument.t) :=
                    M.alloc [ α3 ] in
                  let* α5 : core.fmt.Arguments.t :=
                    M.call
                      (core.fmt.Arguments.t::["new_v1"]
                        (pointer_coercion "Unsize" (borrow α2))
                        (pointer_coercion "Unsize" (borrow α4))) in
                  let* α6 : unit := M.call (std.io.stdio._print α5) in
                  M.alloc α6 in
                M.alloc tt in
              let* α0 : M.Val unit := M.alloc tt in
              M.read α0) :
              M unit
          ]) :
        M unit) in
  let* _ : M.Val unit :=
    let* α0 : (mut_ref (unit -> M unit)) -> unit -> M _ :=
      ltac:(M.get_method (fun ℐ =>
        core.ops.function.FnMut.call_mut
          (Self := unit -> M unit)
          (Args := unit)
          (Trait := ℐ))) in
    let* α1 : unit := M.call (α0 (borrow_mut inc) tt) in
    M.alloc α1 in
  let* _ : M.Val unit :=
    let* α0 : (mut_ref (unit -> M unit)) -> unit -> M _ :=
      ltac:(M.get_method (fun ℐ =>
        core.ops.function.FnMut.call_mut
          (Self := unit -> M unit)
          (Args := unit)
          (Trait := ℐ))) in
    let* α1 : unit := M.call (α0 (borrow_mut inc) tt) in
    M.alloc α1 in
  let* _count_reborrowed : M.Val (mut_ref i32.t) :=
    M.alloc (borrow_mut count) in
  let* movable : M.Val (alloc.boxed.Box.t i32.t alloc.alloc.Global.t) :=
    let* α0 : alloc.boxed.Box.t i32.t alloc.alloc.Global.t :=
      M.call
        ((alloc.boxed.Box.t i32.t alloc.alloc.Global.t)::["new"]
          ((Integer.of_Z 3) : i32.t)) in
    M.alloc α0 in
  let* consume : M.Val (unit -> M unit) :=
    M.alloc
      (fun (α0 : unit) =>
        (let* α0 := M.alloc α0 in
        match_operator
          α0
          [
            fun γ =>
              (let* _ : M.Val unit :=
                let* _ : M.Val unit :=
                  let* α0 : ref str.t := M.read (mk_str "`movable`: ") in
                  let* α1 : ref str.t := M.read (mk_str "
") in
                  let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
                  let* α3 : core.fmt.rt.Argument.t :=
                    M.call
                      (core.fmt.rt.Argument.t::["new_debug"]
                        (borrow movable)) in
                  let* α4 : M.Val (array core.fmt.rt.Argument.t) :=
                    M.alloc [ α3 ] in
                  let* α5 : core.fmt.Arguments.t :=
                    M.call
                      (core.fmt.Arguments.t::["new_v1"]
                        (pointer_coercion "Unsize" (borrow α2))
                        (pointer_coercion "Unsize" (borrow α4))) in
                  let* α6 : unit := M.call (std.io.stdio._print α5) in
                  M.alloc α6 in
                M.alloc tt in
              let* _ : M.Val unit :=
                let* α0 : alloc.boxed.Box.t i32.t alloc.alloc.Global.t :=
                  M.read movable in
                let* α1 : unit := M.call (core.mem.drop α0) in
                M.alloc α1 in
              let* α0 : M.Val unit := M.alloc tt in
              M.read α0) :
              M unit
          ]) :
        M unit) in
  let* _ : M.Val unit :=
    let* α0 : (unit -> M unit) -> unit -> M _ :=
      ltac:(M.get_method (fun ℐ =>
        core.ops.function.FnOnce.call_once
          (Self := unit -> M unit)
          (Args := unit)
          (Trait := ℐ))) in
    let* α1 : unit -> M unit := M.read consume in
    let* α2 : unit := M.call (α0 α1 tt) in
    M.alloc α2 in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.