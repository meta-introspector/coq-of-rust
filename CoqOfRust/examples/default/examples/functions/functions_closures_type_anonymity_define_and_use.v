(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn apply<F>(f: F)
where
    F: Fn(),
{
    f();
}
*)
Definition apply
    {F : Set}
    {ℋ_0 : core.ops.function.Fn.Trait F (Args := unit)}
    (f : M.Val F)
    : M unit :=
  M.function_body
    (let* _ : ltac:(refine (M.Val unit)) :=
      let* α0 : ltac:(refine (M.Val (ref F))) := borrow f in
      let* α1 : ltac:(refine (M.Val unit)) := M.alloc tt in
      let* α2 :=
        (core.ops.function.Fn.call (Self := F) (Trait := ltac:(refine _)))
          α0
          α1 in
      M.alloc α2 in
    M.alloc tt).

(*
fn main() {
    let x = 7;

    // Capture `x` into an anonymous type and implement
    // `Fn` for it. Store it in `print`.
    let print = || println!("{}", x);

    apply(print);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* x : ltac:(refine (M.Val i32.t)) :=
      let* α0 : ltac:(refine (M.Val i32.t)) := M.alloc 7 in
      M.copy α0 in
    let* print : ltac:(refine (M.Val type not implemented)) :=
      M.copy
        (let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
            M.alloc [ mk_str ""; mk_str "
" ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (M.Val (ref i32.t))) := borrow x in
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
        M.alloc tt) in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* α0 := functions_closures_type_anonymity_define_and_use.apply print in
      M.alloc α0 in
    M.alloc tt).
