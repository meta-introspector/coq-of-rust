(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module checked.
  Module MathError.
    Inductive t : Set :=
    | DivisionByZero
    | NonPositiveLogarithm
    | NegativeSquareRoot.
  End MathError.
  Definition MathError := MathError.t.
  
  Definition MathResult : Set :=
    core.result.Result f64 result.checked.MathError.
  
  Parameter div : forall `{H : State.Trait},
    f64 -> f64 -> M (H := H) result.checked.MathResult.
  
  Parameter sqrt : forall `{H : State.Trait},
    f64 -> M (H := H) result.checked.MathResult.
  
  Parameter ln : forall `{H : State.Trait},
    f64 -> M (H := H) result.checked.MathResult.
End checked.

Module MathError.
  Inductive t : Set :=
  | DivisionByZero
  | NonPositiveLogarithm
  | NegativeSquareRoot.
End MathError.
Definition MathError := MathError.t.

Definition MathResult : Set := core.result.Result f64 result.checked.MathError.

Parameter div : forall `{H : State.Trait},
  f64 -> f64 -> M (H := H) result.checked.MathResult.

Parameter sqrt : forall `{H : State.Trait},
  f64 -> M (H := H) result.checked.MathResult.

Parameter ln : forall `{H : State.Trait},
  f64 -> M (H := H) result.checked.MathResult.
