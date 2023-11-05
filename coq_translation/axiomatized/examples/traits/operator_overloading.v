(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Foo.
Section Foo.
  Context `{ℋ : State.Trait}.
  
  Inductive t : Set := Build.
End Foo.
End Foo.
Definition Foo `{ℋ : State.Trait} := M.Val Foo.t.

Module  Bar.
Section Bar.
  Context `{ℋ : State.Trait}.
  
  Inductive t : Set := Build.
End Bar.
End Bar.
Definition Bar `{ℋ : State.Trait} := M.Val Bar.t.

Module  FooBar.
Section FooBar.
  Context `{ℋ : State.Trait}.
  
  Inductive t : Set := Build.
End FooBar.
End FooBar.
Definition FooBar `{ℋ : State.Trait} := M.Val FooBar.t.

Module  Impl_core_fmt_Debug_for_operator_overloading_FooBar.
Section Impl_core_fmt_Debug_for_operator_overloading_FooBar.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := operator_overloading.FooBar.
  
  Parameter fmt :
      (ref Self) -> (mut_ref core.fmt.Formatter) -> M ltac:(core.fmt.Result).
  
  Global Instance AssociatedFunction_fmt : Notation.DoubleColon Self "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_operator_overloading_FooBar.
End Impl_core_fmt_Debug_for_operator_overloading_FooBar.

Module  BarFoo.
Section BarFoo.
  Context `{ℋ : State.Trait}.
  
  Inductive t : Set := Build.
End BarFoo.
End BarFoo.
Definition BarFoo `{ℋ : State.Trait} := M.Val BarFoo.t.

Module  Impl_core_fmt_Debug_for_operator_overloading_BarFoo.
Section Impl_core_fmt_Debug_for_operator_overloading_BarFoo.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := operator_overloading.BarFoo.
  
  Parameter fmt :
      (ref Self) -> (mut_ref core.fmt.Formatter) -> M ltac:(core.fmt.Result).
  
  Global Instance AssociatedFunction_fmt : Notation.DoubleColon Self "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_operator_overloading_BarFoo.
End Impl_core_fmt_Debug_for_operator_overloading_BarFoo.

Module  Impl_core_ops_arith_Add_operator_overloading_Bar_for_operator_overloading_Foo.
Section Impl_core_ops_arith_Add_operator_overloading_Bar_for_operator_overloading_Foo.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := operator_overloading.Foo.
  
  Definition Output : Set := operator_overloading.FooBar.
  
  Parameter add :
      Self -> operator_overloading.Bar -> M operator_overloading.FooBar.
  
  Global Instance AssociatedFunction_add : Notation.DoubleColon Self "add" := {
    Notation.double_colon := add;
  }.
  
  Global Instance ℐ :
    core.ops.arith.Add.Trait Self (Rhs := operator_overloading.Bar) := {
    core.ops.arith.Add.Output := Output;
    core.ops.arith.Add.add := add;
  }.
End Impl_core_ops_arith_Add_operator_overloading_Bar_for_operator_overloading_Foo.
End Impl_core_ops_arith_Add_operator_overloading_Bar_for_operator_overloading_Foo.

Module  Impl_core_ops_arith_Add_operator_overloading_Foo_for_operator_overloading_Bar.
Section Impl_core_ops_arith_Add_operator_overloading_Foo_for_operator_overloading_Bar.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := operator_overloading.Bar.
  
  Definition Output : Set := operator_overloading.BarFoo.
  
  Parameter add :
      Self -> operator_overloading.Foo -> M operator_overloading.BarFoo.
  
  Global Instance AssociatedFunction_add : Notation.DoubleColon Self "add" := {
    Notation.double_colon := add;
  }.
  
  Global Instance ℐ :
    core.ops.arith.Add.Trait Self (Rhs := operator_overloading.Foo) := {
    core.ops.arith.Add.Output := Output;
    core.ops.arith.Add.add := add;
  }.
End Impl_core_ops_arith_Add_operator_overloading_Foo_for_operator_overloading_Bar.
End Impl_core_ops_arith_Add_operator_overloading_Foo_for_operator_overloading_Bar.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{ℋ : State.Trait}, M unit.
