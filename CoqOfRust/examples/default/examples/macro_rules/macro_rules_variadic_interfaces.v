(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    calculate! { // Look ma! Variadic `calculate!`!
        eval 1 + 2,
        eval 3 + 4,
        eval (2 * 3) + 1
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* _ : M.Val unit :=
    let* val : M.Val usize.t :=
      let* α0 : usize.t := BinOp.Panic.add (Integer.of_Z 1) (Integer.of_Z 2) in
      M.alloc α0 in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "1 + 2 = "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_display"] (borrow val) in
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
    M.alloc tt in
  let* _ : M.Val unit :=
    let* val : M.Val usize.t :=
      let* α0 : usize.t := BinOp.Panic.add (Integer.of_Z 3) (Integer.of_Z 4) in
      M.alloc α0 in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "3 + 4 = "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_display"] (borrow val) in
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
    M.alloc tt in
  let* val : M.Val usize.t :=
    let* α0 : usize.t := BinOp.Panic.mul (Integer.of_Z 2) (Integer.of_Z 3) in
    let* α1 : usize.t := BinOp.Panic.add α0 (Integer.of_Z 1) in
    M.alloc α1 in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "(2 * 3) + 1 = "; mk_str "
" ] in
      let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
      let* α2 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α1) in
      let* α3 : core.fmt.rt.Argument.t :=
        core.fmt.rt.Argument.t::["new_display"] (borrow val) in
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
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
