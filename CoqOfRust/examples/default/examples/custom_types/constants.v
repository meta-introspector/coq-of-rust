(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition LANGUAGE : ref str.t := M.run (M.pure (mk_str "Rust")).

Definition THRESHOLD : i32.t := M.run (M.alloc 10).

(*
fn is_big(n: i32) -> bool {
    // Access constant in some function
    n > THRESHOLD
}
*)
Definition is_big (n : M.Val i32.t) : M bool.t :=
  M.function_body (BinOp.gt n constants.THRESHOLD).

(*
fn main() {
    let n = 16;

    // Access constant in the main thread
    println!("This is {}", LANGUAGE);
    println!("The threshold is {}", THRESHOLD);
    println!("{} is {}", n, if is_big(n) { "big" } else { "small" });

    // Error! Cannot modify a `const`.
    // THRESHOLD = 5;
    // FIXME ^ Comment out this line
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* n : ltac:(refine (M.Val i32.t)) :=
      let* α0 : ltac:(refine (M.Val i32.t)) := M.alloc 16 in
      M.copy α0 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "This is "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref str.t))) :=
          deref constants.LANGUAGE in
        let* α4 : ltac:(refine (M.Val (ref (ref str.t)))) := borrow α3 in
        let* α5 := core.fmt.rt.Argument.t::["new_display"] α4 in
        let* α6 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α5 in
        let* α7 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α6 ] in
        let* α8 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α7 in
        let* α9 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α8 in
        let* α10 := core.fmt.Arguments.t::["new_v1"] α2 α9 in
        let* α11 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α10 in
        let* α12 := std.io.stdio._print α11 in
        M.alloc α12 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "The threshold is "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref i32.t))) :=
          borrow constants.THRESHOLD in
        let* α4 := core.fmt.rt.Argument.t::["new_display"] α3 in
        let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α4 in
        let* α6 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α5 ] in
        let* α7 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α6 in
        let* α8 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α7 in
        let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
        let* α10 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α9 in
        let* α11 := std.io.stdio._print α10 in
        M.alloc α11 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str ""; mk_str " is "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref i32.t))) := borrow n in
        let* α4 := core.fmt.rt.Argument.t::["new_display"] α3 in
        let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α4 in
        let* α6 := constants.is_big n in
        let* α7 : ltac:(refine (M.Val bool.t)) := M.alloc α6 in
        let* α8 : ltac:(refine (M.Val bool.t)) := use α7 in
        let* α9 := M.read α8 in
        let* α10 : ltac:(refine (M.Val (ref str.t))) :=
          if (α9 : bool) then
            M.pure (mk_str "big")
          else
            let* α0 : ltac:(refine (M.Val str.t)) := deref (mk_str "small") in
            borrow α0 in
        let* α11 : ltac:(refine (M.Val (ref (ref str.t)))) := borrow α10 in
        let* α12 := core.fmt.rt.Argument.t::["new_display"] α11 in
        let* α13 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          M.alloc α12 in
        let* α14 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α5; α13 ] in
        let* α15 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α14 in
        let* α16 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α15 in
        let* α17 := core.fmt.Arguments.t::["new_v1"] α2 α16 in
        let* α18 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α17 in
        let* α19 := std.io.stdio._print α18 in
        M.alloc α19 in
      M.alloc tt in
    M.alloc tt).
