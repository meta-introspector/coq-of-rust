(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    let rc_examples = "Rc examples".to_string();
    {
        println!("--- rc_a is created ---");

        let rc_a: Rc<String> = Rc::new(rc_examples);
        println!("Reference Count of rc_a: {}", Rc::strong_count(&rc_a));

        {
            println!("--- rc_a is cloned to rc_b ---");

            let rc_b: Rc<String> = Rc::clone(&rc_a);
            println!("Reference Count of rc_b: {}", Rc::strong_count(&rc_b));
            println!("Reference Count of rc_a: {}", Rc::strong_count(&rc_a));

            // Two `Rc`s are equal if their inner values are equal
            println!("rc_a and rc_b are equal: {}", rc_a.eq(&rc_b));

            // We can use methods of a value directly
            println!("Length of the value inside rc_a: {}", rc_a.len());
            println!("Value of rc_b: {}", rc_b);

            println!("--- rc_b is dropped out of scope ---");
        }

        println!("Reference Count of rc_a: {}", Rc::strong_count(&rc_a));

        println!("--- rc_a is dropped out of scope ---");
    }

    // Error! `rc_examples` already moved into `rc_a`
    // And when `rc_a` is dropped, `rc_examples` is dropped together
    // println!("rc_examples: {}", rc_examples);
    // TODO ^ Try uncommenting this line
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* rc_examples : M.Val alloc.string.String.t :=
    let* α0 : ref str.t := M.read (mk_str "Rc examples") in
    let* α1 : alloc.string.String.t :=
      (alloc.string.ToString.to_string
          (Self := str.t)
          (Trait := ltac:(refine _)))
        α0 in
    M.alloc α1 in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "--- rc_a is created ---
" ] in
      let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
      let* α2 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α1) in
      let* α3 : core.fmt.Arguments.t :=
        core.fmt.Arguments.t::["new_const"] α2 in
      let* α4 : unit := std.io.stdio._print α3 in
      M.alloc α4 in
    M.alloc tt in
  let* rc_a : M.Val (alloc.rc.Rc.t alloc.string.String.t) :=
    let* α0 : alloc.string.String.t := M.read rc_examples in
    let* α1 : alloc.rc.Rc.t alloc.string.String.t :=
      (alloc.rc.Rc.t alloc.string.String.t)::["new"] α0 in
    M.alloc α1 in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "Reference Count of rc_a: "; mk_str "
