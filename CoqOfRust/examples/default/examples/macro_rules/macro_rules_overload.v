(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    test!(1i32 + 1 == 2i32; and 2i32 * 2 == 4i32);
    test!(true; or false);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str ""; mk_str " and "; mk_str " is "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : M.Val (ref (ref str.t)) :=
          borrow (mk_str "1i32 + 1 == 2i32") in
        let* α4 := core.fmt.rt.Argument.t::["new_debug"] α3 in
        let* α5 : M.Val core.fmt.rt.Argument.t := M.alloc α4 in
        let* α6 : M.Val (ref (ref str.t)) :=
          borrow (mk_str "2i32 * 2 == 4i32") in
        let* α7 := core.fmt.rt.Argument.t::["new_debug"] α6 in
        let* α8 : M.Val core.fmt.rt.Argument.t := M.alloc α7 in
        let* α9 : M.Val i32.t := M.alloc 1 in
        let* α10 : M.Val i32.t := M.alloc 1 in
        let* α11 : M.Val i32.t := BinOp.add α9 α10 in
        let* α12 : M.Val i32.t := M.alloc 2 in
        let* α13 : M.Val bool.t := BinOp.eq α11 α12 in
        let* α14 : M.Val i32.t := M.alloc 2 in
        let* α15 : M.Val i32.t := M.alloc 2 in
        let* α16 : M.Val i32.t := BinOp.mul α14 α15 in
        let* α17 : M.Val i32.t := M.alloc 4 in
        let* α18 : M.Val bool.t := BinOp.eq α16 α17 in
        let* α19 : M.Val bool.t := BinOp.and α13 α18 in
        let* α20 : M.Val (ref bool.t) := borrow α19 in
        let* α21 := core.fmt.rt.Argument.t::["new_debug"] α20 in
        let* α22 : M.Val core.fmt.rt.Argument.t := M.alloc α21 in
        let* α23 : M.Val (array core.fmt.rt.Argument.t) :=
          M.alloc [ α5; α8; α22 ] in
        let* α24 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α23 in
        let* α25 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α24 in
        let* α26 := core.fmt.Arguments.t::["new_v1"] α2 α25 in
        let* α27 : M.Val core.fmt.Arguments.t := M.alloc α26 in
        let* α28 := std.io.stdio._print α27 in
        M.alloc α28 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str ""; mk_str " or "; mk_str " is "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : M.Val (ref (ref str.t)) := borrow (mk_str "true") in
        let* α4 := core.fmt.rt.Argument.t::["new_debug"] α3 in
        let* α5 : M.Val core.fmt.rt.Argument.t := M.alloc α4 in
        let* α6 : M.Val (ref (ref str.t)) := borrow (mk_str "false") in
        let* α7 := core.fmt.rt.Argument.t::["new_debug"] α6 in
        let* α8 : M.Val core.fmt.rt.Argument.t := M.alloc α7 in
        let* α9 : M.Val bool.t := M.alloc true in
        let* α10 : M.Val bool.t := M.alloc false in
        let* α11 : M.Val bool.t := BinOp.or α9 α10 in
        let* α12 : M.Val (ref bool.t) := borrow α11 in
        let* α13 := core.fmt.rt.Argument.t::["new_debug"] α12 in
        let* α14 : M.Val core.fmt.rt.Argument.t := M.alloc α13 in
        let* α15 : M.Val (array core.fmt.rt.Argument.t) :=
          M.alloc [ α5; α8; α14 ] in
        let* α16 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α15 in
        let* α17 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α16 in
        let* α18 := core.fmt.Arguments.t::["new_v1"] α2 α17 in
        let* α19 : M.Val core.fmt.Arguments.t := M.alloc α18 in
        let* α20 := std.io.stdio._print α19 in
        M.alloc α20 in
      M.alloc tt in
    M.alloc tt).
