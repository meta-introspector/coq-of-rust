(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    calculate! {
        eval 1 + 2 // hehehe `eval` is _not_ a Rust keyword!
    }

    calculate! {
        eval (1 + 2) * (3 / 4)
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* _ : M.Val unit :=
      let* val : M.Val usize.t :=
        let* α0 : M.Val usize.t := M.alloc 1 in
        let* α1 : M.Val usize.t := M.alloc 2 in
        let* α2 : M.Val usize.t := BinOp.add α0 α1 in
        M.copy α2 in
      let* _ : M.Val unit :=
        let* _ : M.Val unit :=
          let* α0 : M.Val (array (ref str.t)) :=
            M.alloc [ mk_str "1 + 2 = "; mk_str "
" ] in
          let* α1 : ref (array (ref str.t)) := borrow α0 in
          let* α2 : M.Val (array (ref str.t)) := deref α1 in
          let* α3 : ref (array (ref str.t)) := borrow α2 in
          let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
          let* α5 : M.Val (ref (slice (ref str.t))) :=
            pointer_coercion "Unsize" α4 in
          let* α6 := M.read α5 in
          let* α7 : ref usize.t := borrow val in
          let* α8 : M.Val usize.t := deref α7 in
          let* α9 : ref usize.t := borrow α8 in
          let* α10 : core.fmt.rt.Argument.t :=
            core.fmt.rt.Argument.t::["new_display"] α9 in
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
      M.alloc tt in
    let* val : M.Val usize.t :=
      let* α0 : M.Val usize.t := M.alloc 1 in
      let* α1 : M.Val usize.t := M.alloc 2 in
      let* α2 : M.Val usize.t := BinOp.add α0 α1 in
      let* α3 : M.Val usize.t := M.alloc 3 in
      let* α4 : M.Val usize.t := M.alloc 4 in
      let* α5 : M.Val usize.t := BinOp.div α3 α4 in
      let* α6 : M.Val usize.t := BinOp.mul α2 α5 in
      M.copy α6 in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "(1 + 2) * (3 / 4) = "; mk_str "
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 : ref usize.t := borrow val in
        let* α8 : M.Val usize.t := deref α7 in
        let* α9 : ref usize.t := borrow α8 in
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
    M.alloc tt).
