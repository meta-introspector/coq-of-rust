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
  Definition print_in_option (self : ltac:(Self)) : M unit :=
    let* self : M.Val ltac:(Self) := M.alloc self in
    M.function_body
      (let* _ : M.Val unit :=
        let* _ : M.Val unit :=
          let* α0 : M.Val (array (ref str.t)) :=
            M.alloc [ mk_str ""; mk_str "
" ] in
          let* α1 : ref (array (ref str.t)) := borrow α0 in
          let* α2 : M.Val (array (ref str.t)) := deref α1 in
          let* α3 : ref (array (ref str.t)) := borrow α2 in
          let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
          let* α5 : M.Val (ref (slice (ref str.t))) :=
            pointer_coercion "Unsize" α4 in
          let* α6 := M.read α5 in
          let* α7 := M.read self in
          let* α8 : M.Val (core.option.Option.t T) :=
            M.alloc (core.option.Option.Some α7) in
          let* α9 : ref (core.option.Option.t T) := borrow α8 in
          let* α10 : M.Val (core.option.Option.t T) := deref α9 in
          let* α11 : ref (core.option.Option.t T) := borrow α10 in
          let* α12 : core.fmt.rt.Argument.t :=
            core.fmt.rt.Argument.t::["new_debug"] α11 in
          let* α13 : M.Val core.fmt.rt.Argument.t := M.alloc α12 in
          let* α14 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α13 ] in
          let* α15 : ref (array core.fmt.rt.Argument.t) := borrow α14 in
          let* α16 : M.Val (array core.fmt.rt.Argument.t) := deref α15 in
          let* α17 : ref (array core.fmt.rt.Argument.t) := borrow α16 in
          let* α18 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
            M.alloc α17 in
          let* α19 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
            pointer_coercion "Unsize" α18 in
          let* α20 := M.read α19 in
          let* α21 : core.fmt.Arguments.t :=
            core.fmt.Arguments.t::["new_v1"] α6 α20 in
          let* α22 : unit := std.io.stdio._print α21 in
          M.alloc α22 in
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
Definition main : M unit :=
  M.function_body
    (let* vec : M.Val (alloc.vec.Vec.t i32.t alloc.alloc.Global.t) :=
      let* α0 : M.Val i32.t := M.alloc 1 in
      let* α1 : M.Val i32.t := M.alloc 2 in
      let* α2 : M.Val i32.t := M.alloc 3 in
      let* α3 : M.Val (array i32.t) := M.alloc [ α0; α1; α2 ] in
      let* α4 : M.Val (alloc.boxed.Box.t (array i32.t) alloc.alloc.Global.t) :=
        (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α3 in
      let* α5 : M.Val (alloc.boxed.Box.t (slice i32.t) alloc.alloc.Global.t) :=
        pointer_coercion "Unsize" α4 in
      let* α6 := M.read α5 in
      let* α7 : alloc.vec.Vec.t i32.t alloc.alloc.Global.t :=
        (slice i32.t)::["into_vec"] α6 in
      M.alloc α7 in
    let* _ : M.Val unit :=
      let* α0 := M.read vec in
      let* α1 : unit :=
        (generics_where_clauses.PrintInOption.print_in_option
            (Self := alloc.vec.Vec.t i32.t alloc.alloc.Global.t)
            (Trait := ltac:(refine _)))
          α0 in
      M.alloc α1 in
    M.alloc tt).
