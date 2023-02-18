(* Generated by coq-of-rust *)
Require Import Coq.Strings.String.
Require Import Coq.ZArith.ZArith.
Local Open Scope Z.

(* Approximation *)

Definition u8 : Set := Z.
Definition u16 : Set := Z.
Definition u32 : Set := Z.
Definition u64 : Set := Z.
Definition u128 : Set := Z.

Definition i8 : Set := Z.
Definition i16 : Set := Z.
Definition i32 : Set := Z.
Definition i64 : Set := Z.
Definition i128 : Set := Z.

Definition f32 : Set := Z.
Definition f64 : Set := Z.

Error Enum.

(* Impl [Fruit] of trait [_crate.fmt.Debug]*)
Module ImplFruit.
  Definition
    fmt
    (self : static_ref Fruit)
    (f : mut_ref _crate.fmt.Formatter)
    : _crate.fmt.Result :=
    match self with
    | Fruit.Apple => _crate::fmt::ImplFormatter.write_str f "Apple"
    | Fruit.Orange => _crate::fmt::ImplFormatter.write_str f "Orange"
    | Fruit.Banana => _crate::fmt::ImplFormatter.write_str f "Banana"
    | Fruit.Kiwi => _crate::fmt::ImplFormatter.write_str f "Kiwi"
    | Fruit.Lemon => _crate::fmt::ImplFormatter.write_str f "Lemon"
    end.
End ImplFruit.
(* End impl [Fruit] *)

Definition main (_ : unit) :=
  let apple := Some Fruit.Apple in
  let orange := Some Fruit.Orange in
  let no_fruit := None in
  let first_available_fruit := or (or no_fruit orange) apple in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["first_available_fruit: ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_debug first_available_fruit]) ;;
  tt ;;
  tt.