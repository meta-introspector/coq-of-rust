(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Food.
  Inductive t `{ℋ : State.Trait} : Set :=
  | CordonBleu
  | Steak
  | Sushi.
End Food.
Definition Food `{ℋ : State.Trait} : Set := Food.t.

Module Impl_core_fmt_Debug_for_combinators_and_then_Food.
  Section Impl_core_fmt_Debug_for_combinators_and_then_Food.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := combinators_and_then.Food.
    
    Parameter fmt :
        (ref Self) -> (mut_ref core.fmt.Formatter) -> M core.fmt.Result.
    
    Global Instance AssociatedFunction_fmt :
      Notation.DoubleColon Self "fmt" := {
      Notation.double_colon := fmt;
    }.
    
    #[refine] Global Instance ℐ : core.fmt.Debug.Trait Self := {
      core.fmt.Debug.fmt := fmt;
    }.
    Admitted.
  End Impl_core_fmt_Debug_for_combinators_and_then_Food.
  Global Hint Resolve ℐ : core.
End Impl_core_fmt_Debug_for_combinators_and_then_Food.

Module Day.
  Inductive t `{ℋ : State.Trait} : Set :=
  | Monday
  | Tuesday
  | Wednesday.
End Day.
Definition Day `{ℋ : State.Trait} : Set := Day.t.

Module Impl_core_fmt_Debug_for_combinators_and_then_Day.
  Section Impl_core_fmt_Debug_for_combinators_and_then_Day.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := combinators_and_then.Day.
    
    Parameter fmt :
        (ref Self) -> (mut_ref core.fmt.Formatter) -> M core.fmt.Result.
    
    Global Instance AssociatedFunction_fmt :
      Notation.DoubleColon Self "fmt" := {
      Notation.double_colon := fmt;
    }.
    
    #[refine] Global Instance ℐ : core.fmt.Debug.Trait Self := {
      core.fmt.Debug.fmt := fmt;
    }.
    Admitted.
  End Impl_core_fmt_Debug_for_combinators_and_then_Day.
  Global Hint Resolve ℐ : core.
End Impl_core_fmt_Debug_for_combinators_and_then_Day.

Parameter have_ingredients :
    forall `{ℋ : State.Trait},
    combinators_and_then.Food ->
      M (core.option.Option combinators_and_then.Food).

Parameter have_recipe :
    forall `{ℋ : State.Trait},
    combinators_and_then.Food ->
      M (core.option.Option combinators_and_then.Food).

Parameter cookable_v1 :
    forall `{ℋ : State.Trait},
    combinators_and_then.Food ->
      M (core.option.Option combinators_and_then.Food).

Parameter cookable_v2 :
    forall `{ℋ : State.Trait},
    combinators_and_then.Food ->
      M (core.option.Option combinators_and_then.Food).

Parameter eat :
    forall `{ℋ : State.Trait},
    combinators_and_then.Food -> combinators_and_then.Day -> M unit.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{ℋ : State.Trait}, M unit.
