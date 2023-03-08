(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Error StructUnit.

Error StructUnit.

Error StructUnit.

Module Red.
  Unset Primitive Projections.
  Class Class (Self : Set) : Set := {
  }.
  Global Set Primitive Projections.
  Class AssociatedFunction (name : string) (T : Set) : Set := {
    associated_function : T;
  }.
  Arguments associated_function name {T AssociatedFunction}.
End Red.

Module Blue.
  Unset Primitive Projections.
  Class Class (Self : Set) : Set := {
  }.
  Global Set Primitive Projections.
  Class AssociatedFunction (name : string) (T : Set) : Set := {
    associated_function : T;
  }.
  Arguments associated_function name {T AssociatedFunction}.
End Blue.

Module Impl_Red_for_Cardinal.
  Definition Self := Cardinal.
  
  Global Instance I : Red.Class Self := Red.Build_Class _.
End Impl_Red_for_Cardinal.

Module Impl_Blue_for_BlueJay.
  Definition Self := BlueJay.
  
  Global Instance I : Blue.Class Self := Blue.Build_Class _.
End Impl_Blue_for_BlueJay.

Definition red {T : Set} `{Red.Class T} (arg : ref T) : ref str := "red".

Definition blue {T : Set} `{Blue.Class T} (arg : ref T) : ref str := "blue".

Definition main (_ : unit) : unit :=
  let cardinal := Cardinal in
  let blue_jay := BlueJay in
  let _turkey := Turkey in
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "A cardinal is "; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_display (red cardinal) ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "A blue jay is "; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_display (blue blue_jay) ]) ;;
  tt ;;
  tt.
