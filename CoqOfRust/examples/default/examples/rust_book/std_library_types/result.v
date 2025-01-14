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
    Definition Self : Set := result.checked.MathError.t.
    
    (*
        Debug
    *)
    Definition fmt
        (self : ref Self)
        (f : mut_ref core.fmt.Formatter.t)
        : M ltac:(core.fmt.Result) :=
      let* self := M.alloc self in
      let* f := M.alloc f in
      let* α0 : mut_ref core.fmt.Formatter.t := M.read f in
      let* α1 : M.Val (ref str.t) :=
        match_operator
          self
          [
            fun γ =>
              (let* γ :=
                let* α0 := M.read γ in
                M.pure (deref α0) in
              let* α0 := M.read γ in
              match α0 with
              | result.checked.MathError.DivisionByZero =>
                let* α0 : ref str.t := M.read (mk_str "DivisionByZero") in
                M.alloc α0
              | _ => M.break_match
              end) :
              M (M.Val (ref str.t));
            fun γ =>
              (let* γ :=
                let* α0 := M.read γ in
                M.pure (deref α0) in
              let* α0 := M.read γ in
              match α0 with
              | result.checked.MathError.NonPositiveLogarithm =>
                let* α0 : ref str.t := M.read (mk_str "NonPositiveLogarithm") in
                M.alloc α0
              | _ => M.break_match
              end) :
              M (M.Val (ref str.t));
            fun γ =>
              (let* γ :=
                let* α0 := M.read γ in
                M.pure (deref α0) in
              let* α0 := M.read γ in
              match α0 with
              | result.checked.MathError.NegativeSquareRoot =>
                let* α0 : ref str.t := M.read (mk_str "NegativeSquareRoot") in
                M.alloc α0
              | _ => M.break_match
              end) :
              M (M.Val (ref str.t))
          ] in
      let* α2 : ref str.t := M.read α1 in
      M.call (core.fmt.Formatter.t::["write_str"] α0 α2).
    
    Global Instance AssociatedFunction_fmt :
      Notations.DoubleColon Self "fmt" := {
      Notations.double_colon := fmt;
    }.
    
    Global Instance ℐ : core.fmt.Debug.Trait Self := {
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
    let* x := M.alloc x in
    let* y := M.alloc y in
    let* α0 : f64.t := M.read y in
    let* α1 : f64.t := M.read (UnsupportedLiteral : M.Val f64.t) in
    let* α2 : M.Val bool.t := M.alloc (BinOp.Pure.eq α0 α1) in
    let* α3 : bool.t := M.read (use α2) in
    let* α4 : M.Val (core.result.Result.t f64.t result.checked.MathError.t) :=
      if α3 then
        M.alloc (core.result.Result.Err result.checked.MathError.DivisionByZero)
      else
        let* α0 : f64.t := M.read x in
        let* α1 : f64.t := M.read y in
        let* α2 : f64.t := BinOp.Panic.div α0 α1 in
        M.alloc (core.result.Result.Ok α2) in
    M.read α4.
  
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
    let* x := M.alloc x in
    let* α0 : f64.t := M.read x in
    let* α1 : f64.t := M.read (UnsupportedLiteral : M.Val f64.t) in
    let* α2 : M.Val bool.t := M.alloc (BinOp.Pure.lt α0 α1) in
    let* α3 : bool.t := M.read (use α2) in
    let* α4 : M.Val (core.result.Result.t f64.t result.checked.MathError.t) :=
      if α3 then
        M.alloc
          (core.result.Result.Err result.checked.MathError.NegativeSquareRoot)
      else
        let* α0 : f64.t := M.read x in
        let* α1 : f64.t := M.call (f64.t::["sqrt"] α0) in
        M.alloc (core.result.Result.Ok α1) in
    M.read α4.
  
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
    let* x := M.alloc x in
    let* α0 : f64.t := M.read x in
    let* α1 : f64.t := M.read (UnsupportedLiteral : M.Val f64.t) in
    let* α2 : M.Val bool.t := M.alloc (BinOp.Pure.le α0 α1) in
    let* α3 : bool.t := M.read (use α2) in
    let* α4 : M.Val (core.result.Result.t f64.t result.checked.MathError.t) :=
      if α3 then
        M.alloc
          (core.result.Result.Err result.checked.MathError.NonPositiveLogarithm)
      else
        let* α0 : f64.t := M.read x in
        let* α1 : f64.t := M.call (f64.t::["ln"] α0) in
        M.alloc (core.result.Result.Ok α1) in
    M.read α4.
End checked.

Module MathError.
  Inductive t : Set :=
  | DivisionByZero
  | NonPositiveLogarithm
  | NegativeSquareRoot.
End MathError.

Module  Impl_core_fmt_Debug_for_result_checked_MathError_t.
Section Impl_core_fmt_Debug_for_result_checked_MathError_t.
  Definition Self : Set := result.checked.MathError.t.
  
  (*
      Debug
  *)
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter.t)
      : M ltac:(core.fmt.Result) :=
    let* self := M.alloc self in
    let* f := M.alloc f in
    let* α0 : mut_ref core.fmt.Formatter.t := M.read f in
    let* α1 : M.Val (ref str.t) :=
      match_operator
        self
        [
          fun γ =>
            (let* γ :=
              let* α0 := M.read γ in
              M.pure (deref α0) in
            let* α0 := M.read γ in
            match α0 with
            | result.checked.MathError.DivisionByZero =>
              let* α0 : ref str.t := M.read (mk_str "DivisionByZero") in
              M.alloc α0
            | _ => M.break_match
            end) :
            M (M.Val (ref str.t));
          fun γ =>
            (let* γ :=
              let* α0 := M.read γ in
              M.pure (deref α0) in
            let* α0 := M.read γ in
            match α0 with
            | result.checked.MathError.NonPositiveLogarithm =>
              let* α0 : ref str.t := M.read (mk_str "NonPositiveLogarithm") in
              M.alloc α0
            | _ => M.break_match
            end) :
            M (M.Val (ref str.t));
          fun γ =>
            (let* γ :=
              let* α0 := M.read γ in
              M.pure (deref α0) in
            let* α0 := M.read γ in
            match α0 with
            | result.checked.MathError.NegativeSquareRoot =>
              let* α0 : ref str.t := M.read (mk_str "NegativeSquareRoot") in
              M.alloc α0
            | _ => M.break_match
            end) :
            M (M.Val (ref str.t))
        ] in
    let* α2 : ref str.t := M.read α1 in
    M.call (core.fmt.Formatter.t::["write_str"] α0 α2).
  
  Global Instance AssociatedFunction_fmt : Notations.DoubleColon Self "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
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
  let* x := M.alloc x in
  let* y := M.alloc y in
  let* α0 : f64.t := M.read y in
  let* α1 : f64.t := M.read (UnsupportedLiteral : M.Val f64.t) in
  let* α2 : M.Val bool.t := M.alloc (BinOp.Pure.eq α0 α1) in
  let* α3 : bool.t := M.read (use α2) in
  let* α4 : M.Val (core.result.Result.t f64.t result.checked.MathError.t) :=
    if α3 then
      M.alloc (core.result.Result.Err result.checked.MathError.DivisionByZero)
    else
      let* α0 : f64.t := M.read x in
      let* α1 : f64.t := M.read y in
      let* α2 : f64.t := BinOp.Panic.div α0 α1 in
      M.alloc (core.result.Result.Ok α2) in
  M.read α4.

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
  let* x := M.alloc x in
  let* α0 : f64.t := M.read x in
  let* α1 : f64.t := M.read (UnsupportedLiteral : M.Val f64.t) in
  let* α2 : M.Val bool.t := M.alloc (BinOp.Pure.lt α0 α1) in
  let* α3 : bool.t := M.read (use α2) in
  let* α4 : M.Val (core.result.Result.t f64.t result.checked.MathError.t) :=
    if α3 then
      M.alloc
        (core.result.Result.Err result.checked.MathError.NegativeSquareRoot)
    else
      let* α0 : f64.t := M.read x in
      let* α1 : f64.t := M.call (f64.t::["sqrt"] α0) in
      M.alloc (core.result.Result.Ok α1) in
  M.read α4.

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
  let* x := M.alloc x in
  let* α0 : f64.t := M.read x in
  let* α1 : f64.t := M.read (UnsupportedLiteral : M.Val f64.t) in
  let* α2 : M.Val bool.t := M.alloc (BinOp.Pure.le α0 α1) in
  let* α3 : bool.t := M.read (use α2) in
  let* α4 : M.Val (core.result.Result.t f64.t result.checked.MathError.t) :=
    if α3 then
      M.alloc
        (core.result.Result.Err result.checked.MathError.NonPositiveLogarithm)
    else
      let* α0 : f64.t := M.read x in
      let* α1 : f64.t := M.call (f64.t::["ln"] α0) in
      M.alloc (core.result.Result.Ok α1) in
  M.read α4.

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
  let* x := M.alloc x in
  let* y := M.alloc y in
  let* α0 : f64.t := M.read x in
  let* α1 : f64.t := M.read y in
  let* α2 : core.result.Result.t f64.t result.checked.MathError.t :=
    M.call (result.checked.div α0 α1) in
  let* α3 : M.Val (core.result.Result.t f64.t result.checked.MathError.t) :=
    M.alloc α2 in
  let* α4 : M.Val f64.t :=
    match_operator
      α3
      [
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | core.result.Result.Err _ =>
            let γ0_0 := core.result.Result.Get_Err_0 γ in
            let* why := M.copy γ0_0 in
            let* α0 : ref str.t := M.read (mk_str "") in
            let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
            let* α2 : core.fmt.rt.Argument.t :=
              M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow why)) in
            let* α3 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α2 ] in
            let* α4 : core.fmt.Arguments.t :=
              M.call
                (core.fmt.Arguments.t::["new_v1"]
                  (pointer_coercion "Unsize" (borrow α1))
                  (pointer_coercion "Unsize" (borrow α3))) in
            let* α5 : never.t := M.call (core.panicking.panic_fmt α4) in
            let* α6 : f64.t := never_to_any α5 in
            M.alloc α6
          | _ => M.break_match
          end) :
          M (M.Val f64.t);
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | core.result.Result.Ok _ =>
            let γ0_0 := core.result.Result.Get_Ok_0 γ in
            let* ratio := M.copy γ0_0 in
            let* α0 : f64.t := M.read ratio in
            let* α1 : core.result.Result.t f64.t result.checked.MathError.t :=
              M.call (result.checked.ln α0) in
            let* α2 :
                M.Val (core.result.Result.t f64.t result.checked.MathError.t) :=
              M.alloc α1 in
            match_operator
              α2
              [
                fun γ =>
                  (let* α0 := M.read γ in
                  match α0 with
                  | core.result.Result.Err _ =>
                    let γ0_0 := core.result.Result.Get_Err_0 γ in
                    let* why := M.copy γ0_0 in
                    let* α0 : ref str.t := M.read (mk_str "") in
                    let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
                    let* α2 : core.fmt.rt.Argument.t :=
                      M.call
                        (core.fmt.rt.Argument.t::["new_debug"] (borrow why)) in
                    let* α3 : M.Val (array core.fmt.rt.Argument.t) :=
                      M.alloc [ α2 ] in
                    let* α4 : core.fmt.Arguments.t :=
                      M.call
                        (core.fmt.Arguments.t::["new_v1"]
                          (pointer_coercion "Unsize" (borrow α1))
                          (pointer_coercion "Unsize" (borrow α3))) in
                    let* α5 : never.t := M.call (core.panicking.panic_fmt α4) in
                    let* α6 : f64.t := never_to_any α5 in
                    M.alloc α6
                  | _ => M.break_match
                  end) :
                  M (M.Val f64.t);
                fun γ =>
                  (let* α0 := M.read γ in
                  match α0 with
                  | core.result.Result.Ok _ =>
                    let γ0_0 := core.result.Result.Get_Ok_0 γ in
                    let* ln := M.copy γ0_0 in
                    let* α0 : f64.t := M.read ln in
                    let* α1 :
                        core.result.Result.t f64.t result.checked.MathError.t :=
                      M.call (result.checked.sqrt α0) in
                    let* α2 :
                        M.Val
                          (core.result.Result.t
                            f64.t
                            result.checked.MathError.t) :=
                      M.alloc α1 in
                    match_operator
                      α2
                      [
                        fun γ =>
                          (let* α0 := M.read γ in
                          match α0 with
                          | core.result.Result.Err _ =>
                            let γ0_0 := core.result.Result.Get_Err_0 γ in
                            let* why := M.copy γ0_0 in
                            let* α0 : ref str.t := M.read (mk_str "") in
                            let* α1 : M.Val (array (ref str.t)) :=
                              M.alloc [ α0 ] in
                            let* α2 : core.fmt.rt.Argument.t :=
                              M.call
                                (core.fmt.rt.Argument.t::["new_debug"]
                                  (borrow why)) in
                            let* α3 : M.Val (array core.fmt.rt.Argument.t) :=
                              M.alloc [ α2 ] in
                            let* α4 : core.fmt.Arguments.t :=
                              M.call
                                (core.fmt.Arguments.t::["new_v1"]
                                  (pointer_coercion "Unsize" (borrow α1))
                                  (pointer_coercion "Unsize" (borrow α3))) in
                            let* α5 : never.t :=
                              M.call (core.panicking.panic_fmt α4) in
                            let* α6 : f64.t := never_to_any α5 in
                            M.alloc α6
                          | _ => M.break_match
                          end) :
                          M (M.Val f64.t);
                        fun γ =>
                          (let* α0 := M.read γ in
                          match α0 with
                          | core.result.Result.Ok _ =>
                            let γ0_0 := core.result.Result.Get_Ok_0 γ in
                            let* sqrt := M.copy γ0_0 in
                            M.pure sqrt
                          | _ => M.break_match
                          end) :
                          M (M.Val f64.t)
                      ]
                  | _ => M.break_match
                  end) :
                  M (M.Val f64.t)
              ]
          | _ => M.break_match
          end) :
          M (M.Val f64.t)
      ] in
  M.read α4.

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
      let* α0 : ref str.t := M.read (mk_str "") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : f64.t := M.read (UnsupportedLiteral : M.Val f64.t) in
      let* α4 : f64.t := M.read (UnsupportedLiteral : M.Val f64.t) in
      let* α5 : f64.t := M.call (result.op α3 α4) in
      let* α6 : M.Val f64.t := M.alloc α5 in
      let* α7 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α6)) in
      let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
      let* α9 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α8))) in
      let* α10 : unit := M.call (std.io.stdio._print α9) in
      M.alloc α10 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
