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
    _crate.fmt.Formatter::["write_str"]
      f
      match self with
      | Fruit.Apple => "Apple"
      | Fruit.Orange => "Orange"
      | Fruit.Banana => "Banana"
      | Fruit.Kiwi => "Kiwi"
      | Fruit.Lemon => "Lemon"
      end.
  
  Global Instance Method_fmt : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : _crate.fmt.Debug.Trait Self := {
    _crate.fmt.Debug.fmt := fmt;
  }.
End Impl__crate_fmt_Debug_for_Fruit.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  let my_fruit := None in
  let get_lemon_as_fallback :=
    fun  =>
      let _ :=
        let _ :=
          _crate.io._print
            (format_arguments::["new_const"]
              [ "Providing lemon as fallback
" ]) in
        tt in
      Fruit.Lemon in
  let first_available_fruit :=
    my_fruit.["get_or_insert_with"] get_lemon_as_fallback in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "my_fruit is: "; "
" ]
          [ format_argument::["new_debug"] first_available_fruit ]) in
    tt in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "first_available_fruit is: "; "
" ]
          [ format_argument::["new_debug"] first_available_fruit ]) in
    tt in
  let my_apple := Some Fruit.Apple in
  let should_be_apple :=
    my_apple.["get_or_insert_with"] get_lemon_as_fallback in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "should_be_apple is: "; "
" ]
          [ format_argument::["new_debug"] should_be_apple ]) in
    tt in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "my_apple is unchanged: "; "
" ]
          [ format_argument::["new_debug"] my_apple ]) in
    tt in
  tt.
