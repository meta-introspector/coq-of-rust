(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    let number = 13;
    // TODO ^ Try different values for `number`

    println!("Tell me about {}", number);
    match number {
        // Match a single value
        1 => println!("One!"),
        // Match several values
        2 | 3 | 5 | 7 | 11 => println!("This is a prime"),
        // TODO ^ Try adding 13 to the list of prime values
        // Match an inclusive range
        13..=19 => println!("A teen"),
        // Handle the rest of cases
        _ => println!("Ain't special"),
        // TODO ^ Try commenting out this catch-all arm
    }

    let boolean = true;
    // Match is an expression too
    let binary = match boolean {
        // The arms of a match must cover all the possible values
        false => 0,
        true => 1,
        // TODO ^ Try commenting out one of these arms
    };

    println!("{} -> {}", boolean, binary);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* number : M.Val i32.t :=
      let* α0 : M.Val i32.t := M.alloc 13 in
      M.copy α0 in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Tell me about "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := M.read α2 in
        let* α4 : M.Val (ref i32.t) := borrow number in
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
    let* _ : M.Val unit :=
      let* α0 := M.read number in
      match α0 with
      | _ =>
        let* _ : M.Val unit :=
          let* α0 : M.Val (array (ref str.t)) := M.alloc [ mk_str "One!
" ] in
          let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
          let* α2 : M.Val (ref (slice (ref str.t))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 := M.read α2 in
          let* α4 := core.fmt.Arguments.t::["new_const"] α3 in
          let* α5 := std.io.stdio._print α4 in
          M.alloc α5 in
        M.alloc tt
      | (_|_|_|_|_) =>
        let* _ : M.Val unit :=
          let* α0 : M.Val (array (ref str.t)) :=
            M.alloc [ mk_str "This is a prime
" ] in
          let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
          let* α2 : M.Val (ref (slice (ref str.t))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 := M.read α2 in
          let* α4 := core.fmt.Arguments.t::["new_const"] α3 in
          let* α5 := std.io.stdio._print α4 in
          M.alloc α5 in
        M.alloc tt
      | _ =>
        let* _ : M.Val unit :=
          let* α0 : M.Val (array (ref str.t)) := M.alloc [ mk_str "A teen
" ] in
          let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
          let* α2 : M.Val (ref (slice (ref str.t))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 := M.read α2 in
          let* α4 := core.fmt.Arguments.t::["new_const"] α3 in
          let* α5 := std.io.stdio._print α4 in
          M.alloc α5 in
        M.alloc tt
      | _ =>
        let* _ : M.Val unit :=
          let* α0 : M.Val (array (ref str.t)) :=
            M.alloc [ mk_str "Ain't special
" ] in
          let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
          let* α2 : M.Val (ref (slice (ref str.t))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 := M.read α2 in
          let* α4 := core.fmt.Arguments.t::["new_const"] α3 in
          let* α5 := std.io.stdio._print α4 in
          M.alloc α5 in
        M.alloc tt
      end in
    let* boolean : M.Val bool.t :=
      let* α0 : M.Val bool.t := M.alloc true in
      M.copy α0 in
    let* binary : M.Val i32.t :=
      let* α0 := M.read boolean in
      let* α1 : M.Val i32.t :=
        match α0 with
        | _ => M.alloc 0
        | _ => M.alloc 1
        end in
      M.copy α1 in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str ""; mk_str " -> "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := M.read α2 in
        let* α4 : M.Val (ref bool.t) := borrow boolean in
        let* α5 := M.read α4 in
        let* α6 := core.fmt.rt.Argument.t::["new_display"] α5 in
        let* α7 : M.Val core.fmt.rt.Argument.t := M.alloc α6 in
        let* α8 : M.Val (ref i32.t) := borrow binary in
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
    M.alloc tt).
