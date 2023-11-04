(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Years.
Section Years.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    x0 : i64;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_0 : Notation.Dot "0" := {
    Notation.dot x := let* x := M.read x in Pure x.(x0) : M _;
  }.
End Years.
End Years.
Definition Years `{ℋ : State.Trait} : Set := M.val Years.t.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  let* years :=
    let* α0 := M.alloc 42 in
    M.alloc (generics_new_type_idiom_as_base_type.Years.Build_t α0) in
  let* years_as_primitive_1 := years.["0"] in
  let
      'generics_new_type_idiom_as_base_type.Years.Build_t
        years_as_primitive_2 :=
    years in
  M.alloc tt.
