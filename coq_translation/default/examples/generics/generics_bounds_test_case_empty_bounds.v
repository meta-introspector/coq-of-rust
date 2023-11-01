(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Cardinal.
  Section Cardinal.
    Context `{ℋ : State.Trait}.
    
    Inductive t : Set := Build.
  End Cardinal.
End Cardinal.
Definition Cardinal := @Cardinal.t.

Module BlueJay.
  Section BlueJay.
    Context `{ℋ : State.Trait}.
    
    Inductive t : Set := Build.
  End BlueJay.
End BlueJay.
Definition BlueJay := @BlueJay.t.

Module Turkey.
  Section Turkey.
    Context `{ℋ : State.Trait}.
    
    Inductive t : Set := Build.
  End Turkey.
End Turkey.
Definition Turkey := @Turkey.t.

Module Red.
  Section Red.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Class Trait (Self : Set) : Type := {
    }.
    Global Set Primitive Projections.
  End Red.
End Red.

Module Blue.
  Section Blue.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Class Trait (Self : Set) : Type := {
    }.
    Global Set Primitive Projections.
  End Blue.
End Blue.

Module
  Impl_generics_bounds_test_case_empty_bounds_Red_for_generics_bounds_test_case_empty_bounds_Cardinal.
  Section
    Impl_generics_bounds_test_case_empty_bounds_Red_for_generics_bounds_test_case_empty_bounds_Cardinal.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := generics_bounds_test_case_empty_bounds.Cardinal.
    
    Global Instance ℐ :
      generics_bounds_test_case_empty_bounds.Red.Trait Self := {
    }.
  End
    Impl_generics_bounds_test_case_empty_bounds_Red_for_generics_bounds_test_case_empty_bounds_Cardinal.
End
  Impl_generics_bounds_test_case_empty_bounds_Red_for_generics_bounds_test_case_empty_bounds_Cardinal.

Module
  Impl_generics_bounds_test_case_empty_bounds_Blue_for_generics_bounds_test_case_empty_bounds_BlueJay.
  Section
    Impl_generics_bounds_test_case_empty_bounds_Blue_for_generics_bounds_test_case_empty_bounds_BlueJay.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := generics_bounds_test_case_empty_bounds.BlueJay.
    
    Global Instance ℐ :
      generics_bounds_test_case_empty_bounds.Blue.Trait Self := {
    }.
  End
    Impl_generics_bounds_test_case_empty_bounds_Blue_for_generics_bounds_test_case_empty_bounds_BlueJay.
End
  Impl_generics_bounds_test_case_empty_bounds_Blue_for_generics_bounds_test_case_empty_bounds_BlueJay.

Definition red
    `{ℋ : State.Trait}
    {T : Set}
    {ℋ_0 : generics_bounds_test_case_empty_bounds.Red.Trait T}
    (arg : ref T)
    : M (ref str) :=
  Pure (mk_str "red").

Definition blue
    `{ℋ : State.Trait}
    {T : Set}
    {ℋ_0 : generics_bounds_test_case_empty_bounds.Blue.Trait T}
    (arg : ref T)
    : M (ref str) :=
  Pure (mk_str "blue").

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  let* cardinal :=
    M.alloc generics_bounds_test_case_empty_bounds.Cardinal.Build_t in
  let* blue_jay :=
    M.alloc generics_bounds_test_case_empty_bounds.BlueJay.Build_t in
  let* _turkey :=
    M.alloc generics_bounds_test_case_empty_bounds.Turkey.Build_t in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow [ mk_str "A cardinal is "; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 :=
        borrow cardinal generics_bounds_test_case_empty_bounds.Cardinal in
      let* α5 := deref α4 generics_bounds_test_case_empty_bounds.Cardinal in
      let* α6 := borrow α5 generics_bounds_test_case_empty_bounds.Cardinal in
      let* α7 := generics_bounds_test_case_empty_bounds.red α6 in
      let* α8 := borrow α7 (ref str) in
      let* α9 := deref α8 (ref str) in
      let* α10 := borrow α9 (ref str) in
      let* α11 := core.fmt.rt.Argument::["new_display"] α10 in
      let* α12 := borrow [ α11 ] (list core.fmt.rt.Argument) in
      let* α13 := deref α12 (list core.fmt.rt.Argument) in
      let* α14 := borrow α13 (list core.fmt.rt.Argument) in
      let* α15 := pointer_coercion "Unsize" α14 in
      let* α16 := core.fmt.Arguments::["new_v1"] α3 α15 in
      std.io.stdio._print α16 in
    M.alloc tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow [ mk_str "A blue jay is "; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 :=
        borrow blue_jay generics_bounds_test_case_empty_bounds.BlueJay in
      let* α5 := deref α4 generics_bounds_test_case_empty_bounds.BlueJay in
      let* α6 := borrow α5 generics_bounds_test_case_empty_bounds.BlueJay in
      let* α7 := generics_bounds_test_case_empty_bounds.blue α6 in
      let* α8 := borrow α7 (ref str) in
      let* α9 := deref α8 (ref str) in
      let* α10 := borrow α9 (ref str) in
      let* α11 := core.fmt.rt.Argument::["new_display"] α10 in
      let* α12 := borrow [ α11 ] (list core.fmt.rt.Argument) in
      let* α13 := deref α12 (list core.fmt.rt.Argument) in
      let* α14 := borrow α13 (list core.fmt.rt.Argument) in
      let* α15 := pointer_coercion "Unsize" α14 in
      let* α16 := core.fmt.Arguments::["new_v1"] α3 α15 in
      std.io.stdio._print α16 in
    M.alloc tt in
  M.alloc tt.
