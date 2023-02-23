(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Person.
  Class Class (Self : Set) : Set := {
    name : (ref Self) -> String;
  }.
  
  Global Instance Method_name `(Class) : Method "name" _ := {|
    method := name;
  |}.
End Person.

Module Student.
  Class Class (Self : Set) : Set := {
    university : (ref Self) -> String;
  }.
  
  Global Instance Method_university `(Class) : Method "university" _ := {|
    method := university;
  |}.
End Student.

Module Programmer.
  Class Class (Self : Set) : Set := {
    fav_language : (ref Self) -> String;
  }.
  
  Global Instance Method_fav_language `(Class) : Method "fav_language" _ := {|
    method := fav_language;
  |}.
End Programmer.

Module CompSciStudent.
  Class Class (Self : Set) : Set := {
    git_username : (ref Self) -> String;
  }.
  
  Global Instance Method_git_username `(Class) : Method "git_username" _ := {|
    method := git_username;
  |}.
End CompSciStudent.

Definition comp_sci_student_greeting (student : ref TraitObject) : String :=
  let res :=
    _crate.fmt.format
      (_crate.fmt.ImplArguments.new_v1
        [
          "My name is ";
          " and I attend ";
          ". My favorite language is ";
          ". My Git username is "
        ]
        [
          _crate.fmt.ImplArgumentV1.new_display (method "name" student);
          _crate.fmt.ImplArgumentV1.new_display (method "university" student);
          _crate.fmt.ImplArgumentV1.new_display (method "fav_language" student);
          _crate.fmt.ImplArgumentV1.new_display (method "git_username" student)
        ]) in
  res.

Definition main (_ : unit) : unit := tt.
