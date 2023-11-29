(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    // Assign a reference of type `i32`. The `&` signifies there
    // is a reference being assigned.
    let reference = &4;

    match reference {
        // If `reference` is pattern matched against `&val`, it results
        // in a comparison like:
        // `&i32`
        // `&val`
        // ^ We see that if the matching `&`s are dropped, then the `i32`
        // should be assigned to `val`.
        &val => println!("Got a value via destructuring: {:?}", val),
    }

    // To avoid the `&`, you dereference before matching.
    match *reference {
        val => println!("Got a value via dereferencing: {:?}", val),
    }

    // What if you don't start with a reference? `reference` was a `&`
    // because the right side was already a reference. This is not
    // a reference because the right side is not one.
    let _not_a_reference = 3;

    // Rust provides `ref` for exactly this purpose. It modifies the
    // assignment so that a reference is created for the element; this
    // reference is assigned.
    let ref _is_a_reference = 3;

    // Accordingly, by defining 2 values without references, references
    // can be retrieved via `ref` and `ref mut`.
    let value = 5;
    let mut mut_value = 6;

    // Use `ref` keyword to create a reference.
    match value {
        ref r => println!("Got a reference to a value: {:?}", r),
    }

    // Use `ref mut` similarly.
    match mut_value {
        ref mut m => {
            // Got a reference. Gotta dereference it before we can
            // add anything to it.
            *m += 10;
            println!("We added 10. `mut_value`: {:?}", m);
        }
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* reference : M.Val (ref i32.t) :=
    let* α0 : M.Val i32.t := M.alloc (Integer.of_Z 4) in
    M.alloc (borrow α0) in
  let* _ : M.Val unit :=
    let* α0 : ref i32.t := M.read reference in
    match α0 with
    | val =>
      let* val := M.alloc val in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Got a value via destructuring: "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_debug"] (borrow val) in
        let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
        let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
        let* α6 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α5) in
        let* α7 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α6) in
        let* α8 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α2 α7 in
        let* α9 : unit := std.io.stdio._print α8 in
        M.alloc α9 in
      M.alloc tt
    end in
  let* _ : M.Val unit :=
    let* α0 : ref i32.t := M.read reference in
    let* α1 : i32.t := M.read (deref α0) in
    match α1 with
    | val =>
      let* val := M.alloc val in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Got a value via dereferencing: "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_debug"] (borrow val) in
        let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
        let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
        let* α6 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α5) in
        let* α7 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α6) in
        let* α8 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α2 α7 in
        let* α9 : unit := std.io.stdio._print α8 in
        M.alloc α9 in
      M.alloc tt
    end in
  let* _not_a_reference : M.Val i32.t := M.alloc (Integer.of_Z 3) in
  let* _is_a_reference : M.Val i32.t := M.alloc (Integer.of_Z 3) in
  let* value : M.Val i32.t := M.alloc (Integer.of_Z 5) in
  let* mut_value : M.Val i32.t := M.alloc (Integer.of_Z 6) in
  let* _ : M.Val unit :=
    let* α0 : i32.t := M.read value in
    match α0 with
    | r =>
      let* r := M.alloc r in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Got a reference to a value: "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_debug"] (borrow r) in
        let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
        let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
        let* α6 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α5) in
        let* α7 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α6) in
        let* α8 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α2 α7 in
        let* α9 : unit := std.io.stdio._print α8 in
        M.alloc α9 in
      M.alloc tt
    end in
  let* α0 : i32.t := M.read mut_value in
  let* α0 : M.Val unit :=
    match α0 with
    | m =>
      let* m := M.alloc m in
      let* _ : M.Val unit :=
        let* α0 : mut_ref i32.t := M.read m in
        let* α1 : M.Val i32.t := M.alloc (Integer.of_Z 10) in
        assign_op BinOp.Panic.add (deref α0) α1 in
      let* _ : M.Val unit :=
        let* _ : M.Val unit :=
          let* α0 : M.Val (array (ref str.t)) :=
            M.alloc [ mk_str "We added 10. `mut_value`: "; mk_str "
" ] in
          let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
          let* α2 : ref (slice (ref str.t)) :=
            M.read (pointer_coercion "Unsize" α1) in
          let* α3 : core.fmt.rt.Argument.t :=
            core.fmt.rt.Argument.t::["new_debug"] (borrow m) in
          let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
          let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
          let* α6 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
            M.alloc (borrow α5) in
          let* α7 : ref (slice core.fmt.rt.Argument.t) :=
            M.read (pointer_coercion "Unsize" α6) in
          let* α8 : core.fmt.Arguments.t :=
            core.fmt.Arguments.t::["new_v1"] α2 α7 in
          let* α9 : unit := std.io.stdio._print α8 in
          M.alloc α9 in
        M.alloc tt in
      M.alloc tt
    end in
  M.read α0.
