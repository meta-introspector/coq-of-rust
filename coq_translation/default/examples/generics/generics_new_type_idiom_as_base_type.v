(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Years.
  Record t : Set := { _ : i64;}.
  
  Global Instance Get_0 : Notation.Dot 0 := {
    Notation.dot '(Build_t x0) := x0;
  }.
End Years.
Definition Years := Years.t.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let years := generics_new_type_idiom_as_base_type.Years.Build_t 42 in
  let years_as_primitive_1 := years.[0] in
  let
      'generics_new_type_idiom_as_base_type.Years.Build_t
        years_as_primitive_2 :=
    years in
  Pure tt.