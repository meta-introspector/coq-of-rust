(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Empty.
Section Empty.
  Inductive t : Set := Build.
End Empty.
End Empty.

Module  Null.
Section Null.
  Inductive t : Set := Build.
End Null.
End Null.

Module  DoubleDrop.
Section DoubleDrop.
  Class Trait (Self : Set) {T : Set} : Type := {
    double_drop : ltac:(Self) -> T -> M unit;
  }.
  
End DoubleDrop.
End DoubleDrop.

Module  Impl_generics_traits_DoubleDrop_T_for_U.
Section Impl_generics_traits_DoubleDrop_T_for_U.
  Context {T U : Set}.
  
  Ltac Self := exact U.
  
  (*
      fn double_drop(self, _: T) {}
  *)
  Definition double_drop (self : ltac:(Self)) (Pattern : T) : M unit :=
    let* self : M.Val ltac:(Self) := M.alloc self in
    let* Pattern : M.Val T := M.alloc Pattern in
    M.function_body (M.alloc tt).
  
  Global Instance AssociatedFunction_double_drop :
    Notations.DoubleColon ltac:(Self) "double_drop" := {
    Notations.double_colon := double_drop;
  }.
  
  Global Instance ℐ : generics_traits.DoubleDrop.Trait ltac:(Self) (T := T) := {
    generics_traits.DoubleDrop.double_drop := double_drop;
  }.
End Impl_generics_traits_DoubleDrop_T_for_U.
End Impl_generics_traits_DoubleDrop_T_for_U.

(*
fn main() {
    let empty = Empty;
    let null = Null;

    // Deallocate `empty` and `null`.
    empty.double_drop(null);

    //empty;
    //null;
    // ^ TODO: Try uncommenting these lines.
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* empty : M.Val generics_traits.Empty.t :=
      M.alloc generics_traits.Empty.Build_t in
    let* null : M.Val generics_traits.Null.t :=
      M.alloc generics_traits.Null.Build_t in
    let* _ : M.Val unit :=
      let* α0 := M.read empty in
      let* α1 := M.read null in
      let* α2 : unit :=
        (generics_traits.DoubleDrop.double_drop
            (Self := generics_traits.Empty.t)
            (Trait := ltac:(refine _)))
          α0
          α1 in
      M.alloc α2 in
    M.alloc tt).
