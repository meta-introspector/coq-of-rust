(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    println!("{}", find_min!(1));
    println!("{}", find_min!(1 + 2, 2));
    println!("{}", find_min!(5, 2 * 3, 4));
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "1
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ ] in
        let* α4 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α3 in
        let* α5 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := core.fmt.Arguments.t::["new_v1"] α2 α5 in
        let* α7 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α6 in
        let* α8 := std.io.stdio._print α7 in
        M.alloc α8 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str ""; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val i32.t)) := M.alloc 1 in
        let* α4 : ltac:(refine (M.Val i32.t)) := M.alloc 2 in
        let* α5 : ltac:(refine (M.Val i32.t)) := BinOp.add α3 α4 in
        let* α6 : ltac:(refine (M.Val i32.t)) := M.alloc 2 in
        let* α7 := core.cmp.min α5 α6 in
        let* α8 : ltac:(refine (M.Val i32.t)) := M.alloc α7 in
        let* α9 : ltac:(refine (M.Val (ref i32.t))) := borrow α8 in
        let* α10 := core.fmt.rt.Argument.t::["new_display"] α9 in
        let* α11 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          M.alloc α10 in
        let* α12 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α11 ] in
        let* α13 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α12 in
        let* α14 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α13 in
        let* α15 := core.fmt.Arguments.t::["new_v1"] α2 α14 in
        let* α16 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α15 in
        let* α17 := std.io.stdio._print α16 in
        M.alloc α17 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str ""; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val i32.t)) := M.alloc 5 in
        let* α4 : ltac:(refine (M.Val i32.t)) := M.alloc 2 in
        let* α5 : ltac:(refine (M.Val i32.t)) := M.alloc 3 in
        let* α6 : ltac:(refine (M.Val i32.t)) := BinOp.mul α4 α5 in
        let* α7 : ltac:(refine (M.Val i32.t)) := M.alloc 4 in
        let* α8 := core.cmp.min α6 α7 in
        let* α9 : ltac:(refine (M.Val i32.t)) := M.alloc α8 in
        let* α10 := core.cmp.min α3 α9 in
        let* α11 : ltac:(refine (M.Val i32.t)) := M.alloc α10 in
        let* α12 : ltac:(refine (M.Val (ref i32.t))) := borrow α11 in
        let* α13 := core.fmt.rt.Argument.t::["new_display"] α12 in
        let* α14 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          M.alloc α13 in
        let* α15 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α14 ] in
        let* α16 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α15 in
        let* α17 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α16 in
        let* α18 := core.fmt.Arguments.t::["new_v1"] α2 α17 in
        let* α19 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α18 in
        let* α20 := std.io.stdio._print α19 in
        M.alloc α20 in
      M.alloc tt in
    M.alloc tt).
