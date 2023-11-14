(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module checked.
  Module MathError.
    Inductive t : Set :=
    | DivisionByZero
    | NonPositiveLogarithm
    | NegativeSquareRoot.
  End MathError.
  
  Module  Impl_core_fmt_Debug_for_result_checked_MathError_t.
  Section Impl_core_fmt_Debug_for_result_checked_MathError_t.
    Ltac Self := exact result.checked.MathError.t.
    
    (*
        Debug
    *)
    Parameter fmt :
        (M.Val (ref ltac:(Self))) ->
          (M.Val (mut_ref core.fmt.Formatter.t)) ->
          M (M.Val ltac:(core.fmt.Result)).
    
    Global Instance AssociatedFunction_fmt :
      Notations.DoubleColon ltac:(Self) "fmt" := {
      Notations.double_colon := fmt;
    }.
    
    Global Instance ℐ : core.fmt.Debug.Trait ltac:(Self) := {
      core.fmt.Debug.fmt := fmt;
    }.
  End Impl_core_fmt_Debug_for_result_checked_MathError_t.
  End Impl_core_fmt_Debug_for_result_checked_MathError_t.
  
  Ltac MathResult :=
    exact (core.result.Result.t f64.t result.checked.MathError.t).
  
  (*
      pub fn div(x: f64, y: f64) -> MathResult {
          if y == 0.0 {
              // This operation would `fail`, instead let's return the reason of
              // the failure wrapped in `Err`
              Err(MathError::DivisionByZero)
          } else {
              // This operation is valid, return the result wrapped in `Ok`
              Ok(x / y)
          }
      }
  *)
  Parameter div :
      (M.Val f64.t) ->
        (M.Val f64.t) ->
        M (M.Val ltac:(result.checked.MathResult)).
  
  (*
      pub fn sqrt(x: f64) -> MathResult {
          if x < 0.0 {
              Err(MathError::NegativeSquareRoot)
          } else {
              Ok(x.sqrt())
          }
      }
  *)
  Parameter sqrt : (M.Val f64.t) -> M (M.Val ltac:(result.checked.MathResult)).
  
  (*
      pub fn ln(x: f64) -> MathResult {
          if x <= 0.0 {
              Err(MathError::NonPositiveLogarithm)
          } else {
              Ok(x.ln())
          }
      }
  *)
  Parameter ln : (M.Val f64.t) -> M (M.Val ltac:(result.checked.MathResult)).
End checked.

Module MathError.
  Inductive t : Set :=
  | DivisionByZero
  | NonPositiveLogarithm
  | NegativeSquareRoot.
End MathError.

Module  Impl_core_fmt_Debug_for_result_checked_MathError_t.
Section Impl_core_fmt_Debug_for_result_checked_MathError_t.
  Ltac Self := exact result.checked.MathError.t.
  
  (*
      Debug
  *)
  Parameter fmt :
      (M.Val (ref ltac:(Self))) ->
        (M.Val (mut_ref core.fmt.Formatter.t)) ->
        M (M.Val ltac:(core.fmt.Result)).
  
  Global Instance AssociatedFunction_fmt :
    Notations.DoubleColon ltac:(Self) "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait ltac:(Self) := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_result_checked_MathError_t.
End Impl_core_fmt_Debug_for_result_checked_MathError_t.

Ltac MathResult :=
  exact (core.result.Result.t f64.t result.checked.MathError.t).

(*
    pub fn div(x: f64, y: f64) -> MathResult {
        if y == 0.0 {
            // This operation would `fail`, instead let's return the reason of
            // the failure wrapped in `Err`
            Err(MathError::DivisionByZero)
        } else {
            // This operation is valid, return the result wrapped in `Ok`
            Ok(x / y)
        }
    }
*)
Parameter div :
    (M.Val f64.t) ->
      (M.Val f64.t) ->
      M (M.Val ltac:(result.checked.MathResult)).

(*
    pub fn sqrt(x: f64) -> MathResult {
        if x < 0.0 {
            Err(MathError::NegativeSquareRoot)
        } else {
            Ok(x.sqrt())
        }
    }
*)
Parameter sqrt : (M.Val f64.t) -> M (M.Val ltac:(result.checked.MathResult)).

(*
    pub fn ln(x: f64) -> MathResult {
        if x <= 0.0 {
            Err(MathError::NonPositiveLogarithm)
        } else {
            Ok(x.ln())
        }
    }
*)
Parameter ln : (M.Val f64.t) -> M (M.Val ltac:(result.checked.MathResult)).

(*
fn op(x: f64, y: f64) -> f64 {
    // This is a three level match pyramid!
    match checked::div(x, y) {
        Err(why) => panic!("{:?}", why),
        Ok(ratio) => match checked::ln(ratio) {
            Err(why) => panic!("{:?}", why),
            Ok(ln) => match checked::sqrt(ln) {
                Err(why) => panic!("{:?}", why),
                Ok(sqrt) => sqrt,
            },
        },
    }
}
*)
Parameter op : (M.Val f64.t) -> (M.Val f64.t) -> M (M.Val f64.t).

(*
fn main() {
    // Will this fail?
    println!("{}", op(1.0, 10.0));
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M (M.Val unit).
