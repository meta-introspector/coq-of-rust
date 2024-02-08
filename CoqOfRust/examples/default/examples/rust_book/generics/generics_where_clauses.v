(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  PrintInOption.
Section PrintInOption.
  Class Trait (Self : Set) : Type := {
    print_in_option : Self -> M unit;
  }.
  
End PrintInOption.
End PrintInOption.

Module  Impl_generics_where_clauses_PrintInOption_for_T.
Section Impl_generics_where_clauses_PrintInOption_for_T.
  Context {T : Set}.
  
  Definition Self : Set := T.
  
  (*
      fn print_in_option(self) {
          println!("{:?}", Some(self));
      }
  *)
  Definition print_in_option (self : Self) : M unit :=
    let* self := M.alloc self in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : ref str.t := M.read (mk_str "") in
        let* α1 : ref str.t := M.read (mk_str "
") in
        let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
        let* α3 : T := M.read self in
        let* α4 : M.Val (core.option.Option.t T) :=
          M.alloc (core.option.Option.Some α3) in
        let* α5 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow α4)) in
        let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
        let* α7 : core.fmt.Arguments.t :=
          M.call
            (core.fmt.Arguments.t::["new_v1"]
              (pointer_coercion "Unsize" (borrow α2))
              (pointer_coercion "Unsize" (borrow α6))) in
        let* α8 : unit := M.call (std.io.stdio._print α7) in
        M.alloc α8 in
      M.alloc tt in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
  
  Global Instance AssociatedFunction_print_in_option :
    Notations.DoubleColon Self "print_in_option" := {
    Notations.double_colon := print_in_option;
  }.
  
  Global Instance ℐ : generics_where_clauses.PrintInOption.Trait Self := {
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
  let* vec : M.Val (alloc.vec.Vec.t i32.t alloc.alloc.Global.t) :=
    let* α0 : M.Val (array i32.t) :=
      M.alloc
        [
          (Integer.of_Z 1) : i32.t;
          (Integer.of_Z 2) : i32.t;
          (Integer.of_Z 3) : i32.t
        ] in
    let* α1 : M.Val (alloc.boxed.Box.t (array i32.t) alloc.alloc.Global.t) :=
      M.call ((alloc.boxed.Box.t _ alloc.boxed.Box.Default.A)::["new"] α0) in
    let* α2 : alloc.boxed.Box.t (array i32.t) alloc.alloc.Global.t :=
      M.read α1 in
    let* α3 : alloc.vec.Vec.t i32.t alloc.alloc.Global.t :=
      M.call ((slice i32.t)::["into_vec"] (pointer_coercion "Unsize" α2)) in
    M.alloc α3 in
  let* _ : M.Val unit :=
    let* α0 : (alloc.vec.Vec.t i32.t alloc.alloc.Global.t) -> M unit :=
      ltac:(M.get_method (fun ℐ =>
        generics_where_clauses.PrintInOption.print_in_option
          (Self := alloc.vec.Vec.t i32.t alloc.alloc.Global.t)
          (Trait := ℐ))) in
    let* α1 : alloc.vec.Vec.t i32.t alloc.alloc.Global.t := M.read vec in
    let* α2 : unit := M.call (α0 α1) in
    M.alloc α2 in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
