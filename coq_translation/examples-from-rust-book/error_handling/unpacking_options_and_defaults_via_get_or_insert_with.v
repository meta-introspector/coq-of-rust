(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Fruit.
  Inductive t : Set :=
  | Apple
  | Orange
  | Banana
  | Kiwi
  | Lemon.
End Fruit.
Definition Fruit := Fruit.t.

Module Impl__crate_fmt_Debug_for_Fruit.
  Definition Self := Fruit.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref _crate.fmt.Formatter)
      : _crate.fmt.Result :=
    match self with
    | Fruit.Apple => _crate.fmt.Formatter::["write_str"] f "Apple"
    | Fruit.Orange => _crate.fmt.Formatter::["write_str"] f "Orange"
    | Fruit.Banana => _crate.fmt.Formatter::["write_str"] f "Banana"
    | Fruit.Kiwi => _crate.fmt.Formatter::["write_str"] f "Kiwi"
    | Fruit.Lemon => _crate.fmt.Formatter::["write_str"] f "Lemon"
    end.
  
  Global Instance Method_fmt : Notation.Dot "fmt" := {|
    Notation.dot := fmt;
  |}.
  Global Instance AssociatedFunction_fmt : Notation.DoubleColon Self "fmt" := {|
    Notation.double_colon := fmt;
  |}.
  
  Global Instance I : _crate.fmt.Debug.Trait Self := {|
    _crate.fmt.Debug.fmt := fmt;
  |}.
End Impl__crate_fmt_Debug_for_Fruit.

Definition main (_ : unit) : unit :=
  let my_fruit := None in
  let get_lemon_as_fallback :=
    fun  =>
      _crate.io._print
        (_crate.fmt.Arguments::["new_v1"]
          [ "Providing lemon as fallback\n" ]
          [  ]) ;;
      tt ;;
      Fruit.Lemon in
  let first_available_fruit :=
    my_fruit.["get_or_insert_with"] get_lemon_as_fallback in
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "my_fruit is: "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_debug"] first_available_fruit ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "first_available_fruit is: "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_debug"] first_available_fruit ]) ;;
  tt ;;
  let my_apple := Some Fruit.Apple in
  let should_be_apple :=
    my_apple.["get_or_insert_with"] get_lemon_as_fallback in
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "should_be_apple is: "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_debug"] should_be_apple ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "my_apple is unchanged: "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_debug"] my_apple ]) ;;
  tt ;;
  tt.