" ] in
      let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
      let* α2 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α1) in
      let* α3 : usize.t :=
        (alloc.rc.Rc.t alloc.string.String.t)::["strong_count"] (borrow rc_a) in
      let* α4 : M.Val usize.t := M.alloc α3 in
      let* α5 : core.fmt.rt.Argument.t :=
        core.fmt.rt.Argument.t::["new_display"] (borrow α4) in
      let* α6 : M.Val core.fmt.rt.Argument.t := M.alloc α5 in
      let* α7 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α6 ] in
      let* α8 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α7) in
      let* α9 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α8) in
      let* α10 : core.fmt.Arguments.t :=
        core.fmt.Arguments.t::["new_v1"] α2 α9 in
      let* α11 : unit := std.io.stdio._print α10 in
      M.alloc α11 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "--- rc_a is cloned to rc_b ---
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_const"] α2 in
        let* α4 : unit := std.io.stdio._print α3 in
        M.alloc α4 in
      M.alloc tt in
    let* rc_b : M.Val (alloc.rc.Rc.t alloc.string.String.t) :=
      let* α0 : alloc.rc.Rc.t alloc.string.String.t :=
        (core.clone.Clone.clone
            (Self := alloc.rc.Rc.t alloc.string.String.t)
            (Trait := ltac:(refine _)))
          (borrow rc_a) in
      M.alloc α0 in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Reference Count of rc_b: "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : usize.t :=
          (alloc.rc.Rc.t alloc.string.String.t)::["strong_count"]
            (borrow rc_b) in
        let* α4 : M.Val usize.t := M.alloc α3 in
        let* α5 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_display"] (borrow α4) in
        let* α6 : M.Val core.fmt.rt.Argument.t := M.alloc α5 in
        let* α7 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α6 ] in
        let* α8 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α7) in
        let* α9 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α8) in
        let* α10 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α2 α9 in
        let* α11 : unit := std.io.stdio._print α10 in
        M.alloc α11 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Reference Count of rc_a: "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : usize.t :=
          (alloc.rc.Rc.t alloc.string.String.t)::["strong_count"]
            (borrow rc_a) in
        let* α4 : M.Val usize.t := M.alloc α3 in
        let* α5 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_display"] (borrow α4) in
        let* α6 : M.Val core.fmt.rt.Argument.t := M.alloc α5 in
        let* α7 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α6 ] in
        let* α8 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α7) in
        let* α9 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α8) in
        let* α10 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α2 α9 in
        let* α11 : unit := std.io.stdio._print α10 in
        M.alloc α11 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "rc_a and rc_b are equal: "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : bool.t :=
          (core.cmp.PartialEq.eq
              (Self := alloc.rc.Rc.t alloc.string.String.t)
              (Trait := ltac:(refine _)))
            (borrow rc_a)
            (borrow rc_b) in
        let* α4 : M.Val bool.t := M.alloc α3 in
        let* α5 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_display"] (borrow α4) in
        let* α6 : M.Val core.fmt.rt.Argument.t := M.alloc α5 in
        let* α7 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α6 ] in
        let* α8 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α7) in
        let* α9 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α8) in
        let* α10 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α2 α9 in
        let* α11 : unit := std.io.stdio._print α10 in
        M.alloc α11 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Length of the value inside rc_a: "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : ref alloc.string.String.t :=
          (core.ops.deref.Deref.deref
              (Self := alloc.rc.Rc.t alloc.string.String.t)
              (Trait := ltac:(refine _)))
            (borrow rc_a) in
        let* α4 : usize.t := alloc.string.String.t::["len"] α3 in
        let* α5 : M.Val usize.t := M.alloc α4 in
        let* α6 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_display"] (borrow α5) in
        let* α7 : M.Val core.fmt.rt.Argument.t := M.alloc α6 in
        let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
        let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α8) in
        let* α10 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α9) in
        let* α11 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α2 α10 in
        let* α12 : unit := std.io.stdio._print α11 in
        M.alloc α12 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Value of rc_b: "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_display"] (borrow rc_b) in
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
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "--- rc_b is dropped out of scope ---
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_const"] α2 in
        let* α4 : unit := std.io.stdio._print α3 in
        M.alloc α4 in
      M.alloc tt in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "Reference Count of rc_a: "; mk_str "
" ] in
      let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
      let* α2 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α1) in
      let* α3 : usize.t :=
        (alloc.rc.Rc.t alloc.string.String.t)::["strong_count"] (borrow rc_a) in
      let* α4 : M.Val usize.t := M.alloc α3 in
      let* α5 : core.fmt.rt.Argument.t :=
        core.fmt.rt.Argument.t::["new_display"] (borrow α4) in
      let* α6 : M.Val core.fmt.rt.Argument.t := M.alloc α5 in
      let* α7 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α6 ] in
      let* α8 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α7) in
      let* α9 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α8) in
      let* α10 : core.fmt.Arguments.t :=
        core.fmt.Arguments.t::["new_v1"] α2 α9 in
      let* α11 : unit := std.io.stdio._print α10 in
      M.alloc α11 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "--- rc_a is dropped out of scope ---
" ] in
      let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
      let* α2 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α1) in
      let* α3 : core.fmt.Arguments.t :=
        core.fmt.Arguments.t::["new_const"] α2 in
      let* α4 : unit := std.io.stdio._print α3 in
      M.alloc α4 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
