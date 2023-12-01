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
    Definition fmt
        (self : ref ltac:(Self))
        (f : mut_ref core.fmt.Formatter.t)
        : M ltac:(core.fmt.Result) :=
      let* self : M.Val (ref ltac:(Self)) := M.alloc self in
      let* f : M.Val (mut_ref core.fmt.Formatter.t) := M.alloc f in
      let* α0 : mut_ref core.fmt.Formatter.t := M.read f in
      let* α1 : ref result.checked.MathError.t := M.read self in
      let* α2 : M.Val (ref str.t) :=
        match α1 with
        | result.checked.MathError.DivisionByZero  =>
          let* α0 : ref str.t := M.read (mk_str "DivisionByZero") in
          M.alloc α0
        | result.checked.MathError.NonPositiveLogarithm  =>
          let* α0 : ref str.t := M.read (mk_str "NonPositiveLogarithm") in
          M.alloc α0
        | result.checked.MathError.NegativeSquareRoot  =>
          let* α0 : ref str.t := M.read (mk_str "NegativeSquareRoot") in
          M.alloc α0
        end in
      let* α3 : ref str.t := M.read α2 in
      M.call (core.fmt.Formatter.t::["write_str"] α0 α3).
    
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
  Definition div (x : f64.t) (y : f64.t) : M ltac:(result.checked.MathResult) :=
    let* x : M.Val f64.t := M.alloc x in
    let* y : M.Val f64.t := M.alloc y in
    let* α0 : f64.t := M.read y in
    let* α1 : f64.t := M.read UnsupportedLiteral in
    let* α2 : M.Val (core.result.Result.t f64.t result.checked.MathError.t) :=
      if (use (BinOp.Pure.eq α0 α1) : bool) then
        M.alloc (core.result.Result.Err result.checked.MathError.DivisionByZero)
      else
        let* α0 : f64.t := M.read x in
        let* α1 : f64.t := M.read y in
        let* α2 : f64.t := BinOp.Panic.div α0 α1 in
        M.alloc (core.result.Result.Ok α2) in
    M.read α2.
  
  (*
      pub fn sqrt(x: f64) -> MathResult {
          if x < 0.0 {
              Err(MathError::NegativeSquareRoot)
          } else {
              Ok(x.sqrt())
          }
      }
  *)
  Definition sqrt (x : f64.t) : M ltac:(result.checked.MathResult) :=
    let* x : M.Val f64.t := M.alloc x in
    let* α0 : f64.t := M.read x in
    let* α1 : f64.t := M.read UnsupportedLiteral in
    let* α2 : M.Val (core.result.Result.t f64.t result.checked.MathError.t) :=
      if (use (BinOp.Pure.lt α0 α1) : bool) then
        M.alloc
          (core.result.Result.Err result.checked.MathError.NegativeSquareRoot)
      else
        let* α0 : f64.t := M.read x in
        let* α1 : f64.t := M.call (f64.t::["sqrt"] α0) in
        M.alloc (core.result.Result.Ok α1) in
    M.read α2.
  
  (*
      pub fn ln(x: f64) -> MathResult {
          if x <= 0.0 {
              Err(MathError::NonPositiveLogarithm)
          } else {
              Ok(x.ln())
          }
      }
  *)
  Definition ln (x : f64.t) : M ltac:(result.checked.MathResult) :=
    let* x : M.Val f64.t := M.alloc x in
    let* α0 : f64.t := M.read x in
    let* α1 : f64.t := M.read UnsupportedLiteral in
    let* α2 : M.Val (core.result.Result.t f64.t result.checked.MathError.t) :=
      if (use (BinOp.Pure.le α0 α1) : bool) then
        M.alloc
          (core.result.Result.Err result.checked.MathError.NonPositiveLogarithm)
      else
        let* α0 : f64.t := M.read x in
        let* α1 : f64.t := M.call (f64.t::["ln"] α0) in
        M.alloc (core.result.Result.Ok α1) in
    M.read α2.
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
  Definition fmt
      (self : ref ltac:(Self))
      (f : mut_ref core.fmt.Formatter.t)
      : M ltac:(core.fmt.Result) :=
    let* self : M.Val (ref ltac:(Self)) := M.alloc self in
    let* f : M.Val (mut_ref core.fmt.Formatter.t) := M.alloc f in
    let* α0 : mut_ref core.fmt.Formatter.t := M.read f in
    let* α1 : ref result.checked.MathError.t := M.read self in
    let* α2 : M.Val (ref str.t) :=
      match α1 with
      | result.checked.MathError.DivisionByZero  =>
        let* α0 : ref str.t := M.read (mk_str "DivisionByZero") in
        M.alloc α0
      | result.checked.MathError.NonPositiveLogarithm  =>
        let* α0 : ref str.t := M.read (mk_str "NonPositiveLogarithm") in
        M.alloc α0
      | result.checked.MathError.NegativeSquareRoot  =>
        let* α0 : ref str.t := M.read (mk_str "NegativeSquareRoot") in
        M.alloc α0
      end in
    let* α3 : ref str.t := M.read α2 in
    M.call (core.fmt.Formatter.t::["write_str"] α0 α3).
  
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
Definition div (x : f64.t) (y : f64.t) : M ltac:(result.checked.MathResult) :=
  let* x : M.Val f64.t := M.alloc x in
  let* y : M.Val f64.t := M.alloc y in
  let* α0 : f64.t := M.read y in
  let* α1 : f64.t := M.read UnsupportedLiteral in
  let* α2 : M.Val (core.result.Result.t f64.t result.checked.MathError.t) :=
    if (use (BinOp.Pure.eq α0 α1) : bool) then
      M.alloc (core.result.Result.Err result.checked.MathError.DivisionByZero)
    else
      let* α0 : f64.t := M.read x in
      let* α1 : f64.t := M.read y in
      let* α2 : f64.t := BinOp.Panic.div α0 α1 in
      M.alloc (core.result.Result.Ok α2) in
  M.read α2.

