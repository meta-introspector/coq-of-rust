(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Cardinal.
  Inductive t : Set := Build.
End Cardinal.
Definition Cardinal := @Cardinal.t.

Module BlueJay.
  Inductive t : Set := Build.
End BlueJay.
Definition BlueJay := @BlueJay.t.

Module Turkey.
  Inductive t : Set := Build.
End Turkey.
Definition Turkey := @Turkey.t.

Module Red.
  Unset Primitive Projections.
  Class Trait (Self : Set) : Set := {
  }.
  Global Set Primitive Projections.
End Red.

Module Blue.
  Unset Primitive Projections.
  Class Trait (Self : Set) : Set := {
  }.
  Global Set Primitive Projections.
End Blue.

Module
  Impl_generics_bounds_test_case_empty_bounds_Red_for_generics_bounds_test_case_empty_bounds_Cardinal.
  Definition Self := generics_bounds_test_case_empty_bounds.Cardinal.
  
  Global Instance I : generics_bounds_test_case_empty_bounds.Red.Trait Self :=
    generics_bounds_test_case_empty_bounds.Red.Build_Trait _.
End
  Impl_generics_bounds_test_case_empty_bounds_Red_for_generics_bounds_test_case_empty_bounds_Cardinal.

Module
  Impl_generics_bounds_test_case_empty_bounds_Blue_for_generics_bounds_test_case_empty_bounds_BlueJay.
  Definition Self := generics_bounds_test_case_empty_bounds.BlueJay.
  
  Global Instance I : generics_bounds_test_case_empty_bounds.Blue.Trait Self :=
    generics_bounds_test_case_empty_bounds.Blue.Build_Trait _.
End
  Impl_generics_bounds_test_case_empty_bounds_Blue_for_generics_bounds_test_case_empty_bounds_BlueJay.

Definition red
    `{H' : State.Trait}
    {T : Set}
    `{generics_bounds_test_case_empty_bounds.Red.Trait T}
    (arg : ref T)
    : M (H := H') (ref str) :=
  Pure "red".

Definition blue
    `{H' : State.Trait}
    {T : Set}
    `{generics_bounds_test_case_empty_bounds.Blue.Trait T}
    (arg : ref T)
    : M (H := H') (ref str) :=
  Pure "blue".

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H' : State.Trait} : M (H := H') unit :=
  let cardinal := generics_bounds_test_case_empty_bounds.Cardinal.Build in
  let blue_jay := generics_bounds_test_case_empty_bounds.BlueJay.Build in
  let _turkey := generics_bounds_test_case_empty_bounds.Turkey.Build in
  let* _ :=
    let* _ :=
      let* α0 :=
        generics_bounds_test_case_empty_bounds.red (addr_of cardinal) in
      let* α1 := format_argument::["new_display"] (addr_of α0) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ "A cardinal is "; "
" ])
          (addr_of [ α1 ]) in
      std.io.stdio._print α2 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        generics_bounds_test_case_empty_bounds.blue (addr_of blue_jay) in
      let* α1 := format_argument::["new_display"] (addr_of α0) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ "A blue jay is "; "
" ])
          (addr_of [ α1 ]) in
      std.io.stdio._print α2 in
    Pure tt in
  Pure tt.
