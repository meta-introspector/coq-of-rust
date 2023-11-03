(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module checked.
  Module MathError.
    Inductive t `{ℋ : State.Trait} : Set :=
    | DivisionByZero
    | NonPositiveLogarithm
    | NegativeSquareRoot.
  End MathError.
  Definition MathError `{ℋ : State.Trait} : Set := MathError.t.
  
  Module  Impl_core_fmt_Debug_for_result_checked_MathError.
  Section Impl_core_fmt_Debug_for_result_checked_MathError.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := result.checked.MathError.
    
    Definition fmt
        (self : ref Self)
        (f : mut_ref core.fmt.Formatter)
        : M ltac:(core.fmt.Result) :=
      let* α0 := deref f core.fmt.Formatter in
      let* α1 := borrow_mut α0 core.fmt.Formatter in
      let* α2 :=
        match self with
        | result.checked.MathError  =>
          let* α0 := deref (mk_str "DivisionByZero") str in
          borrow α0 str
        | result.checked.MathError  =>
          let* α0 := deref (mk_str "NonPositiveLogarithm") str in
          borrow α0 str
        | result.checked.MathError  =>
          let* α0 := deref (mk_str "NegativeSquareRoot") str in
          borrow α0 str
        end in
      core.fmt.Formatter::["write_str"] α1 α2.
    
    Global Instance AssociatedFunction_fmt :
      Notation.DoubleColon Self "fmt" := {
      Notation.double_colon := fmt;
    }.
    
    Global Instance ℐ : core.fmt.Debug.Trait Self := {
      core.fmt.Debug.fmt := fmt;
    }.
  End Impl_core_fmt_Debug_for_result_checked_MathError.
  End Impl_core_fmt_Debug_for_result_checked_MathError.
  
  Ltac MathResult := refine (core.result.Result f64 result.checked.MathError).
  
  Definition div
      `{ℋ : State.Trait}
      (x : f64)
      (y : f64)
      : M ltac:(result.checked.MathResult) :=
    let* α0 := M.alloc 0 (* 0.0 *) in
    let* α1 := BinOp.eq y α0 in
    let* α2 := use α1 in
    if (α2 : bool) then
      let* α0 := M.alloc result.checked.MathError.DivisionByZero in
      M.alloc (core.result.Result.Err α0)
    else
      let* α0 := BinOp.div x y in
      M.alloc (core.result.Result.Ok α0).
  
  Definition sqrt
      `{ℋ : State.Trait}
      (x : f64)
      : M ltac:(result.checked.MathResult) :=
    let* α0 := M.alloc 0 (* 0.0 *) in
    let* α1 := BinOp.lt x α0 in
    let* α2 := use α1 in
    if (α2 : bool) then
      let* α0 := M.alloc result.checked.MathError.NegativeSquareRoot in
      M.alloc (core.result.Result.Err α0)
    else
      let* α0 := f64::["sqrt"] x in
      M.alloc (core.result.Result.Ok α0).
  
  Definition ln
      `{ℋ : State.Trait}
      (x : f64)
      : M ltac:(result.checked.MathResult) :=
    let* α0 := M.alloc 0 (* 0.0 *) in
    let* α1 := BinOp.le x α0 in
    let* α2 := use α1 in
    if (α2 : bool) then
      let* α0 := M.alloc result.checked.MathError.NonPositiveLogarithm in
      M.alloc (core.result.Result.Err α0)
    else
      let* α0 := f64::["ln"] x in
      M.alloc (core.result.Result.Ok α0).
End checked.

Module MathError.
  Inductive t `{ℋ : State.Trait} : Set :=
  | DivisionByZero
  | NonPositiveLogarithm
  | NegativeSquareRoot.
End MathError.
Definition MathError `{ℋ : State.Trait} : Set := MathError.t.

Module  Impl_core_fmt_Debug_for_result_checked_MathError.
Section Impl_core_fmt_Debug_for_result_checked_MathError.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := result.checked.MathError.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M ltac:(core.fmt.Result) :=
    let* α0 := deref f core.fmt.Formatter in
    let* α1 := borrow_mut α0 core.fmt.Formatter in
    let* α2 :=
      match self with
      | result.checked.MathError  =>
        let* α0 := deref (mk_str "DivisionByZero") str in
        borrow α0 str
      | result.checked.MathError  =>
        let* α0 := deref (mk_str "NonPositiveLogarithm") str in
        borrow α0 str
      | result.checked.MathError  =>
        let* α0 := deref (mk_str "NegativeSquareRoot") str in
        borrow α0 str
      end in
    core.fmt.Formatter::["write_str"] α1 α2.
  
  Global Instance AssociatedFunction_fmt : Notation.DoubleColon Self "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_result_checked_MathError.
End Impl_core_fmt_Debug_for_result_checked_MathError.

Ltac MathResult := refine (core.result.Result f64 result.checked.MathError).

Definition div
    `{ℋ : State.Trait}
    (x : f64)
    (y : f64)
    : M ltac:(result.checked.MathResult) :=
  let* α0 := M.alloc 0 (* 0.0 *) in
  let* α1 := BinOp.eq y α0 in
  let* α2 := use α1 in
  if (α2 : bool) then
    let* α0 := M.alloc result.checked.MathError.DivisionByZero in
    M.alloc (core.result.Result.Err α0)
  else
    let* α0 := BinOp.div x y in
    M.alloc (core.result.Result.Ok α0).

Definition sqrt
    `{ℋ : State.Trait}
    (x : f64)
    : M ltac:(result.checked.MathResult) :=
  let* α0 := M.alloc 0 (* 0.0 *) in
  let* α1 := BinOp.lt x α0 in
  let* α2 := use α1 in
  if (α2 : bool) then
    let* α0 := M.alloc result.checked.MathError.NegativeSquareRoot in
    M.alloc (core.result.Result.Err α0)
  else
    let* α0 := f64::["sqrt"] x in
    M.alloc (core.result.Result.Ok α0).

Definition ln
    `{ℋ : State.Trait}
    (x : f64)
    : M ltac:(result.checked.MathResult) :=
  let* α0 := M.alloc 0 (* 0.0 *) in
  let* α1 := BinOp.le x α0 in
  let* α2 := use α1 in
  if (α2 : bool) then
    let* α0 := M.alloc result.checked.MathError.NonPositiveLogarithm in
    M.alloc (core.result.Result.Err α0)
  else
    let* α0 := f64::["ln"] x in
    M.alloc (core.result.Result.Ok α0).

Definition op `{ℋ : State.Trait} (x : f64) (y : f64) : M f64 :=
  let* α0 := result.checked.div x y in
  match α0 with
  | core.result.Result why =>
    let* α0 := borrow [ mk_str "" ] (list (ref str)) in
    let* α1 := deref α0 (list (ref str)) in
    let* α2 := borrow α1 (list (ref str)) in
    let* α3 := pointer_coercion "Unsize" α2 in
    let* α4 := borrow why result.checked.MathError in
    let* α5 := deref α4 result.checked.MathError in
    let* α6 := borrow α5 result.checked.MathError in
    let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
    let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
    let* α9 := deref α8 (list core.fmt.rt.Argument) in
    let* α10 := borrow α9 (list core.fmt.rt.Argument) in
    let* α11 := pointer_coercion "Unsize" α10 in
    let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
    let* α13 := core.panicking.panic_fmt α12 in
    never_to_any α13
  | core.result.Result ratio =>
    let* α0 := result.checked.ln ratio in
    match α0 with
    | core.result.Result why =>
      let* α0 := borrow [ mk_str "" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := borrow why result.checked.MathError in
      let* α5 := deref α4 result.checked.MathError in
      let* α6 := borrow α5 result.checked.MathError in
      let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
      let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
      let* α9 := deref α8 (list core.fmt.rt.Argument) in
      let* α10 := borrow α9 (list core.fmt.rt.Argument) in
      let* α11 := pointer_coercion "Unsize" α10 in
      let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
      let* α13 := core.panicking.panic_fmt α12 in
      never_to_any α13
    | core.result.Result ln =>
      let* α0 := result.checked.sqrt ln in
      match α0 with
      | core.result.Result why =>
        let* α0 := borrow [ mk_str "" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow why result.checked.MathError in
        let* α5 := deref α4 result.checked.MathError in
        let* α6 := borrow α5 result.checked.MathError in
        let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
        let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
        let* α9 := deref α8 (list core.fmt.rt.Argument) in
        let* α10 := borrow α9 (list core.fmt.rt.Argument) in
        let* α11 := pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
        let* α13 := core.panicking.panic_fmt α12 in
        never_to_any α13
      | core.result.Result sqrt => Pure sqrt
      end
    end
  end.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  let* _ :=
    let* _ :=
      let* α0 := borrow [ mk_str ""; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := M.alloc 1 (* 1.0 *) in
      let* α5 := M.alloc 10 (* 10.0 *) in
      let* α6 := result.op α4 α5 in
      let* α7 := borrow α6 f64 in
      let* α8 := deref α7 f64 in
      let* α9 := borrow α8 f64 in
      let* α10 := core.fmt.rt.Argument::["new_display"] α9 in
      let* α11 := borrow [ α10 ] (list core.fmt.rt.Argument) in
      let* α12 := deref α11 (list core.fmt.rt.Argument) in
      let* α13 := borrow α12 (list core.fmt.rt.Argument) in
      let* α14 := pointer_coercion "Unsize" α13 in
      let* α15 := core.fmt.Arguments::["new_v1"] α3 α14 in
      std.io.stdio._print α15 in
    M.alloc tt in
  M.alloc tt.