(*
    pub fn sqrt(x: f64) -> MathResult {
        if x < 0.0 {
            Err(MathError::NegativeSquareRoot)
        } else {
            Ok(x.sqrt())
        }
    }
*)
Definition sqrt (x : f64.t) : M ltac:(result.checked.MathResult) :=
  let* x : M.Val f64.t := M.alloc x in
  let* α0 : f64.t := M.read x in
  let* α1 : f64.t := M.read UnsupportedLiteral in
  let* α2 : M.Val (core.result.Result.t f64.t result.checked.MathError.t) :=
    if (use (BinOp.Pure.lt α0 α1) : bool) then
      M.alloc
        (core.result.Result.Err result.checked.MathError.NegativeSquareRoot)
    else
      let* α0 : f64.t := M.read x in
      let* α1 : f64.t := M.call (f64.t::["sqrt"] α0) in
      M.alloc (core.result.Result.Ok α1) in
  M.read α2.

(*
    pub fn ln(x: f64) -> MathResult {
        if x <= 0.0 {
            Err(MathError::NonPositiveLogarithm)
        } else {
            Ok(x.ln())
        }
    }
*)
Definition ln (x : f64.t) : M ltac:(result.checked.MathResult) :=
  let* x : M.Val f64.t := M.alloc x in
  let* α0 : f64.t := M.read x in
  let* α1 : f64.t := M.read UnsupportedLiteral in
  let* α2 : M.Val (core.result.Result.t f64.t result.checked.MathError.t) :=
    if (use (BinOp.Pure.le α0 α1) : bool) then
      M.alloc
        (core.result.Result.Err result.checked.MathError.NonPositiveLogarithm)
    else
      let* α0 : f64.t := M.read x in
      let* α1 : f64.t := M.call (f64.t::["ln"] α0) in
      M.alloc (core.result.Result.Ok α1) in
  M.read α2.

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
Definition op (x : f64.t) (y : f64.t) : M f64.t :=
  let* x : M.Val f64.t := M.alloc x in
  let* y : M.Val f64.t := M.alloc y in
  let* α0 : f64.t := M.read x in
  let* α1 : f64.t := M.read y in
  let* α2 : core.result.Result.t f64.t result.checked.MathError.t :=
    M.call (result.checked.div α0 α1) in
  let* α3 : M.Val f64.t :=
    match α2 with
    | core.result.Result.Err why =>
      let* why := M.alloc why in
      let* α0 : M.Val (array (ref str.t)) := M.alloc [ mk_str "" ] in
      let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
      let* α2 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α1) in
      let* α3 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow why)) in
      let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
      let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
      let* α6 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α5) in
      let* α7 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α6) in
      let* α8 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α2 α7) in
      let* α9 : never.t := M.call (core.panicking.panic_fmt α8) in
      let* α10 : f64.t := never_to_any α9 in
      M.alloc α10
    | core.result.Result.Ok ratio =>
      let* ratio := M.alloc ratio in
      let* α0 : f64.t := M.read ratio in
      let* α1 : core.result.Result.t f64.t result.checked.MathError.t :=
        M.call (result.checked.ln α0) in
      match α1 with
      | core.result.Result.Err why =>
        let* why := M.alloc why in
        let* α0 : M.Val (array (ref str.t)) := M.alloc [ mk_str "" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow why)) in
        let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
        let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
        let* α6 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α5) in
        let* α7 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α6) in
        let* α8 : core.fmt.Arguments.t :=
          M.call (core.fmt.Arguments.t::["new_v1"] α2 α7) in
        let* α9 : never.t := M.call (core.panicking.panic_fmt α8) in
        let* α10 : f64.t := never_to_any α9 in
        M.alloc α10
      | core.result.Result.Ok ln =>
        let* ln := M.alloc ln in
        let* α0 : f64.t := M.read ln in
        let* α1 : core.result.Result.t f64.t result.checked.MathError.t :=
          M.call (result.checked.sqrt α0) in
        match α1 with
        | core.result.Result.Err why =>
          let* why := M.alloc why in
          let* α0 : M.Val (array (ref str.t)) := M.alloc [ mk_str "" ] in
          let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
          let* α2 : ref (slice (ref str.t)) :=
            M.read (pointer_coercion "Unsize" α1) in
          let* α3 : core.fmt.rt.Argument.t :=
            M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow why)) in
          let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
          let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
          let* α6 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
            M.alloc (borrow α5) in
          let* α7 : ref (slice core.fmt.rt.Argument.t) :=
            M.read (pointer_coercion "Unsize" α6) in
          let* α8 : core.fmt.Arguments.t :=
            M.call (core.fmt.Arguments.t::["new_v1"] α2 α7) in
          let* α9 : never.t := M.call (core.panicking.panic_fmt α8) in
          let* α10 : f64.t := never_to_any α9 in
          M.alloc α10
        | core.result.Result.Ok sqrt =>
          let* sqrt := M.alloc sqrt in
          M.pure sqrt
        end
      end
    end in
  M.read α3.

(*
fn main() {
    // Will this fail?
    println!("{}", op(1.0, 10.0));
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str ""; mk_str "
" ] in
      let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
      let* α2 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α1) in
      let* α3 : f64.t := M.read UnsupportedLiteral in
      let* α4 : f64.t := M.read UnsupportedLiteral in
      let* α5 : f64.t := M.call (result.op α3 α4) in
      let* α6 : M.Val f64.t := M.alloc α5 in
      let* α7 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α6)) in
      let* α8 : M.Val core.fmt.rt.Argument.t := M.alloc α7 in
      let* α9 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α8 ] in
      let* α10 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α9) in
      let* α11 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α10) in
      let* α12 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α2 α11) in
      let* α13 : unit := M.call (std.io.stdio._print α12) in
      M.alloc α13 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
