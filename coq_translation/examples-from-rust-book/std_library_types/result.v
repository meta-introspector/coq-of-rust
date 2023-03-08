(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module checked.
  Module MathError.
    Inductive t : Set :=
    | DivisionByZero
    | NonPositiveLogarithm
    | NegativeSquareRoot.
  End MathError.
  Definition MathError := MathError.t.
  
  Module Impl__crate_fmt_Debug_for_MathError.
    Definition Self := MathError.
    
    Definition fmt
        (self : ref Self)
        (f : mut_ref _crate.fmt.Formatter)
        : _crate.fmt.Result :=
      match self with
      | MathError.DivisionByZero =>
        _crate.fmt.ImplFormatter.write_str f "DivisionByZero"
      | MathError.NonPositiveLogarithm =>
        _crate.fmt.ImplFormatter.write_str f "NonPositiveLogarithm"
      | MathError.NegativeSquareRoot =>
        _crate.fmt.ImplFormatter.write_str f "NegativeSquareRoot"
      end.
    
    Global Instance M_fmt : Method "fmt" _ := {|
      method := fmt;
    |}.
    Global Instance AF_fmt : MathError.AssociatedFunction "fmt" _ := {|
      MathError.associated_function := fmt;
    |}.
    Global Instance AFT_fmt : _crate.fmt.Debug.AssociatedFunction "fmt" _ := {|
      _crate.fmt.Debug.associated_function := fmt;
    |}.
    
    Global Instance I : _crate.fmt.Debug.Class Self := {|
      _crate.fmt.Debug.fmt := fmt;
    |}.
  End Impl__crate_fmt_Debug_for_MathError.
  
  Definition MathResult : Set := Result.
  
  Definition div (x : f64) (y : f64) : MathResult :=
    if (eqb y 0 (* 0.0 *) : bool) then
      Err MathError.DivisionByZero
    else
      Ok (div x y).
  
  Definition sqrt (x : f64) : MathResult :=
    if (lt x 0 (* 0.0 *) : bool) then
      Err MathError.NegativeSquareRoot
    else
      Ok (method "sqrt" x).
  
  Definition ln (x : f64) : MathResult :=
    if (le x 0 (* 0.0 *) : bool) then
      Err MathError.NonPositiveLogarithm
    else
      Ok (method "ln" x).
End checked.

Module MathError.
  Inductive t : Set :=
  | DivisionByZero
  | NonPositiveLogarithm
  | NegativeSquareRoot.
End MathError.
Definition MathError := MathError.t.

Module Impl__crate_fmt_Debug_for_MathError.
  Definition Self := MathError.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref _crate.fmt.Formatter)
      : _crate.fmt.Result :=
    match self with
    | MathError.DivisionByZero =>
      _crate.fmt.ImplFormatter.write_str f "DivisionByZero"
    | MathError.NonPositiveLogarithm =>
      _crate.fmt.ImplFormatter.write_str f "NonPositiveLogarithm"
    | MathError.NegativeSquareRoot =>
      _crate.fmt.ImplFormatter.write_str f "NegativeSquareRoot"
    end.
  
  Global Instance M_fmt : Method "fmt" _ := {|
    method := fmt;
  |}.
  Global Instance AF_fmt : MathError.AssociatedFunction "fmt" _ := {|
    MathError.associated_function := fmt;
  |}.
  Global Instance AFT_fmt : _crate.fmt.Debug.AssociatedFunction "fmt" _ := {|
    _crate.fmt.Debug.associated_function := fmt;
  |}.
  
  Global Instance I : _crate.fmt.Debug.Class Self := {|
    _crate.fmt.Debug.fmt := fmt;
  |}.
End Impl__crate_fmt_Debug_for_MathError.

Definition MathResult : Set := Result.

Definition div (x : f64) (y : f64) : MathResult :=
  if (eqb y 0 (* 0.0 *) : bool) then
    Err MathError.DivisionByZero
  else
    Ok (div x y).

Definition sqrt (x : f64) : MathResult :=
  if (lt x 0 (* 0.0 *) : bool) then
    Err MathError.NegativeSquareRoot
  else
    Ok (method "sqrt" x).

Definition ln (x : f64) : MathResult :=
  if (le x 0 (* 0.0 *) : bool) then
    Err MathError.NonPositiveLogarithm
  else
    Ok (method "ln" x).

Definition op (x : f64) (y : f64) : f64 :=
  match checked.div x y with
  | Err (why) =>
    _crate.rt.panic_fmt
      (_crate.fmt.ImplArguments.new_v1
        [ "" ]
        [ _crate.fmt.ImplArgumentV1.new_debug why ])
  | Ok (ratio) =>
    match checked.ln ratio with
    | Err (why) =>
      _crate.rt.panic_fmt
        (_crate.fmt.ImplArguments.new_v1
          [ "" ]
          [ _crate.fmt.ImplArgumentV1.new_debug why ])
    | Ok (ln) =>
      match checked.sqrt ln with
      | Err (why) =>
        _crate.rt.panic_fmt
          (_crate.fmt.ImplArguments.new_v1
            [ "" ]
            [ _crate.fmt.ImplArgumentV1.new_debug why ])
      | Ok (sqrt) => sqrt
      end
    end
  end.

Definition main (_ : unit) : unit :=
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ ""; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_display (op 1 (* 1.0 *) 10 (* 10.0 *))
      ]) ;;
  tt ;;
  tt.
