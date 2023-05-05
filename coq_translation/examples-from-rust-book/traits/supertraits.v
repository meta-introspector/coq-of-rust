(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Person.
  Class Trait (Self : Set) : Set := {
    name : (ref Self) -> (M String);
  }.
  
  Global Instance Method_name `(Trait) : Notation.Dot "name" := {
    Notation.dot := name;
  }.
End Person.

Module Student.
  Class Trait (Self : Set) : Set := {
    university : (ref Self) -> (M String);
  }.
  
  Global Instance Method_university `(Trait) : Notation.Dot "university" := {
    Notation.dot := university;
  }.
End Student.

Module Programmer.
  Class Trait (Self : Set) : Set := {
    fav_language : (ref Self) -> (M String);
  }.
  
  Global Instance Method_fav_language `(Trait)
    : Notation.Dot "fav_language" := {
    Notation.dot := fav_language;
  }.
End Programmer.

Module CompSciStudent.
  Class Trait (Self : Set) : Set := {
    git_username : (ref Self) -> (M String);
  }.
  
  Global Instance Method_git_username `(Trait)
    : Notation.Dot "git_username" := {
    Notation.dot := git_username;
  }.
End CompSciStudent.

Definition comp_sci_student_greeting (student : ref TraitObject) :=
  let return_type := String in
  ltac:(function (
    let res :=
      _crate.fmt.format(|
        format_arguments::["new_v1"](|
          [
            "My name is ";
            " and I attend ";
            ". My favorite language is ";
            ". My Git username is "
          ],
          [
            format_argument::["new_display"](| student.["name"](||) |);
            format_argument::["new_display"](| student.["university"](||) |);
            format_argument::["new_display"](| student.["fav_language"](||) |);
            format_argument::["new_display"](| student.["git_username"](||) |)
          ]
        |)
      |) in
    res
  : return_type)).

Definition main :=
  let return_type := unit in
  ltac:(function (
    tt
  : return_type)).
