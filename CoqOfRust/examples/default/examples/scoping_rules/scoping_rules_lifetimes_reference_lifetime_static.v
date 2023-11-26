(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition NUM : i32.t := M.run (M.alloc 18).

(*
fn coerce_static<'a>(_: &'a i32) -> &'a i32 {
    &NUM
}
*)
Definition coerce_static (arg : M.Val (ref i32.t)) : M (ref i32.t) :=
  M.function_body
    (let* α0 : ltac:(refine (M.Val i32.t)) :=
      deref scoping_rules_lifetimes_reference_lifetime_static.NUM in
    borrow α0).

(*
fn main() {
    {
        // Make a `string` literal and print it:
        let static_string = "I'm in read-only memory";
        println!("static_string: {}", static_string);

        // When `static_string` goes out of scope, the reference
        // can no longer be used, but the data remains in the binary.
    }

    {
        // Make an integer to use for `coerce_static`:
        let lifetime_num = 9;

        // Coerce `NUM` to lifetime of `lifetime_num`:
        let coerced_static = coerce_static(&lifetime_num);

        println!("coerced_static: {}", coerced_static);
    }

    println!("NUM: {} stays accessible!", NUM);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* _ : ltac:(refine (M.Val unit)) :=
      let* static_string : ltac:(refine (M.Val (ref str.t))) :=
        M.copy (mk_str "I'm in read-only memory") in
      let* _ : ltac:(refine (M.Val unit)) :=
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
            M.alloc [ mk_str "static_string: "; mk_str "
" ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (M.Val (ref (ref str.t)))) :=
            borrow static_string in
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
    let* _ : ltac:(refine (M.Val unit)) :=
      let* lifetime_num : ltac:(refine (M.Val i32.t)) :=
        let* α0 : ltac:(refine (M.Val i32.t)) := M.alloc 9 in
        M.copy α0 in
      let* coerced_static : ltac:(refine (M.Val (ref i32.t))) :=
        let* α0 : ltac:(refine (M.Val (ref i32.t))) := borrow lifetime_num in
        let* α1 :=
          scoping_rules_lifetimes_reference_lifetime_static.coerce_static α0 in
        M.alloc α1 in
      let* _ : ltac:(refine (M.Val unit)) :=
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
            M.alloc [ mk_str "coerced_static: "; mk_str "
" ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (M.Val (ref (ref i32.t)))) :=
            borrow coerced_static in
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
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "NUM: "; mk_str " stays accessible!
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val i32.t)) :=
          deref scoping_rules_lifetimes_reference_lifetime_static.NUM in
        let* α4 : ltac:(refine (M.Val (ref i32.t))) := borrow α3 in
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
    M.alloc tt).
