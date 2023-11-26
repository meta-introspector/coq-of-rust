(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Cardinal.
Section Cardinal.
  Inductive t : Set := Build.
End Cardinal.
End Cardinal.

Module  BlueJay.
Section BlueJay.
  Inductive t : Set := Build.
End BlueJay.
End BlueJay.

Module  Turkey.
Section Turkey.
  Inductive t : Set := Build.
End Turkey.
End Turkey.

Module  Red.
Section Red.
  Unset Primitive Projections.
  Class Trait (Self : Set) : Type := {
  }.
  Global Set Primitive Projections.
End Red.
End Red.

Module  Blue.
Section Blue.
  Unset Primitive Projections.
  Class Trait (Self : Set) : Type := {
  }.
  Global Set Primitive Projections.
End Blue.
End Blue.

Module  Impl_generics_bounds_test_case_empty_bounds_Red_for_generics_bounds_test_case_empty_bounds_Cardinal_t.
Section Impl_generics_bounds_test_case_empty_bounds_Red_for_generics_bounds_test_case_empty_bounds_Cardinal_t.
  Ltac Self := exact generics_bounds_test_case_empty_bounds.Cardinal.t.
  
  Global Instance ℐ :
    generics_bounds_test_case_empty_bounds.Red.Trait ltac:(Self) := {
  }.
End Impl_generics_bounds_test_case_empty_bounds_Red_for_generics_bounds_test_case_empty_bounds_Cardinal_t.
End Impl_generics_bounds_test_case_empty_bounds_Red_for_generics_bounds_test_case_empty_bounds_Cardinal_t.

Module  Impl_generics_bounds_test_case_empty_bounds_Blue_for_generics_bounds_test_case_empty_bounds_BlueJay_t.
Section Impl_generics_bounds_test_case_empty_bounds_Blue_for_generics_bounds_test_case_empty_bounds_BlueJay_t.
  Ltac Self := exact generics_bounds_test_case_empty_bounds.BlueJay.t.
  
  Global Instance ℐ :
    generics_bounds_test_case_empty_bounds.Blue.Trait ltac:(Self) := {
  }.
End Impl_generics_bounds_test_case_empty_bounds_Blue_for_generics_bounds_test_case_empty_bounds_BlueJay_t.
End Impl_generics_bounds_test_case_empty_bounds_Blue_for_generics_bounds_test_case_empty_bounds_BlueJay_t.

(*
fn red<T: Red>(_: &T) -> &'static str {
    "red"
}
*)
Definition red
    {T : Set}
    {ℋ_0 : generics_bounds_test_case_empty_bounds.Red.Trait T}
    (arg : ref T)
    : M (ref str.t) :=
  let* arg : M.Val (ref T) := M.alloc arg in
  M.function_body (M.pure (mk_str "red")).

(*
fn blue<T: Blue>(_: &T) -> &'static str {
    "blue"
}
*)
Definition blue
    {T : Set}
    {ℋ_0 : generics_bounds_test_case_empty_bounds.Blue.Trait T}
    (arg : ref T)
    : M (ref str.t) :=
  let* arg : M.Val (ref T) := M.alloc arg in
  M.function_body (M.pure (mk_str "blue")).

(*
fn main() {
    let cardinal = Cardinal;
    let blue_jay = BlueJay;
    let _turkey = Turkey;

    // `red()` won't work on a blue jay nor vice versa
    // because of the bounds.
    println!("A cardinal is {}", red(&cardinal));
    println!("A blue jay is {}", blue(&blue_jay));
    //println!("A turkey is {}", red(&_turkey));
    // ^ TODO: Try uncommenting this line.
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* cardinal : M.Val generics_bounds_test_case_empty_bounds.Cardinal.t :=
      M.alloc generics_bounds_test_case_empty_bounds.Cardinal.Build_t in
    let* blue_jay : M.Val generics_bounds_test_case_empty_bounds.BlueJay.t :=
      M.alloc generics_bounds_test_case_empty_bounds.BlueJay.Build_t in
    let* _turkey : M.Val generics_bounds_test_case_empty_bounds.Turkey.t :=
      M.alloc generics_bounds_test_case_empty_bounds.Turkey.Build_t in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "A cardinal is "; mk_str "
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 : ref generics_bounds_test_case_empty_bounds.Cardinal.t :=
          borrow cardinal in
        let* α8 : M.Val generics_bounds_test_case_empty_bounds.Cardinal.t :=
          deref α7 in
        let* α9 : ref generics_bounds_test_case_empty_bounds.Cardinal.t :=
          borrow α8 in
        let* α10 : ref str.t := generics_bounds_test_case_empty_bounds.red α9 in
        let* α11 : M.Val (ref str.t) := M.alloc α10 in
        let* α12 : ref (ref str.t) := borrow α11 in
        let* α13 : M.Val (ref str.t) := deref α12 in
        let* α14 : ref (ref str.t) := borrow α13 in
        let* α15 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_display"] α14 in
        let* α16 : M.Val core.fmt.rt.Argument.t := M.alloc α15 in
        let* α17 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α16 ] in
        let* α18 : ref (array core.fmt.rt.Argument.t) := borrow α17 in
        let* α19 : M.Val (array core.fmt.rt.Argument.t) := deref α18 in
        let* α20 : ref (array core.fmt.rt.Argument.t) := borrow α19 in
        let* α21 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α20 in
        let* α22 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α21 in
        let* α23 := M.read α22 in
        let* α24 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α6 α23 in
        let* α25 : unit := std.io.stdio._print α24 in
        M.alloc α25 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "A blue jay is "; mk_str "
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 : ref generics_bounds_test_case_empty_bounds.BlueJay.t :=
          borrow blue_jay in
        let* α8 : M.Val generics_bounds_test_case_empty_bounds.BlueJay.t :=
          deref α7 in
        let* α9 : ref generics_bounds_test_case_empty_bounds.BlueJay.t :=
          borrow α8 in
        let* α10 : ref str.t :=
          generics_bounds_test_case_empty_bounds.blue α9 in
        let* α11 : M.Val (ref str.t) := M.alloc α10 in
        let* α12 : ref (ref str.t) := borrow α11 in
        let* α13 : M.Val (ref str.t) := deref α12 in
        let* α14 : ref (ref str.t) := borrow α13 in
        let* α15 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_display"] α14 in
        let* α16 : M.Val core.fmt.rt.Argument.t := M.alloc α15 in
        let* α17 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α16 ] in
        let* α18 : ref (array core.fmt.rt.Argument.t) := borrow α17 in
        let* α19 : M.Val (array core.fmt.rt.Argument.t) := deref α18 in
        let* α20 : ref (array core.fmt.rt.Argument.t) := borrow α19 in
        let* α21 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α20 in
        let* α22 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α21 in
        let* α23 := M.read α22 in
        let* α24 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α6 α23 in
        let* α25 : unit := std.io.stdio._print α24 in
        M.alloc α25 in
      M.alloc tt in
    M.alloc tt).
