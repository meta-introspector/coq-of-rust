(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module checked.
  Module MathError.
    Inductive t : Set :=
    | DivisionByZero
    | NonPositiveLogarithm
    | NegativeSquareRoot.
  End MathError.
  
  Module  Impl_core_fmt_Debug_for_result_chaining_with_question_mark_checked_MathError_t.
  Section Impl_core_fmt_Debug_for_result_chaining_with_question_mark_checked_MathError_t.
    Definition Self : Set :=
      result_chaining_with_question_mark.checked.MathError.t.
    
    Parameter fmt :
        (ref Self) ->
          (mut_ref core.fmt.Formatter.t) ->
          M ltac:(core.fmt.Result).
    
    Global Instance AssociatedFunction_fmt :
      Notations.DoubleColon Self "fmt" := {
      Notations.double_colon := fmt;
    }.
    
    Global Instance ℐ : core.fmt.Debug.Trait Self := {
      core.fmt.Debug.fmt := fmt;
    }.
  End Impl_core_fmt_Debug_for_result_chaining_with_question_mark_checked_MathError_t.
  End Impl_core_fmt_Debug_for_result_chaining_with_question_mark_checked_MathError_t.
  
  Ltac MathResult :=
    exact
      (core.result.Result.t
        f64.t
        result_chaining_with_question_mark.checked.MathError.t).
  
  Parameter div :
      f64.t ->
        f64.t ->
        M ltac:(result_chaining_with_question_mark.checked.MathResult).
  
  Parameter sqrt :
      f64.t -> M ltac:(result_chaining_with_question_mark.checked.MathResult).
  
  Parameter ln :
      f64.t -> M ltac:(result_chaining_with_question_mark.checked.MathResult).
  
  Parameter op_ :
      f64.t ->
        f64.t ->
        M ltac:(result_chaining_with_question_mark.checked.MathResult).
  
  Parameter op : f64.t -> f64.t -> M unit.
End checked.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.
