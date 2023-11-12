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
    Ltac Self := exact result_chaining_with_question_mark.checked.MathError.t.
    
    (*
        Debug
    *)
    Definition fmt
        (self : M.Val (ref ltac:(Self)))
        (f : M.Val (mut_ref core.fmt.Formatter.t))
        : M (M.Val ltac:(core.fmt.Result)) :=
      M.function_body
        (let* α0 : ltac:(refine (M.Val core.fmt.Formatter.t)) := deref f in
        let* α1 : ltac:(refine (M.Val (mut_ref core.fmt.Formatter.t))) :=
          borrow_mut α0 in
        let* α2 := M.read self in
        let* α3 : ltac:(refine (M.Val (ref str))) :=
          match α2 with
          |
              result_chaining_with_question_mark.checked.MathError.DivisionByZero
                
              =>
            let* α0 : ltac:(refine (M.Val str)) :=
              deref (mk_str "DivisionByZero") in
            borrow α0
          |
              result_chaining_with_question_mark.checked.MathError.NonPositiveLogarithm
                
              =>
            let* α0 : ltac:(refine (M.Val str)) :=
              deref (mk_str "NonPositiveLogarithm") in
            borrow α0
          |
              result_chaining_with_question_mark.checked.MathError.NegativeSquareRoot
                
              =>
            let* α0 : ltac:(refine (M.Val str)) :=
              deref (mk_str "NegativeSquareRoot") in
            borrow α0
          end in
        core.fmt.Formatter.t::["write_str"] α1 α3).
    
    Global Instance AssociatedFunction_fmt :
      Notation.DoubleColon ltac:(Self) "fmt" := {
      Notation.double_colon := fmt;
    }.
    
    Global Instance ℐ : core.fmt.Debug.Trait ltac:(Self) := {
      core.fmt.Debug.fmt := fmt;
    }.
  End Impl_core_fmt_Debug_for_result_chaining_with_question_mark_checked_MathError_t.
  End Impl_core_fmt_Debug_for_result_chaining_with_question_mark_checked_MathError_t.
  
  Ltac MathResult :=
    exact
      (core.result.Result.t
        f64.t
        result_chaining_with_question_mark.checked.MathError.t).
  
  (*
      fn div(x: f64, y: f64) -> MathResult {
          if y == 0.0 {
              Err(MathError::DivisionByZero)
          } else {
              Ok(x / y)
          }
      }
  *)
  Definition div
      (x : M.Val f64.t)
      (y : M.Val f64.t)
      :
        M
          (M.Val
            ltac:(result_chaining_with_question_mark.checked.MathResult)) :=
    M.function_body
      (let* α0 : ltac:(refine (M.Val f64.t)) := M.alloc 0 (* 0.0 *) in
      let* α1 : ltac:(refine (M.Val bool.t)) := BinOp.eq y α0 in
      let* α2 : ltac:(refine (M.Val bool.t)) := use α1 in
      let* α3 := M.read α2 in
      if (α3 : bool) then
        let* α0 :
            ltac:(refine
              (M.Val result_chaining_with_question_mark.checked.MathError.t)) :=
          M.alloc
            result_chaining_with_question_mark.checked.MathError.DivisionByZero in
        let* α1 := M.read α0 in
        M.alloc (core.result.Result.Err α1)
      else
        let* α0 : ltac:(refine (M.Val f64.t)) := BinOp.div x y in
        let* α1 := M.read α0 in
        M.alloc (core.result.Result.Ok α1)).
  
  (*
      fn sqrt(x: f64) -> MathResult {
          if x < 0.0 {
              Err(MathError::NegativeSquareRoot)
          } else {
              Ok(x.sqrt())
          }
      }
  *)
  Definition sqrt
      (x : M.Val f64.t)
      :
        M
          (M.Val
            ltac:(result_chaining_with_question_mark.checked.MathResult)) :=
    M.function_body
      (let* α0 : ltac:(refine (M.Val f64.t)) := M.alloc 0 (* 0.0 *) in
      let* α1 : ltac:(refine (M.Val bool.t)) := BinOp.lt x α0 in
      let* α2 : ltac:(refine (M.Val bool.t)) := use α1 in
      let* α3 := M.read α2 in
      if (α3 : bool) then
        let* α0 :
            ltac:(refine
              (M.Val result_chaining_with_question_mark.checked.MathError.t)) :=
          M.alloc
            result_chaining_with_question_mark.checked.MathError.NegativeSquareRoot in
        let* α1 := M.read α0 in
        M.alloc (core.result.Result.Err α1)
      else
        let* α0 : ltac:(refine (M.Val f64.t)) := f64.t::["sqrt"] x in
        let* α1 := M.read α0 in
        M.alloc (core.result.Result.Ok α1)).
  
  (*
      fn ln(x: f64) -> MathResult {
          if x <= 0.0 {
              Err(MathError::NonPositiveLogarithm)
          } else {
              Ok(x.ln())
          }
      }
  *)
  Definition ln
      (x : M.Val f64.t)
      :
        M
          (M.Val
            ltac:(result_chaining_with_question_mark.checked.MathResult)) :=
    M.function_body
      (let* α0 : ltac:(refine (M.Val f64.t)) := M.alloc 0 (* 0.0 *) in
      let* α1 : ltac:(refine (M.Val bool.t)) := BinOp.le x α0 in
      let* α2 : ltac:(refine (M.Val bool.t)) := use α1 in
      let* α3 := M.read α2 in
      if (α3 : bool) then
        let* α0 :
            ltac:(refine
              (M.Val result_chaining_with_question_mark.checked.MathError.t)) :=
          M.alloc
            result_chaining_with_question_mark.checked.MathError.NonPositiveLogarithm in
        let* α1 := M.read α0 in
        M.alloc (core.result.Result.Err α1)
      else
        let* α0 : ltac:(refine (M.Val f64.t)) := f64.t::["ln"] x in
        let* α1 := M.read α0 in
        M.alloc (core.result.Result.Ok α1)).
  
  (*
      fn op_(x: f64, y: f64) -> MathResult {
          // if `div` "fails", then `DivisionByZero` will be `return`ed
          let ratio = div(x, y)?;
  
          // if `ln` "fails", then `NonPositiveLogarithm` will be `return`ed
          let ln = ln(ratio)?;
  
          sqrt(ln)
      }
  *)
  Definition op_
      (x : M.Val f64.t)
      (y : M.Val f64.t)
      :
        M
          (M.Val
            ltac:(result_chaining_with_question_mark.checked.MathResult)) :=
    M.function_body
      (let* ratio : ltac:(refine (M.Val f64.t)) :=
        let* α0 :
            ltac:(refine
              (M.Val
                (core.result.Result.t
                  f64.t
                  result_chaining_with_question_mark.checked.MathError.t))) :=
          result_chaining_with_question_mark.checked.div x y in
        let* α1 :
            ltac:(refine
              (M.Val
                (core.ops.control_flow.ControlFlow.t
                  (core.result.Result.t
                    core.convert.Infallible.t
                    result_chaining_with_question_mark.checked.MathError.t)
                  f64.t))) :=
          (core.ops.try_trait.Try.branch
              (Self :=
                core.result.Result.t
                  f64.t
                  result_chaining_with_question_mark.checked.MathError.t)
              (Trait := ltac:(refine _)))
            α0 in
        let* α2 := M.read α1 in
        match α2 with
        | core.ops.control_flow.ControlFlow.Break residual =>
          let* residual := M.alloc residual in
          let* α0 :
              ltac:(refine
                (M.Val
                  (core.result.Result.t
                    f64.t
                    result_chaining_with_question_mark.checked.MathError.t))) :=
            (core.ops.try_trait.FromResidual.from_residual
                (Self :=
                  core.result.Result.t
                    f64.t
                    result_chaining_with_question_mark.checked.MathError.t)
                (Trait := ltac:(refine _)))
              residual in
          let* α1 : ltac:(refine (M.Val never.t)) := M.return_ α0 in
          never_to_any α1
        | core.ops.control_flow.ControlFlow.Continue val =>
          let* val := M.alloc val in
          M.pure val
        end in
      let* ln : ltac:(refine (M.Val f64.t)) :=
        let* α0 :
            ltac:(refine
              (M.Val
                (core.result.Result.t
                  f64.t
                  result_chaining_with_question_mark.checked.MathError.t))) :=
          result_chaining_with_question_mark.checked.ln ratio in
        let* α1 :
            ltac:(refine
              (M.Val
                (core.ops.control_flow.ControlFlow.t
                  (core.result.Result.t
                    core.convert.Infallible.t
                    result_chaining_with_question_mark.checked.MathError.t)
                  f64.t))) :=
          (core.ops.try_trait.Try.branch
              (Self :=
                core.result.Result.t
                  f64.t
                  result_chaining_with_question_mark.checked.MathError.t)
              (Trait := ltac:(refine _)))
            α0 in
        let* α2 := M.read α1 in
        match α2 with
        | core.ops.control_flow.ControlFlow.Break residual =>
          let* residual := M.alloc residual in
          let* α0 :
              ltac:(refine
                (M.Val
                  (core.result.Result.t
                    f64.t
                    result_chaining_with_question_mark.checked.MathError.t))) :=
            (core.ops.try_trait.FromResidual.from_residual
                (Self :=
                  core.result.Result.t
                    f64.t
                    result_chaining_with_question_mark.checked.MathError.t)
                (Trait := ltac:(refine _)))
              residual in
          let* α1 : ltac:(refine (M.Val never.t)) := M.return_ α0 in
          never_to_any α1
        | core.ops.control_flow.ControlFlow.Continue val =>
          let* val := M.alloc val in
          M.pure val
        end in
      result_chaining_with_question_mark.checked.sqrt ln).
  
  (*
      pub fn op(x: f64, y: f64) {
          match op_(x, y) {
              Err(why) => panic!(
                  "{}",
                  match why {
                      MathError::NonPositiveLogarithm => "logarithm of non-positive number",
                      MathError::DivisionByZero => "division by zero",
                      MathError::NegativeSquareRoot => "square root of negative number",
                  }
              ),
              Ok(value) => println!("{}", value),
          }
      }
  *)
  Definition op (x : M.Val f64.t) (y : M.Val f64.t) : M (M.Val unit) :=
    M.function_body
      (let* α0 :
          ltac:(refine
            (M.Val
              (core.result.Result.t
                f64.t
                result_chaining_with_question_mark.checked.MathError.t))) :=
        result_chaining_with_question_mark.checked.op_ x y in
      let* α1 := M.read α0 in
      match α1 with
      | core.result.Result.Err why =>
        let* why := M.alloc why in
        let* α0 := M.read why in
        let* α1 : ltac:(refine (M.Val (ref str))) :=
          match α0 with
          |
              result_chaining_with_question_mark.checked.MathError.NonPositiveLogarithm
                
              =>
            M.pure (mk_str "logarithm of non-positive number")
          |
              result_chaining_with_question_mark.checked.MathError.DivisionByZero
                
              =>
            let* α0 : ltac:(refine (M.Val str)) :=
              deref (mk_str "division by zero") in
            borrow α0
          |
              result_chaining_with_question_mark.checked.MathError.NegativeSquareRoot
                
              =>
            let* α0 : ltac:(refine (M.Val str)) :=
              deref (mk_str "square root of negative number") in
            borrow α0
          end in
        let* α2 : ltac:(refine (M.Val (ref (ref str)))) := borrow α1 in
        let* α3 : ltac:(refine (M.Val never.t)) :=
          core.panicking.panic_display α2 in
        never_to_any α3
      | core.result.Result.Ok value =>
        let* value := M.alloc value in
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
            M.alloc [ mk_str ""; mk_str "
" ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (M.Val (ref f64.t))) := borrow value in
          let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
            core.fmt.rt.Argument.t::["new_display"] α3 in
          let* α5 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
            M.alloc [ α4 ] in
          let* α6 :
              ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
            borrow α5 in
          let* α7 :
              ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
            pointer_coercion "Unsize" α6 in
          let* α8 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
            core.fmt.Arguments.t::["new_v1"] α2 α7 in
          std.io.stdio._print α8 in
        M.alloc tt
      end).
End checked.

Module MathError.
  Inductive t : Set :=
  | DivisionByZero
  | NonPositiveLogarithm
  | NegativeSquareRoot.
End MathError.

Module  Impl_core_fmt_Debug_for_result_chaining_with_question_mark_checked_MathError_t.
Section Impl_core_fmt_Debug_for_result_chaining_with_question_mark_checked_MathError_t.
  Ltac Self := exact result_chaining_with_question_mark.checked.MathError.t.
  
  (*
      Debug
  *)
  Definition fmt
      (self : M.Val (ref ltac:(Self)))
      (f : M.Val (mut_ref core.fmt.Formatter.t))
      : M (M.Val ltac:(core.fmt.Result)) :=
    M.function_body
      (let* α0 : ltac:(refine (M.Val core.fmt.Formatter.t)) := deref f in
      let* α1 : ltac:(refine (M.Val (mut_ref core.fmt.Formatter.t))) :=
        borrow_mut α0 in
      let* α2 := M.read self in
      let* α3 : ltac:(refine (M.Val (ref str))) :=
        match α2 with
        |
            result_chaining_with_question_mark.checked.MathError.DivisionByZero 
            =>
          let* α0 : ltac:(refine (M.Val str)) :=
            deref (mk_str "DivisionByZero") in
          borrow α0
        |
            result_chaining_with_question_mark.checked.MathError.NonPositiveLogarithm
              
            =>
          let* α0 : ltac:(refine (M.Val str)) :=
            deref (mk_str "NonPositiveLogarithm") in
          borrow α0
        |
            result_chaining_with_question_mark.checked.MathError.NegativeSquareRoot
              
            =>
          let* α0 : ltac:(refine (M.Val str)) :=
            deref (mk_str "NegativeSquareRoot") in
          borrow α0
        end in
      core.fmt.Formatter.t::["write_str"] α1 α3).
  
  Global Instance AssociatedFunction_fmt :
    Notation.DoubleColon ltac:(Self) "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait ltac:(Self) := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_result_chaining_with_question_mark_checked_MathError_t.
End Impl_core_fmt_Debug_for_result_chaining_with_question_mark_checked_MathError_t.

Ltac MathResult :=
  exact
    (core.result.Result.t
      f64.t
      result_chaining_with_question_mark.checked.MathError.t).

(*
    fn div(x: f64, y: f64) -> MathResult {
        if y == 0.0 {
            Err(MathError::DivisionByZero)
        } else {
            Ok(x / y)
        }
    }
*)
Definition div
    (x : M.Val f64.t)
    (y : M.Val f64.t)
    : M (M.Val ltac:(result_chaining_with_question_mark.checked.MathResult)) :=
  M.function_body
    (let* α0 : ltac:(refine (M.Val f64.t)) := M.alloc 0 (* 0.0 *) in
    let* α1 : ltac:(refine (M.Val bool.t)) := BinOp.eq y α0 in
    let* α2 : ltac:(refine (M.Val bool.t)) := use α1 in
    let* α3 := M.read α2 in
    if (α3 : bool) then
      let* α0 :
          ltac:(refine
            (M.Val result_chaining_with_question_mark.checked.MathError.t)) :=
        M.alloc
          result_chaining_with_question_mark.checked.MathError.DivisionByZero in
      let* α1 := M.read α0 in
      M.alloc (core.result.Result.Err α1)
    else
      let* α0 : ltac:(refine (M.Val f64.t)) := BinOp.div x y in
      let* α1 := M.read α0 in
      M.alloc (core.result.Result.Ok α1)).

(*
    fn sqrt(x: f64) -> MathResult {
        if x < 0.0 {
            Err(MathError::NegativeSquareRoot)
        } else {
            Ok(x.sqrt())
        }
    }
*)
Definition sqrt
    (x : M.Val f64.t)
    : M (M.Val ltac:(result_chaining_with_question_mark.checked.MathResult)) :=
  M.function_body
    (let* α0 : ltac:(refine (M.Val f64.t)) := M.alloc 0 (* 0.0 *) in
    let* α1 : ltac:(refine (M.Val bool.t)) := BinOp.lt x α0 in
    let* α2 : ltac:(refine (M.Val bool.t)) := use α1 in
    let* α3 := M.read α2 in
    if (α3 : bool) then
      let* α0 :
          ltac:(refine
            (M.Val result_chaining_with_question_mark.checked.MathError.t)) :=
        M.alloc
          result_chaining_with_question_mark.checked.MathError.NegativeSquareRoot in
      let* α1 := M.read α0 in
      M.alloc (core.result.Result.Err α1)
    else
      let* α0 : ltac:(refine (M.Val f64.t)) := f64.t::["sqrt"] x in
      let* α1 := M.read α0 in
      M.alloc (core.result.Result.Ok α1)).

(*
    fn ln(x: f64) -> MathResult {
        if x <= 0.0 {
            Err(MathError::NonPositiveLogarithm)
        } else {
            Ok(x.ln())
        }
    }
*)
Definition ln
    (x : M.Val f64.t)
    : M (M.Val ltac:(result_chaining_with_question_mark.checked.MathResult)) :=
  M.function_body
    (let* α0 : ltac:(refine (M.Val f64.t)) := M.alloc 0 (* 0.0 *) in
    let* α1 : ltac:(refine (M.Val bool.t)) := BinOp.le x α0 in
    let* α2 : ltac:(refine (M.Val bool.t)) := use α1 in
    let* α3 := M.read α2 in
    if (α3 : bool) then
      let* α0 :
          ltac:(refine
            (M.Val result_chaining_with_question_mark.checked.MathError.t)) :=
        M.alloc
          result_chaining_with_question_mark.checked.MathError.NonPositiveLogarithm in
      let* α1 := M.read α0 in
      M.alloc (core.result.Result.Err α1)
    else
      let* α0 : ltac:(refine (M.Val f64.t)) := f64.t::["ln"] x in
      let* α1 := M.read α0 in
      M.alloc (core.result.Result.Ok α1)).

(*
    fn op_(x: f64, y: f64) -> MathResult {
        // if `div` "fails", then `DivisionByZero` will be `return`ed
        let ratio = div(x, y)?;

        // if `ln` "fails", then `NonPositiveLogarithm` will be `return`ed
        let ln = ln(ratio)?;

        sqrt(ln)
    }
*)
Definition op_
    (x : M.Val f64.t)
    (y : M.Val f64.t)
    : M (M.Val ltac:(result_chaining_with_question_mark.checked.MathResult)) :=
  M.function_body
    (let* ratio : ltac:(refine (M.Val f64.t)) :=
      let* α0 :
          ltac:(refine
            (M.Val
              (core.result.Result.t
                f64.t
                result_chaining_with_question_mark.checked.MathError.t))) :=
        result_chaining_with_question_mark.checked.div x y in
      let* α1 :
          ltac:(refine
            (M.Val
              (core.ops.control_flow.ControlFlow.t
                (core.result.Result.t
                  core.convert.Infallible.t
                  result_chaining_with_question_mark.checked.MathError.t)
                f64.t))) :=
        (core.ops.try_trait.Try.branch
            (Self :=
              core.result.Result.t
                f64.t
                result_chaining_with_question_mark.checked.MathError.t)
            (Trait := ltac:(refine _)))
          α0 in
      let* α2 := M.read α1 in
      match α2 with
      | core.ops.control_flow.ControlFlow.Break residual =>
        let* residual := M.alloc residual in
        let* α0 :
            ltac:(refine
              (M.Val
                (core.result.Result.t
                  f64.t
                  result_chaining_with_question_mark.checked.MathError.t))) :=
          (core.ops.try_trait.FromResidual.from_residual
              (Self :=
                core.result.Result.t
                  f64.t
                  result_chaining_with_question_mark.checked.MathError.t)
              (Trait := ltac:(refine _)))
            residual in
        let* α1 : ltac:(refine (M.Val never.t)) := M.return_ α0 in
        never_to_any α1
      | core.ops.control_flow.ControlFlow.Continue val =>
        let* val := M.alloc val in
        M.pure val
      end in
    let* ln : ltac:(refine (M.Val f64.t)) :=
      let* α0 :
          ltac:(refine
            (M.Val
              (core.result.Result.t
                f64.t
                result_chaining_with_question_mark.checked.MathError.t))) :=
        result_chaining_with_question_mark.checked.ln ratio in
      let* α1 :
          ltac:(refine
            (M.Val
              (core.ops.control_flow.ControlFlow.t
                (core.result.Result.t
                  core.convert.Infallible.t
                  result_chaining_with_question_mark.checked.MathError.t)
                f64.t))) :=
        (core.ops.try_trait.Try.branch
            (Self :=
              core.result.Result.t
                f64.t
                result_chaining_with_question_mark.checked.MathError.t)
            (Trait := ltac:(refine _)))
          α0 in
      let* α2 := M.read α1 in
      match α2 with
      | core.ops.control_flow.ControlFlow.Break residual =>
        let* residual := M.alloc residual in
        let* α0 :
            ltac:(refine
              (M.Val
                (core.result.Result.t
                  f64.t
                  result_chaining_with_question_mark.checked.MathError.t))) :=
          (core.ops.try_trait.FromResidual.from_residual
              (Self :=
                core.result.Result.t
                  f64.t
                  result_chaining_with_question_mark.checked.MathError.t)
              (Trait := ltac:(refine _)))
            residual in
        let* α1 : ltac:(refine (M.Val never.t)) := M.return_ α0 in
        never_to_any α1
      | core.ops.control_flow.ControlFlow.Continue val =>
        let* val := M.alloc val in
        M.pure val
      end in
    result_chaining_with_question_mark.checked.sqrt ln).

(*
    pub fn op(x: f64, y: f64) {
        match op_(x, y) {
            Err(why) => panic!(
                "{}",
                match why {
                    MathError::NonPositiveLogarithm => "logarithm of non-positive number",
                    MathError::DivisionByZero => "division by zero",
                    MathError::NegativeSquareRoot => "square root of negative number",
                }
            ),
            Ok(value) => println!("{}", value),
        }
    }
*)
Definition op (x : M.Val f64.t) (y : M.Val f64.t) : M (M.Val unit) :=
  M.function_body
    (let* α0 :
        ltac:(refine
          (M.Val
            (core.result.Result.t
              f64.t
              result_chaining_with_question_mark.checked.MathError.t))) :=
      result_chaining_with_question_mark.checked.op_ x y in
    let* α1 := M.read α0 in
    match α1 with
    | core.result.Result.Err why =>
      let* why := M.alloc why in
      let* α0 := M.read why in
      let* α1 : ltac:(refine (M.Val (ref str))) :=
        match α0 with
        |
            result_chaining_with_question_mark.checked.MathError.NonPositiveLogarithm
              
            =>
          M.pure (mk_str "logarithm of non-positive number")
        |
            result_chaining_with_question_mark.checked.MathError.DivisionByZero 
            =>
          let* α0 : ltac:(refine (M.Val str)) :=
            deref (mk_str "division by zero") in
          borrow α0
        |
            result_chaining_with_question_mark.checked.MathError.NegativeSquareRoot
              
            =>
          let* α0 : ltac:(refine (M.Val str)) :=
            deref (mk_str "square root of negative number") in
          borrow α0
        end in
      let* α2 : ltac:(refine (M.Val (ref (ref str)))) := borrow α1 in
      let* α3 : ltac:(refine (M.Val never.t)) :=
        core.panicking.panic_display α2 in
      never_to_any α3
    | core.result.Result.Ok value =>
      let* value := M.alloc value in
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc [ mk_str ""; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref f64.t))) := borrow value in
        let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α3 in
        let* α5 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α4 ] in
        let* α6 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α5 in
        let* α7 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α7 in
        std.io.stdio._print α8 in
      M.alloc tt
    end).

(*
fn main() {
    checked::op(1.0, 10.0);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M (M.Val unit) :=
  M.function_body
    (let* _ : ltac:(refine (M.Val unit)) :=
      let* α0 : ltac:(refine (M.Val f64.t)) := M.alloc 1 (* 1.0 *) in
      let* α1 : ltac:(refine (M.Val f64.t)) := M.alloc 10 (* 10.0 *) in
      result_chaining_with_question_mark.checked.op α0 α1 in
    M.alloc tt).
