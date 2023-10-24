(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Fruit.
  Inductive t `{ℋ : State.Trait} : Set :=
  | Apple
  | Orange
  | Banana
  | Kiwi
  | Lemon.
End Fruit.
Definition Fruit `{ℋ : State.Trait} : Set := Fruit.t.

Module Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_or_Fruit.
  Section Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_or_Fruit.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := unpacking_options_and_defaults_via_or.Fruit.
    
    Parameter fmt :
        (ref Self) -> (mut_ref core.fmt.Formatter) -> M core.fmt.Result.
    
    Global Instance AssociatedFunction_fmt :
      Notation.DoubleColon Self "fmt" := {
      Notation.double_colon := fmt;
    }.
    
    Global Instance ℐ : core.fmt.Debug.Trait Self := {
      core.fmt.Debug.fmt := fmt;
    }.
  End Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_or_Fruit.
  Global Hint Resolve ℐ : core.
End Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_or_Fruit.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{ℋ : State.Trait}, M unit.
