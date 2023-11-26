(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition message : ref str.t := M.run (M.pure (mk_str "Hello, World!")).

(*
fn main() {
    println!("{message}");

    // All have type `Option<i32>`
    let number = Some(7);
    let letter: Option<i32> = None;
    let emoticon: Option<i32> = None;

    // The `if let` construct reads: "if `let` destructures `number` into
    // `Some(i)`, evaluate the block (`{}`).
    if let Some(i) = number {
        println!("Matched {:?}!", i);
    }

    // If you need to specify a failure, use an else:
    if let Some(j) = letter {
        println!("Matched {:?}!", j);
    } else {
        // Destructure failed. Change to the failure case.
        println!("Didn't match a number. Let's go with a letter!");
    }

    // Provide an altered failing condition.
    let i_like_letters = false;

    if let Some(i) = emoticon {
        println!("Matched {:?}!", i);
    // Destructure failed. Evaluate an `else if` condition to see if the
    // alternate failure branch should be taken:
    } else if i_like_letters {
        println!("Didn't match a number. Let's go with a letter!");
    } else {
        // The condition evaluated false. This branch is the default:
        println!("I don't like letters. Let's go with an emoticon :)!");
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str ""; mk_str "
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 : ref (ref str.t) := borrow test0.message in
        let* α8 : M.Val (ref str.t) := deref α7 in
        let* α9 : ref (ref str.t) := borrow α8 in
        let* α10 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_display"] α9 in
        let* α11 : M.Val core.fmt.rt.Argument.t := M.alloc α10 in
        let* α12 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α11 ] in
        let* α13 : ref (array core.fmt.rt.Argument.t) := borrow α12 in
        let* α14 : M.Val (array core.fmt.rt.Argument.t) := deref α13 in
        let* α15 : ref (array core.fmt.rt.Argument.t) := borrow α14 in
        let* α16 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α15 in
        let* α17 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α16 in
        let* α18 := M.read α17 in
        let* α19 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α6 α18 in
        let* α20 : unit := std.io.stdio._print α19 in
        M.alloc α20 in
      M.alloc tt in
    let* number : M.Val (core.option.Option.t i32.t) :=
      let* α0 : M.Val i32.t := M.alloc 7 in
      let* α1 := M.read α0 in
      M.alloc (core.option.Option.Some α1) in
    let* letter : M.Val (core.option.Option.t i32.t) :=
      M.alloc core.option.Option.None in
    let* emoticon : M.Val (core.option.Option.t i32.t) :=
      M.alloc core.option.Option.None in
    let* _ : M.Val unit :=
      let* α0 : M.Val bool.t := let_if core.option.Option.Some i := number in
      let* α1 := M.read α0 in
      if (α1 : bool) then
        let* _ : M.Val unit :=
          let* _ : M.Val unit :=
            let* α0 : M.Val (array (ref str.t)) :=
              M.alloc [ mk_str "Matched "; mk_str "!
" ] in
            let* α1 : ref (array (ref str.t)) := borrow α0 in
            let* α2 : M.Val (array (ref str.t)) := deref α1 in
            let* α3 : ref (array (ref str.t)) := borrow α2 in
            let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
            let* α5 : M.Val (ref (slice (ref str.t))) :=
              pointer_coercion "Unsize" α4 in
            let* α6 := M.read α5 in
            let* α7 : ref i32.t := borrow i in
            let* α8 : M.Val i32.t := deref α7 in
            let* α9 : ref i32.t := borrow α8 in
            let* α10 : core.fmt.rt.Argument.t :=
              core.fmt.rt.Argument.t::["new_debug"] α9 in
            let* α11 : M.Val core.fmt.rt.Argument.t := M.alloc α10 in
            let* α12 : M.Val (array core.fmt.rt.Argument.t) :=
              M.alloc [ α11 ] in
            let* α13 : ref (array core.fmt.rt.Argument.t) := borrow α12 in
            let* α14 : M.Val (array core.fmt.rt.Argument.t) := deref α13 in
            let* α15 : ref (array core.fmt.rt.Argument.t) := borrow α14 in
            let* α16 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
              M.alloc α15 in
            let* α17 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
              pointer_coercion "Unsize" α16 in
            let* α18 := M.read α17 in
            let* α19 : core.fmt.Arguments.t :=
              core.fmt.Arguments.t::["new_v1"] α6 α18 in
            let* α20 : unit := std.io.stdio._print α19 in
            M.alloc α20 in
          M.alloc tt in
        M.alloc tt
      else
        M.alloc tt in
    let* _ : M.Val unit :=
      let* α0 : M.Val bool.t := let_if core.option.Option.Some j := letter in
      let* α1 := M.read α0 in
      if (α1 : bool) then
        let* _ : M.Val unit :=
          let* _ : M.Val unit :=
            let* α0 : M.Val (array (ref str.t)) :=
              M.alloc [ mk_str "Matched "; mk_str "!
" ] in
            let* α1 : ref (array (ref str.t)) := borrow α0 in
            let* α2 : M.Val (array (ref str.t)) := deref α1 in
            let* α3 : ref (array (ref str.t)) := borrow α2 in
            let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
            let* α5 : M.Val (ref (slice (ref str.t))) :=
              pointer_coercion "Unsize" α4 in
            let* α6 := M.read α5 in
            let* α7 : ref i32.t := borrow j in
            let* α8 : M.Val i32.t := deref α7 in
            let* α9 : ref i32.t := borrow α8 in
            let* α10 : core.fmt.rt.Argument.t :=
              core.fmt.rt.Argument.t::["new_debug"] α9 in
            let* α11 : M.Val core.fmt.rt.Argument.t := M.alloc α10 in
            let* α12 : M.Val (array core.fmt.rt.Argument.t) :=
              M.alloc [ α11 ] in
            let* α13 : ref (array core.fmt.rt.Argument.t) := borrow α12 in
            let* α14 : M.Val (array core.fmt.rt.Argument.t) := deref α13 in
            let* α15 : ref (array core.fmt.rt.Argument.t) := borrow α14 in
            let* α16 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
              M.alloc α15 in
            let* α17 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
              pointer_coercion "Unsize" α16 in
            let* α18 := M.read α17 in
            let* α19 : core.fmt.Arguments.t :=
              core.fmt.Arguments.t::["new_v1"] α6 α18 in
            let* α20 : unit := std.io.stdio._print α19 in
            M.alloc α20 in
          M.alloc tt in
        M.alloc tt
      else
        let* _ : M.Val unit :=
          let* _ : M.Val unit :=
            let* α0 : M.Val (array (ref str.t)) :=
              M.alloc
                [ mk_str "Didn't match a number. Let's go with a letter!
" ] in
            let* α1 : ref (array (ref str.t)) := borrow α0 in
            let* α2 : M.Val (array (ref str.t)) := deref α1 in
            let* α3 : ref (array (ref str.t)) := borrow α2 in
            let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
            let* α5 : M.Val (ref (slice (ref str.t))) :=
              pointer_coercion "Unsize" α4 in
            let* α6 := M.read α5 in
            let* α7 : core.fmt.Arguments.t :=
              core.fmt.Arguments.t::["new_const"] α6 in
            let* α8 : unit := std.io.stdio._print α7 in
            M.alloc α8 in
          M.alloc tt in
        M.alloc tt in
    let* i_like_letters : M.Val bool.t :=
      let* α0 : M.Val bool.t := M.alloc false in
      M.copy α0 in
    let* α0 : M.Val bool.t := let_if core.option.Option.Some i := emoticon in
    let* α1 := M.read α0 in
    if (α1 : bool) then
      let* _ : M.Val unit :=
        let* _ : M.Val unit :=
          let* α0 : M.Val (array (ref str.t)) :=
            M.alloc [ mk_str "Matched "; mk_str "!
" ] in
          let* α1 : ref (array (ref str.t)) := borrow α0 in
          let* α2 : M.Val (array (ref str.t)) := deref α1 in
          let* α3 : ref (array (ref str.t)) := borrow α2 in
          let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
          let* α5 : M.Val (ref (slice (ref str.t))) :=
            pointer_coercion "Unsize" α4 in
          let* α6 := M.read α5 in
          let* α7 : ref i32.t := borrow i in
          let* α8 : M.Val i32.t := deref α7 in
          let* α9 : ref i32.t := borrow α8 in
          let* α10 : core.fmt.rt.Argument.t :=
            core.fmt.rt.Argument.t::["new_debug"] α9 in
          let* α11 : M.Val core.fmt.rt.Argument.t := M.alloc α10 in
          let* α12 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α11 ] in
          let* α13 : ref (array core.fmt.rt.Argument.t) := borrow α12 in
          let* α14 : M.Val (array core.fmt.rt.Argument.t) := deref α13 in
          let* α15 : ref (array core.fmt.rt.Argument.t) := borrow α14 in
          let* α16 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
            M.alloc α15 in
          let* α17 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
            pointer_coercion "Unsize" α16 in
          let* α18 := M.read α17 in
          let* α19 : core.fmt.Arguments.t :=
            core.fmt.Arguments.t::["new_v1"] α6 α18 in
          let* α20 : unit := std.io.stdio._print α19 in
          M.alloc α20 in
        M.alloc tt in
      M.alloc tt
    else
      let* α0 : M.Val bool.t := use i_like_letters in
      let* α1 := M.read α0 in
      if (α1 : bool) then
        let* _ : M.Val unit :=
          let* _ : M.Val unit :=
            let* α0 : M.Val (array (ref str.t)) :=
              M.alloc
                [ mk_str "Didn't match a number. Let's go with a letter!
" ] in
            let* α1 : ref (array (ref str.t)) := borrow α0 in
            let* α2 : M.Val (array (ref str.t)) := deref α1 in
            let* α3 : ref (array (ref str.t)) := borrow α2 in
            let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
            let* α5 : M.Val (ref (slice (ref str.t))) :=
              pointer_coercion "Unsize" α4 in
            let* α6 := M.read α5 in
            let* α7 : core.fmt.Arguments.t :=
              core.fmt.Arguments.t::["new_const"] α6 in
            let* α8 : unit := std.io.stdio._print α7 in
            M.alloc α8 in
          M.alloc tt in
        M.alloc tt
      else
        let* _ : M.Val unit :=
          let* _ : M.Val unit :=
            let* α0 : M.Val (array (ref str.t)) :=
              M.alloc
                [ mk_str "I don't like letters. Let's go with an emoticon :)!
"
                ] in
            let* α1 : ref (array (ref str.t)) := borrow α0 in
            let* α2 : M.Val (array (ref str.t)) := deref α1 in
            let* α3 : ref (array (ref str.t)) := borrow α2 in
            let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
            let* α5 : M.Val (ref (slice (ref str.t))) :=
              pointer_coercion "Unsize" α4 in
            let* α6 := M.read α5 in
            let* α7 : core.fmt.Arguments.t :=
              core.fmt.Arguments.t::["new_const"] α6 in
            let* α8 : unit := std.io.stdio._print α7 in
            M.alloc α8 in
          M.alloc tt in
        M.alloc tt).
