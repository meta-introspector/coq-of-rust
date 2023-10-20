(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Person.
  Class Trait (Self : Set) `{State.Trait} : Type := {
    name : (ref Self) -> M alloc.string.String;
  }.
  
  Global Instance Method_name `{State.Trait} `(Trait) : Notation.Dot "name" := {
    Notation.dot := name;
  }.
End Person.

Module Student.
  Class Trait (Self : Set) `{supertraits.Person.Trait Self} `{State.Trait} :
      Type := {
    university : (ref Self) -> M alloc.string.String;
  }.
  
  Global Instance Method_university `{State.Trait} `(Trait)
    : Notation.Dot "university" := {
    Notation.dot := university;
  }.
End Student.

Module Programmer.
  Class Trait (Self : Set) `{State.Trait} : Type := {
    fav_language : (ref Self) -> M alloc.string.String;
  }.
  
  Global Instance Method_fav_language `{State.Trait} `(Trait)
    : Notation.Dot "fav_language" := {
    Notation.dot := fav_language;
  }.
End Programmer.

Module CompSciStudent.
  Class Trait
      (Self : Set)
      `{supertraits.Programmer.Trait Self}
      `{supertraits.Student.Trait Self}
      `{State.Trait} :
      Type := {
    git_username : (ref Self) -> M alloc.string.String;
  }.
  
  Global Instance Method_git_username `{State.Trait} `(Trait)
    : Notation.Dot "git_username" := {
    Notation.dot := git_username;
  }.
End CompSciStudent.

Parameter comp_sci_student_greeting :
    forall `{State.Trait} {DynT : Set} `{supertraits.CompSciStudent.Trait DynT},
    (ref DynT) -> M alloc.string.String.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{State.Trait}, M unit.
