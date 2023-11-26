(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn gen_range() -> u32 {
    todo!()
}
*)
Definition gen_range : M u32.t :=
  let* α0 : ref str.t := M.read (mk_str "not yet implemented") in
  let* α1 : never.t := core.panicking.panic α0 in
  let* α2 : M.Val never.t := M.alloc α1 in
  let* α3 : M.Val u32.t := never_to_any α2 in
  M.read α3.

(*
fn main() {
    println!("Guess the number!");
    let secret_number = gen_range();
    // println!("The secret number is: {secret_number}");
    loop {
        println!("Please input your guess.");

        let mut guess = String::new();

        io::stdin()
            .read_line(&mut guess)
            .expect("Failed to read line");

        // shadowing previous var {guess}.
        // We do shadowing when we want to convert var from one type to another
        let guess: u32 = match guess.trim().parse() {
            Ok(num) => num,
            Err(_) => continue,
        };

        println!("You guessed: {guess}");

        match guess.cmp(&secret_number) {
            Ordering::Less => println!("Too small!"),
            Ordering::Greater => println!("Too big!"),
            Ordering::Equal => {
                println!("You win!");
                break;
            }
        }
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "Guess the number!
" ] in
      let* α1 : ref (array (ref str.t)) := borrow α0 in
      let* α2 : M.Val (ref (array (ref str.t))) := M.alloc α1 in
      let* α3 : M.Val (ref (slice (ref str.t))) :=
        pointer_coercion "Unsize" α2 in
      let* α4 : ref (slice (ref str.t)) := M.read α3 in
      let* α5 : core.fmt.Arguments.t :=
        core.fmt.Arguments.t::["new_const"] α4 in
      let* α6 : unit := std.io.stdio._print α5 in
      M.alloc α6 in
    M.alloc tt in
  let* secret_number : M.Val u32.t :=
    let* α0 : u32.t := guessing_game.gen_range in
    M.alloc α0 in
  let* α0 : M.Val unit :=
    loop
      (let* _ : M.Val unit :=
        let* _ : M.Val unit :=
          let* α0 : M.Val (array (ref str.t)) :=
            M.alloc [ mk_str "Please input your guess.
" ] in
          let* α1 : ref (array (ref str.t)) := borrow α0 in
          let* α2 : M.Val (ref (array (ref str.t))) := M.alloc α1 in
          let* α3 : M.Val (ref (slice (ref str.t))) :=
            pointer_coercion "Unsize" α2 in
          let* α4 : ref (slice (ref str.t)) := M.read α3 in
          let* α5 : core.fmt.Arguments.t :=
            core.fmt.Arguments.t::["new_const"] α4 in
          let* α6 : unit := std.io.stdio._print α5 in
          M.alloc α6 in
        M.alloc tt in
      let* guess : M.Val alloc.string.String.t :=
        let* α0 : alloc.string.String.t := alloc.string.String.t::["new"] in
        M.alloc α0 in
      let* _ : M.Val usize.t :=
        let* α0 : std.io.stdio.Stdin.t := std.io.stdio.stdin in
        let* α1 : M.Val std.io.stdio.Stdin.t := M.alloc α0 in
        let* α2 : ref std.io.stdio.Stdin.t := borrow α1 in
        let* α3 : mut_ref alloc.string.String.t := borrow_mut guess in
        let* α4 : core.result.Result.t usize.t std.io.error.Error.t :=
          std.io.stdio.Stdin.t::["read_line"] α2 α3 in
        let* α5 : ref str.t := M.read (mk_str "Failed to read line") in
        let* α6 : usize.t :=
          (core.result.Result.t usize.t std.io.error.Error.t)::["expect"]
            α4
            α5 in
        M.alloc α6 in
      let* guess : M.Val u32.t :=
        let* α0 : ref alloc.string.String.t := borrow guess in
        let* α1 : ref str.t :=
          (core.ops.deref.Deref.deref
              (Self := alloc.string.String.t)
              (Trait := ltac:(refine _)))
            α0 in
        let* α2 : ref str.t := str.t::["trim"] α1 in
        let* α3 : core.result.Result.t u32.t core.num.error.ParseIntError.t :=
          str.t::["parse"] α2 in
        let* α4 : M.Val u32.t :=
          match α3 with
          | core.result.Result.Ok num =>
            let* num := M.alloc num in
            M.pure num
          | core.result.Result.Err _ =>
            let* α0 : M.Val never.t := Continue in
            never_to_any α0
          end in
        M.copy α4 in
      let* _ : M.Val unit :=
        let* _ : M.Val unit :=
          let* α0 : M.Val (array (ref str.t)) :=
            M.alloc [ mk_str "You guessed: "; mk_str "
" ] in
          let* α1 : ref (array (ref str.t)) := borrow α0 in
          let* α2 : M.Val (ref (array (ref str.t))) := M.alloc α1 in
          let* α3 : M.Val (ref (slice (ref str.t))) :=
            pointer_coercion "Unsize" α2 in
          let* α4 : ref (slice (ref str.t)) := M.read α3 in
          let* α5 : ref u32.t := borrow guess in
          let* α6 : core.fmt.rt.Argument.t :=
            core.fmt.rt.Argument.t::["new_display"] α5 in
          let* α7 : M.Val core.fmt.rt.Argument.t := M.alloc α6 in
          let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
          let* α9 : ref (array core.fmt.rt.Argument.t) := borrow α8 in
          let* α10 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α9 in
          let* α11 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
            pointer_coercion "Unsize" α10 in
          let* α12 : ref (slice core.fmt.rt.Argument.t) := M.read α11 in
          let* α13 : core.fmt.Arguments.t :=
            core.fmt.Arguments.t::["new_v1"] α4 α12 in
          let* α14 : unit := std.io.stdio._print α13 in
          M.alloc α14 in
        M.alloc tt in
      let* α0 : ref u32.t := borrow guess in
      let* α1 : ref u32.t := borrow secret_number in
      let* α2 : core.cmp.Ordering.t :=
        (core.cmp.Ord.cmp (Self := u32.t) (Trait := ltac:(refine _))) α0 α1 in
      match α2 with
      | core.cmp.Ordering.Less  =>
        let* _ : M.Val unit :=
          let* α0 : M.Val (array (ref str.t)) :=
            M.alloc [ mk_str "Too small!
" ] in
          let* α1 : ref (array (ref str.t)) := borrow α0 in
          let* α2 : M.Val (ref (array (ref str.t))) := M.alloc α1 in
          let* α3 : M.Val (ref (slice (ref str.t))) :=
            pointer_coercion "Unsize" α2 in
          let* α4 : ref (slice (ref str.t)) := M.read α3 in
          let* α5 : core.fmt.Arguments.t :=
            core.fmt.Arguments.t::["new_const"] α4 in
          let* α6 : unit := std.io.stdio._print α5 in
          M.alloc α6 in
        M.alloc tt
      | core.cmp.Ordering.Greater  =>
        let* _ : M.Val unit :=
          let* α0 : M.Val (array (ref str.t)) :=
            M.alloc [ mk_str "Too big!
" ] in
          let* α1 : ref (array (ref str.t)) := borrow α0 in
          let* α2 : M.Val (ref (array (ref str.t))) := M.alloc α1 in
          let* α3 : M.Val (ref (slice (ref str.t))) :=
            pointer_coercion "Unsize" α2 in
          let* α4 : ref (slice (ref str.t)) := M.read α3 in
          let* α5 : core.fmt.Arguments.t :=
            core.fmt.Arguments.t::["new_const"] α4 in
          let* α6 : unit := std.io.stdio._print α5 in
          M.alloc α6 in
        M.alloc tt
      | core.cmp.Ordering.Equal  =>
        let* _ : M.Val unit :=
          let* _ : M.Val unit :=
            let* α0 : M.Val (array (ref str.t)) :=
              M.alloc [ mk_str "You win!
" ] in
            let* α1 : ref (array (ref str.t)) := borrow α0 in
            let* α2 : M.Val (ref (array (ref str.t))) := M.alloc α1 in
            let* α3 : M.Val (ref (slice (ref str.t))) :=
              pointer_coercion "Unsize" α2 in
            let* α4 : ref (slice (ref str.t)) := M.read α3 in
            let* α5 : core.fmt.Arguments.t :=
              core.fmt.Arguments.t::["new_const"] α4 in
            let* α6 : unit := std.io.stdio._print α5 in
            M.alloc α6 in
          M.alloc tt in
        let* _ : M.Val never.t := Break in
        let* α0 : M.Val unit := M.alloc tt in
        never_to_any α0
      end) in
  M.read α0.
