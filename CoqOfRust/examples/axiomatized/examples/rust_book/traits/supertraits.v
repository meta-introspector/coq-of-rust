(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Person.
Section Person.
  Class Trait (Self : Set) : Type := {
    name : (ref Self) -> M alloc.string.String.t;
  }.
  
End Person.
End Person.

Module  Student.
Section Student.
  Class Trait (Self : Set) : Type := {
    university : (ref Self) -> M alloc.string.String.t;
  }.
  
End Student.
End Student.

Module  Programmer.
Section Programmer.
  Class Trait (Self : Set) : Type := {
    fav_language : (ref Self) -> M alloc.string.String.t;
  }.
  
End Programmer.
End Programmer.

Module  CompSciStudent.
Section CompSciStudent.
  Class Trait (Self : Set) : Type := {
    git_username : (ref Self) -> M alloc.string.String.t;
  }.
  
End CompSciStudent.
End CompSciStudent.

Parameter comp_sci_student_greeting :
    forall {DynT : Set},
    (ref DynT) -> M alloc.string.String.t.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.
