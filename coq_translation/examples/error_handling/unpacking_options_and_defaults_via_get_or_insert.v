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
      : M _crate.fmt.Result :=
    let* α0 :=
      match self with
      | Fruit.Apple => Pure "Apple"
      | Fruit.Orange => Pure "Orange"
      | Fruit.Banana => Pure "Banana"
      | Fruit.Kiwi => Pure "Kiwi"
      | Fruit.Lemon => Pure "Lemon"
      end in
    _crate.fmt.Formatter::["write_str"] f α0.
  
  Global Instance Method_fmt : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : _crate.fmt.Debug.Trait Self := {
    _crate.fmt.Debug.fmt := fmt;
  }.
End Impl__crate_fmt_Debug_for_Fruit.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let my_fruit := None in
  let apple := Fruit.Apple in
  let* first_available_fruit := my_fruit.["get_or_insert"] apple in
  let* α0 := format_argument::["new_debug"] (deref first_available_fruit) in
  let* α1 :=
    format_arguments::["new_v1"]
      (deref [ "my_fruit is: "; "
" ])
      (deref [ α0 ]) in
  let* _ := _crate.io._print α1 in
  let _ := tt in
  let* α2 := format_argument::["new_debug"] (deref first_available_fruit) in
  let* α3 :=
    format_arguments::["new_v1"]
      (deref [ "first_available_fruit is: "; "
" ])
      (deref [ α2 ]) in
  let* _ := _crate.io._print α3 in
  let _ := tt in
  Pure tt.
