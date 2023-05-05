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
  
  Definition fmt (self : ref Self) (f : mut_ref _crate.fmt.Formatter) :=
    let return_type := _crate.fmt.Result in
    ltac:(function (
      _crate.fmt.Formatter::["write_str"](|
        f,
        match self with
        | Fruit.Apple => "Apple"
        | Fruit.Orange => "Orange"
        | Fruit.Banana => "Banana"
        | Fruit.Kiwi => "Kiwi"
        | Fruit.Lemon => "Lemon"
        end
      |)
    : return_type)).
  
  Global Instance Method_fmt : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : _crate.fmt.Debug.Trait Self := {
    _crate.fmt.Debug.fmt := fmt;
  }.
End Impl__crate_fmt_Debug_for_Fruit.

Definition main :=
  let return_type := unit in
  ltac:(function (
    let my_fruit := None in
    let apple := Fruit.Apple in
    let first_available_fruit := my_fruit.["get_or_insert"](| apple |) in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "my_fruit is: "; "
" ],
            [ format_argument::["new_debug"](| first_available_fruit |) ]
          |)
        |) in
      tt in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "first_available_fruit is: "; "
" ],
            [ format_argument::["new_debug"](| first_available_fruit |) ]
          |)
        |) in
      tt in
    tt
  : return_type)).
