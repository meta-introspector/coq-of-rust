(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Foo.
Section Foo.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Class Trait (Self : Set) : Type := {
  }.
  Global Set Primitive Projections.
End Foo.
End Foo.

Module  Bar.
Section Bar.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Class Trait (Self : Set) : Type := {
  }.
  Global Set Primitive Projections.
End Bar.
End Bar.

Module  Tar.
Section Tar.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Class Trait (Self : Set) : Type := {
  }.
  Global Set Primitive Projections.
End Tar.
End Tar.

Module  SomeTrait.
Section SomeTrait.
  Context `{ℋ : State.Trait}.
  
  Class Trait (Self : Set) : Type := {
    SomeType : Set;
    ℒ_0 :: traits_parms.Foo.Trait SomeType;
    ℒ_1 :: traits_parms.Bar.Trait SomeType;
    ℒ_2 :: traits_parms.Tar.Trait SomeType;
    some_fn : M unit;
  }.
  
  Global Instance Method_SomeType `(Trait) :
    Notation.DoubleColonType Self "SomeType" := {
    Notation.double_colon_type := SomeType;
  }.
End SomeTrait.
End SomeTrait.

Module  SomeOtherType.
Section SomeOtherType.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    x0 : u32;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_0 : Notation.Dot "0" := {
    Notation.dot x := let* x := M.read x in M.pure x.(x0) : M _;
  }.
End SomeOtherType.
End SomeOtherType.
Definition SomeOtherType `{ℋ : State.Trait} : Set := M.Val SomeOtherType.t.

Module  Impl_traits_parms_Foo_for_traits_parms_SomeOtherType.
Section Impl_traits_parms_Foo_for_traits_parms_SomeOtherType.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := traits_parms.SomeOtherType.
  
  Global Instance ℐ : traits_parms.Foo.Trait Self := {
  }.
End Impl_traits_parms_Foo_for_traits_parms_SomeOtherType.
End Impl_traits_parms_Foo_for_traits_parms_SomeOtherType.

Module  Impl_traits_parms_Bar_for_traits_parms_SomeOtherType.
Section Impl_traits_parms_Bar_for_traits_parms_SomeOtherType.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := traits_parms.SomeOtherType.
  
  Global Instance ℐ : traits_parms.Bar.Trait Self := {
  }.
End Impl_traits_parms_Bar_for_traits_parms_SomeOtherType.
End Impl_traits_parms_Bar_for_traits_parms_SomeOtherType.

Module  Impl_traits_parms_Tar_for_traits_parms_SomeOtherType.
Section Impl_traits_parms_Tar_for_traits_parms_SomeOtherType.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := traits_parms.SomeOtherType.
  
  Global Instance ℐ : traits_parms.Tar.Trait Self := {
  }.
End Impl_traits_parms_Tar_for_traits_parms_SomeOtherType.
End Impl_traits_parms_Tar_for_traits_parms_SomeOtherType.

Module  Impl_traits_parms_SomeTrait_for_traits_parms_SomeOtherType.
Section Impl_traits_parms_SomeTrait_for_traits_parms_SomeOtherType.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := traits_parms.SomeOtherType.
  
  Definition SomeType : Set := traits_parms.SomeOtherType.
  
  Parameter some_fn : M unit.
  
  Global Instance AssociatedFunction_some_fn :
    Notation.DoubleColon Self "some_fn" := {
    Notation.double_colon := some_fn;
  }.
  
  Global Instance ℐ : traits_parms.SomeTrait.Trait Self := {
    traits_parms.SomeTrait.SomeType := SomeType;
    traits_parms.SomeTrait.some_fn := some_fn;
  }.
End Impl_traits_parms_SomeTrait_for_traits_parms_SomeOtherType.
End Impl_traits_parms_SomeTrait_for_traits_parms_SomeOtherType.
