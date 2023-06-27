(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Person.
  Class Trait (Self : Set) : Set := {  
    name : (ref Self) -> (M alloc.string.String);
  }.
  
  Global Instance Method_name `(Trait) : Notation.Dot "name" := {
    Notation.dot := name;
  }.
End Person.

Module Student.
  Class Trait (Self : Set) : Set := {  
    university : (ref Self) -> (M alloc.string.String);
  }.
  
  Global Instance Method_university `(Trait) : Notation.Dot "university" := {
    Notation.dot := university;
  }.
End Student.

Module Programmer.
  Class Trait (Self : Set) : Set := {  
    fav_language : (ref Self) -> (M alloc.string.String);
  }.
  
  Global Instance Method_fav_language `(Trait)
    : Notation.Dot "fav_language" := {
    Notation.dot := fav_language;
  }.
End Programmer.

Module CompSciStudent.
  Class Trait (Self : Set) : Set := {  
    git_username : (ref Self) -> (M alloc.string.String);
  }.
  
  Global Instance Method_git_username `(Trait)
    : Notation.Dot "git_username" := {
    Notation.dot := git_username;
  }.
End CompSciStudent.

Definition comp_sci_student_greeting
    (student : ref TraitObject)
    : M alloc.string.String :=
  let* res :=
    let* α0 := student.["name"] in
    let* α1 := format_argument::["new_display"] (addr_of α0) in
    let* α2 := student.["university"] in
    let* α3 := format_argument::["new_display"] (addr_of α2) in
    let* α4 := student.["fav_language"] in
    let* α5 := format_argument::["new_display"] (addr_of α4) in
    let* α6 := student.["git_username"] in
    let* α7 := format_argument::["new_display"] (addr_of α6) in
    let* α8 :=
      format_arguments::["new_v1"]
        (addr_of
          [
            "My name is ";
            " and I attend ";
            ". My favorite language is ";
            ". My Git username is "
          ])
        (addr_of [ α1; α3; α5; α7 ]) in
    alloc.fmt.format α8 in
  Pure res.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit := Pure tt.
