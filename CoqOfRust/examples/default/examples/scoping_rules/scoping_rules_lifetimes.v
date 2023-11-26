(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    let i = 3; // Lifetime for `i` starts. ────────────────┐
               //                                                     │
    {
        //                                                   │
        let borrow1 = &i; // `borrow1` lifetime starts. ──┐│
                          //                                                ││
        println!("borrow1: {}", borrow1); //              ││
    } // `borrow1` ends. ─────────────────────────────────┘│
      //                                                     │
      //                                                     │
    {
        //                                                   │
        let borrow2 = &i; // `borrow2` lifetime starts. ──┐│
                          //                                                ││
        println!("borrow2: {}", borrow2); //              ││
    } // `borrow2` ends. ─────────────────────────────────┘│
      //                                                     │
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* i : ltac:(refine (M.Val i32.t)) :=
      let* α0 : ltac:(refine (M.Val i32.t)) := M.alloc 3 in
      M.copy α0 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* borrow1 : ltac:(refine (M.Val (ref i32.t))) :=
        let* α0 : ltac:(refine (M.Val (ref i32.t))) := borrow i in
        M.copy α0 in
      let* _ : ltac:(refine (M.Val unit)) :=
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
            M.alloc [ mk_str "borrow1: "; mk_str "
" ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (M.Val (ref (ref i32.t)))) := borrow borrow1 in
          let* α4 := core.fmt.rt.Argument.t::["new_display"] α3 in
          let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
            M.alloc α4 in
          let* α6 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
            M.alloc [ α5 ] in
          let* α7 :
              ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
            borrow α6 in
          let* α8 :
              ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
            pointer_coercion "Unsize" α7 in
          let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
          let* α10 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α9 in
          let* α11 := std.io.stdio._print α10 in
          M.alloc α11 in
        M.alloc tt in
      M.alloc tt in
    let* borrow2 : ltac:(refine (M.Val (ref i32.t))) :=
      let* α0 : ltac:(refine (M.Val (ref i32.t))) := borrow i in
      M.copy α0 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "borrow2: "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref (ref i32.t)))) := borrow borrow2 in
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
    M.alloc tt).
