(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  PrintInOption.
Section PrintInOption.
  Class Trait (Self : Set) : Type := {
    print_in_option : ltac:(Self) -> M unit;
  }.
  
End PrintInOption.
End PrintInOption.

Module  Impl_generics_where_clauses_PrintInOption_for_T.
Section Impl_generics_where_clauses_PrintInOption_for_T.
  Context {T : Set}.
  
  Context {ℋ_0 : core.fmt.Debug.Trait (core.option.Option.t T)}.
  
  Ltac Self := exact T.
  
  (*
      fn print_in_option(self) {
          println!("{:?}", Some(self));
      }
  *)
  Definition print_in_option (self : M.Val ltac:(Self)) : M (M.Val unit) :=
    M.function_body
      (let* _ : ltac:(refine (M.Val unit)) :=
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
            M.alloc [ mk_str ""; mk_str "
" ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 := M.read self in
          let* α4 : ltac:(refine (M.Val (core.option.Option.t T))) :=
            M.alloc (core.option.Option.Some α3) in
          let* α5 : ltac:(refine (M.Val (ref (core.option.Option.t T)))) :=
            borrow α4 in
          let* α6 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
            core.fmt.rt.Argument.t::["new_debug"] α5 in
          let* α7 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
            M.alloc [ α6 ] in
          let* α8 :
              ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
            borrow α7 in
          let* α9 :
              ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
            pointer_coercion "Unsize" α8 in
          let* α10 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
            core.fmt.Arguments.t::["new_v1"] α2 α9 in
          std.io.stdio._print α10 in
        M.alloc tt in
      M.alloc tt).
  
  Global Instance AssociatedFunction_print_in_option :
    Notations.DoubleColon ltac:(Self) "print_in_option" := {
    Notations.double_colon := print_in_option;
  }.
  
  Global Instance ℐ :
    generics_where_clauses.PrintInOption.Trait ltac:(Self) := {
    generics_where_clauses.PrintInOption.print_in_option := print_in_option;
  }.
End Impl_generics_where_clauses_PrintInOption_for_T.
End Impl_generics_where_clauses_PrintInOption_for_T.

(*
fn main() {
    let vec = vec![1, 2, 3];

    vec.print_in_option();
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M (M.Val unit) :=
  M.function_body
    (let* vec :
        ltac:(refine (M.Val (alloc.vec.Vec.t i32.t alloc.alloc.Global.t))) :=
      let* α0 : ltac:(refine (M.Val i32.t)) := M.alloc 1 in
      let* α1 : ltac:(refine (M.Val i32.t)) := M.alloc 2 in
      let* α2 : ltac:(refine (M.Val i32.t)) := M.alloc 3 in
      let* α3 : ltac:(refine (M.Val (array i32.t))) := M.alloc [ α0; α1; α2 ] in
      let* α4 :
          ltac:(refine
            (M.Val (alloc.boxed.Box.t (array i32.t) alloc.alloc.Global.t))) :=
        (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α3 in
      let* α5 :
          ltac:(refine
            (M.Val (alloc.boxed.Box.t (slice i32.t) alloc.alloc.Global.t))) :=
        pointer_coercion "Unsize" α4 in
      let* α6 :
          ltac:(refine (M.Val (alloc.vec.Vec.t i32.t alloc.alloc.Global.t))) :=
        (slice i32.t)::["into_vec"] α5 in
      M.copy α6 in
    let* _ : ltac:(refine (M.Val unit)) :=
      (generics_where_clauses.PrintInOption.print_in_option
          (Self := alloc.vec.Vec.t i32.t alloc.alloc.Global.t)
          (Trait := ltac:(refine _)))
        vec in
    M.alloc tt).
