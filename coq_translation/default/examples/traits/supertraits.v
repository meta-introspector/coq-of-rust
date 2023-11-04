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
  let* res :=
    let* α0 :=
      borrow
        [
          mk_str "My name is ";
          mk_str " and I attend ";
          mk_str ". My favorite language is ";
          mk_str ". My Git username is "
        ]
        (list (ref str)) in
    let* α1 := deref α0 (list (ref str)) in
    let* α2 := borrow α1 (list (ref str)) in
    let* α3 := pointer_coercion "Unsize" α2 in
    let* α4 := deref student type not implemented in
    let* α5 := borrow α4 type not implemented in
    let* α6 :=
      (supertraits.Person.name
          (Self := type not implemented)
          (Trait := ltac:(refine _)))
        α5 in
    let* α7 := borrow α6 alloc.string.String in
    let* α8 := deref α7 alloc.string.String in
    let* α9 := borrow α8 alloc.string.String in
    let* α10 := core.fmt.rt.Argument::["new_display"] α9 in
    let* α11 := deref student type not implemented in
    let* α12 := borrow α11 type not implemented in
    let* α13 :=
      (supertraits.Student.university
          (Self := type not implemented)
          (Trait := ltac:(refine _)))
        α12 in
    let* α14 := borrow α13 alloc.string.String in
    let* α15 := deref α14 alloc.string.String in
    let* α16 := borrow α15 alloc.string.String in
    let* α17 := core.fmt.rt.Argument::["new_display"] α16 in
    let* α18 := deref student type not implemented in
    let* α19 := borrow α18 type not implemented in
    let* α20 :=
      (supertraits.Programmer.fav_language
          (Self := type not implemented)
          (Trait := ltac:(refine _)))
        α19 in
    let* α21 := borrow α20 alloc.string.String in
    let* α22 := deref α21 alloc.string.String in
    let* α23 := borrow α22 alloc.string.String in
    let* α24 := core.fmt.rt.Argument::["new_display"] α23 in
    let* α25 := deref student type not implemented in
    let* α26 := borrow α25 type not implemented in
    let* α27 :=
      (supertraits.CompSciStudent.git_username
          (Self := type not implemented)
          (Trait := ltac:(refine _)))
        α26 in
    let* α28 := borrow α27 alloc.string.String in
    let* α29 := deref α28 alloc.string.String in
    let* α30 := borrow α29 alloc.string.String in
    let* α31 := core.fmt.rt.Argument::["new_display"] α30 in
    let* α32 := borrow [ α10; α17; α24; α31 ] (list core.fmt.rt.Argument) in
    let* α33 := deref α32 (list core.fmt.rt.Argument) in
    let* α34 := borrow α33 (list core.fmt.rt.Argument) in
    let* α35 := pointer_coercion "Unsize" α34 in
    let* α36 := core.fmt.Arguments::["new_v1"] α3 α35 in
    alloc.fmt.format α36 in
  Pure res.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit := M.alloc tt.
