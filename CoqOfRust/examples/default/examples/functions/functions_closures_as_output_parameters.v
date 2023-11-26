(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn create_fn() -> impl Fn() {
    let text = "Fn".to_owned();

    move || println!("This is a: {}", text)
}
*)
Definition create_fn : M _ (* OpaqueTy *) :=
  M.function_body
    (let* text : ltac:(refine (M.Val alloc.string.String.t)) :=
      let* α0 : ltac:(refine (M.Val str.t)) := deref (mk_str "Fn") in
      let* α1 : ltac:(refine (M.Val (ref str.t))) := borrow α0 in
      let* α2 :=
        (alloc.borrow.ToOwned.to_owned
            (Self := str.t)
            (Trait := ltac:(refine _)))
          α1 in
      M.alloc α2 in
    M.pure
      (let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "This is a: "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref alloc.string.String.t))) :=
          borrow text in
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
      M.alloc tt)).

Error OpaqueTy.

(*
fn create_fnmut() -> impl FnMut() {
    let text = "FnMut".to_owned();

    move || println!("This is a: {}", text)
}
*)
Definition create_fnmut : M _ (* OpaqueTy *) :=
  M.function_body
    (let* text : ltac:(refine (M.Val alloc.string.String.t)) :=
      let* α0 : ltac:(refine (M.Val str.t)) := deref (mk_str "FnMut") in
      let* α1 : ltac:(refine (M.Val (ref str.t))) := borrow α0 in
      let* α2 :=
        (alloc.borrow.ToOwned.to_owned
            (Self := str.t)
            (Trait := ltac:(refine _)))
          α1 in
      M.alloc α2 in
    M.pure
      (let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "This is a: "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref alloc.string.String.t))) :=
          borrow text in
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
      M.alloc tt)).

(*
fn create_fnonce() -> impl FnOnce() {
    let text = "FnOnce".to_owned();

    move || println!("This is a: {}", text)
}
*)
Definition create_fnonce : M _ (* OpaqueTy *) :=
  M.function_body
    (let* text : ltac:(refine (M.Val alloc.string.String.t)) :=
      let* α0 : ltac:(refine (M.Val str.t)) := deref (mk_str "FnOnce") in
      let* α1 : ltac:(refine (M.Val (ref str.t))) := borrow α0 in
      let* α2 :=
        (alloc.borrow.ToOwned.to_owned
            (Self := str.t)
            (Trait := ltac:(refine _)))
          α1 in
      M.alloc α2 in
    M.pure
      (let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "This is a: "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref alloc.string.String.t))) :=
          borrow text in
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
      M.alloc tt)).

(*
fn main() {
    let fn_plain = create_fn();
    let mut fn_mut = create_fnmut();
    let fn_once = create_fnonce();

    fn_plain();
    fn_mut();
    fn_once();
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* fn_plain : ltac:(refine (M.Val type not implemented)) :=
      let* α0 := functions_closures_as_output_parameters.create_fn in
      M.alloc α0 in
    let* fn_mut : ltac:(refine (M.Val type not implemented)) :=
      let* α0 := functions_closures_as_output_parameters.create_fnmut in
      M.alloc α0 in
    let* fn_once : ltac:(refine (M.Val type not implemented)) :=
      let* α0 := functions_closures_as_output_parameters.create_fnonce in
      M.alloc α0 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* α0 : ltac:(refine (M.Val (ref type not implemented))) :=
        borrow fn_plain in
      let* α1 : ltac:(refine (M.Val unit)) := M.alloc tt in
      let* α2 :=
        (core.ops.function.Fn.call
            (Self := type not implemented)
            (Trait := ltac:(refine _)))
          α0
          α1 in
      M.alloc α2 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* α0 : ltac:(refine (M.Val (mut_ref type not implemented))) :=
        borrow_mut fn_mut in
      let* α1 : ltac:(refine (M.Val unit)) := M.alloc tt in
      let* α2 :=
        (core.ops.function.FnMut.call_mut
            (Self := type not implemented)
            (Trait := ltac:(refine _)))
          α0
          α1 in
      M.alloc α2 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* α0 : ltac:(refine (M.Val unit)) := M.alloc tt in
      let* α1 :=
        (core.ops.function.FnOnce.call_once
            (Self := type not implemented)
            (Trait := ltac:(refine _)))
          fn_once
          α0 in
      M.alloc α1 in
    M.alloc tt).
