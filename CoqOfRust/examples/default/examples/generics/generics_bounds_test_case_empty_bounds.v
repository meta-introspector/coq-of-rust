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
  M.read (mk_str "red").

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
  M.read (mk_str "blue").

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
  let* cardinal : M.Val generics_bounds_test_case_empty_bounds.Cardinal.t :=
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
      let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
      let* α2 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α1) in
      let* α3 : ref str.t :=
        M.call (generics_bounds_test_case_empty_bounds.red (borrow cardinal)) in
      let* α4 : M.Val (ref str.t) := M.alloc α3 in
      let* α5 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α4)) in
      let* α6 : M.Val core.fmt.rt.Argument.t := M.alloc α5 in
      let* α7 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α6 ] in
      let* α8 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α7) in
      let* α9 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α8) in
      let* α10 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α2 α9) in
      let* α11 : unit := M.call (std.io.stdio._print α10) in
      M.alloc α11 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "A blue jay is "; mk_str "
" ] in
      let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
      let* α2 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α1) in
      let* α3 : ref str.t :=
        M.call
          (generics_bounds_test_case_empty_bounds.blue (borrow blue_jay)) in
      let* α4 : M.Val (ref str.t) := M.alloc α3 in
      let* α5 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α4)) in
      let* α6 : M.Val core.fmt.rt.Argument.t := M.alloc α5 in
      let* α7 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α6 ] in
      let* α8 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α7) in
      let* α9 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α8) in
      let* α10 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α2 α9) in
      let* α11 : unit := M.call (std.io.stdio._print α10) in
      M.alloc α11 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
