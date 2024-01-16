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
    ℒ_0 :: supertraits.Person.Trait Self;
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
    ℒ_0 :: supertraits.Programmer.Trait Self;
    ℒ_1 :: supertraits.Student.Trait Self;
    git_username : (ref Self) -> M alloc.string.String.t;
  }.
  
End CompSciStudent.
End CompSciStudent.

(*
fn comp_sci_student_greeting(student: &dyn CompSciStudent) -> String {
    format!(
        "My name is {} and I attend {}. My favorite language is {}. My Git username is {}",
        student.name(),
        student.university(),
        student.fav_language(),
        student.git_username()
    )
}
*)
Definition comp_sci_student_greeting
    {DynT : Set}
    {ℋ_0 : supertraits.CompSciStudent.Trait DynT}
    (student : ref DynT)
    : M alloc.string.String.t :=
  let* student := M.alloc student in
  let* res : M.Val alloc.string.String.t :=
    let* α0 : ref str.t := M.read (mk_str "My name is ") in
    let* α1 : ref str.t := M.read (mk_str " and I attend ") in
    let* α2 : ref str.t := M.read (mk_str ". My favorite language is ") in
    let* α3 : ref str.t := M.read (mk_str ". My Git username is ") in
    let* α4 : M.Val (array (ref str.t)) := M.alloc [ α0; α1; α2; α3 ] in
    let* α5 : _ :=
      ltac:(M.get_method (fun ℐ =>
        supertraits.Person.name
          (Self := dyn [supertraits.CompSciStudent.Trait])
          (Trait := ℐ))) in
    let* α6 : ref (dyn [supertraits.CompSciStudent.Trait]) := M.read student in
    let* α7 : alloc.string.String.t := M.call (α5 α6) in
    let* α8 : M.Val alloc.string.String.t := M.alloc α7 in
    let* α9 : core.fmt.rt.Argument.t :=
      M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α8)) in
    let* α10 : _ :=
      ltac:(M.get_method (fun ℐ =>
        supertraits.Student.university
          (Self := dyn [supertraits.CompSciStudent.Trait])
          (Trait := ℐ))) in
    let* α11 : ref (dyn [supertraits.CompSciStudent.Trait]) := M.read student in
    let* α12 : alloc.string.String.t := M.call (α10 α11) in
    let* α13 : M.Val alloc.string.String.t := M.alloc α12 in
    let* α14 : core.fmt.rt.Argument.t :=
      M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α13)) in
    let* α15 : _ :=
      ltac:(M.get_method (fun ℐ =>
        supertraits.Programmer.fav_language
          (Self := dyn [supertraits.CompSciStudent.Trait])
          (Trait := ℐ))) in
    let* α16 : ref (dyn [supertraits.CompSciStudent.Trait]) := M.read student in
    let* α17 : alloc.string.String.t := M.call (α15 α16) in
    let* α18 : M.Val alloc.string.String.t := M.alloc α17 in
    let* α19 : core.fmt.rt.Argument.t :=
      M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α18)) in
    let* α20 : _ :=
      ltac:(M.get_method (fun ℐ =>
        supertraits.CompSciStudent.git_username
          (Self := dyn [supertraits.CompSciStudent.Trait])
          (Trait := ℐ))) in
    let* α21 : ref (dyn [supertraits.CompSciStudent.Trait]) := M.read student in
    let* α22 : alloc.string.String.t := M.call (α20 α21) in
    let* α23 : M.Val alloc.string.String.t := M.alloc α22 in
    let* α24 : core.fmt.rt.Argument.t :=
      M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α23)) in
    let* α25 : M.Val (array core.fmt.rt.Argument.t) :=
      M.alloc [ α9; α14; α19; α24 ] in
    let* α26 : core.fmt.Arguments.t :=
      M.call
        (core.fmt.Arguments.t::["new_v1"]
          (pointer_coercion "Unsize" (borrow α4))
          (pointer_coercion "Unsize" (borrow α25))) in
    let* α27 : alloc.string.String.t := M.call (alloc.fmt.format α26) in
    M.alloc α27 in
  M.read res.

(*
fn main() {}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit := M.pure tt.
