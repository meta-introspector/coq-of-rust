(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Person.
Section Person.
  Context `{ℋ : State.Trait}.
  
  Class Trait (Self : Set) : Type := {
    name : (ref Self) -> M alloc.string.String;
  }.
  
End Person.
End Person.

Module  Student.
Section Student.
  Context `{ℋ : State.Trait}.
  
  Class Trait (Self : Set) : Type := {
    ℒ_0 :: supertraits.Person.Trait Self;
    university : (ref Self) -> M alloc.string.String;
  }.
  
End Student.
End Student.

Module  Programmer.
Section Programmer.
  Context `{ℋ : State.Trait}.
  
  Class Trait (Self : Set) : Type := {
    fav_language : (ref Self) -> M alloc.string.String;
  }.
  
End Programmer.
End Programmer.

Module  CompSciStudent.
Section CompSciStudent.
  Context `{ℋ : State.Trait}.
  
  Class Trait (Self : Set) : Type := {
    ℒ_0 :: supertraits.Programmer.Trait Self;
    ℒ_1 :: supertraits.Student.Trait Self;
    git_username : (ref Self) -> M alloc.string.String;
  }.
  
End CompSciStudent.
End CompSciStudent.

Definition comp_sci_student_greeting
    `{ℋ : State.Trait}
    {DynT : Set}
    {ℋ_0 : supertraits.CompSciStudent.Trait DynT}
    (student : ref DynT)
    : M alloc.string.String :=
  M.function_body
    (let* res : ltac:(refine alloc.string.String) :=
      let* α0 : ltac:(refine (array (ref str))) :=
        M.alloc
          [
            mk_str "My name is ";
            mk_str " and I attend ";
            mk_str ". My favorite language is ";
            mk_str ". My Git username is "
          ] in
      let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
      let* α2 : ltac:(refine (array (ref str))) := deref α1 in
      let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
      let* α4 : ltac:(refine (ref (slice (ref str)))) :=
        pointer_coercion "Unsize" α3 in
      let* α5 : ltac:(refine type not implemented) := deref student in
      let* α6 : ltac:(refine (ref type not implemented)) := borrow α5 in
      let* α7 : ltac:(refine alloc.string.String) :=
        (supertraits.Person.name
            (Self := type not implemented)
            (Trait := ltac:(refine _)))
          α6 in
      let* α8 : ltac:(refine (ref alloc.string.String)) := borrow α7 in
      let* α9 : ltac:(refine alloc.string.String) := deref α8 in
      let* α10 : ltac:(refine (ref alloc.string.String)) := borrow α9 in
      let* α11 : ltac:(refine core.fmt.rt.Argument) :=
        core.fmt.rt.Argument::["new_display"] α10 in
      let* α12 : ltac:(refine type not implemented) := deref student in
      let* α13 : ltac:(refine (ref type not implemented)) := borrow α12 in
      let* α14 : ltac:(refine alloc.string.String) :=
        (supertraits.Student.university
            (Self := type not implemented)
            (Trait := ltac:(refine _)))
          α13 in
      let* α15 : ltac:(refine (ref alloc.string.String)) := borrow α14 in
      let* α16 : ltac:(refine alloc.string.String) := deref α15 in
      let* α17 : ltac:(refine (ref alloc.string.String)) := borrow α16 in
      let* α18 : ltac:(refine core.fmt.rt.Argument) :=
        core.fmt.rt.Argument::["new_display"] α17 in
      let* α19 : ltac:(refine type not implemented) := deref student in
      let* α20 : ltac:(refine (ref type not implemented)) := borrow α19 in
      let* α21 : ltac:(refine alloc.string.String) :=
        (supertraits.Programmer.fav_language
            (Self := type not implemented)
            (Trait := ltac:(refine _)))
          α20 in
      let* α22 : ltac:(refine (ref alloc.string.String)) := borrow α21 in
      let* α23 : ltac:(refine alloc.string.String) := deref α22 in
      let* α24 : ltac:(refine (ref alloc.string.String)) := borrow α23 in
      let* α25 : ltac:(refine core.fmt.rt.Argument) :=
        core.fmt.rt.Argument::["new_display"] α24 in
      let* α26 : ltac:(refine type not implemented) := deref student in
      let* α27 : ltac:(refine (ref type not implemented)) := borrow α26 in
      let* α28 : ltac:(refine alloc.string.String) :=
        (supertraits.CompSciStudent.git_username
            (Self := type not implemented)
            (Trait := ltac:(refine _)))
          α27 in
      let* α29 : ltac:(refine (ref alloc.string.String)) := borrow α28 in
      let* α30 : ltac:(refine alloc.string.String) := deref α29 in
      let* α31 : ltac:(refine (ref alloc.string.String)) := borrow α30 in
      let* α32 : ltac:(refine core.fmt.rt.Argument) :=
        core.fmt.rt.Argument::["new_display"] α31 in
      let* α33 : ltac:(refine (array core.fmt.rt.Argument)) :=
        M.alloc [ α11; α18; α25; α32 ] in
      let* α34 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
        borrow α33 in
      let* α35 : ltac:(refine (array core.fmt.rt.Argument)) := deref α34 in
      let* α36 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
        borrow α35 in
      let* α37 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
        pointer_coercion "Unsize" α36 in
      let* α38 : ltac:(refine core.fmt.Arguments) :=
        core.fmt.Arguments::["new_v1"] α4 α37 in
      alloc.fmt.format α38 in
    M.pure res).

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit := M.function_body (M.alloc tt).
