(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Container.
  Record t : Set := { _ : i32; _ : i32;}.
  
  Global Instance Get_0 : Notation.Dot 0 := {
    Notation.dot '(Build_t x0 _) := x0;
  }.
  Global Instance Get_1 : Notation.Dot 1 := {
    Notation.dot '(Build_t _ x1) := x1;
  }.
End Container.
Definition Container := Container.t.

Module Contains.
  Class Trait (Self : Set) : Set := {
    A : Set;
    B : Set;
    contains : (ref Self) -> ((ref ImplSelf.A) -> ((ref ImplSelf.B) -> bool));
    first : (ref Self) -> i32;
    last : (ref Self) -> i32;
  }.
  
  Global Instance Method_A `(Trait) : Notation.Dot "A" := {
    Notation.dot := A;
  }.
  Global Instance Method_B `(Trait) : Notation.Dot "B" := {
    Notation.dot := B;
  }.
  Global Instance Method_contains `(Trait) : Notation.Dot "contains" := {
    Notation.dot := contains;
  }.
  Global Instance Method_first `(Trait) : Notation.Dot "first" := {
    Notation.dot := first;
  }.
  Global Instance Method_last `(Trait) : Notation.Dot "last" := {
    Notation.dot := last;
  }.
End Contains.

Module Impl_Contains_for_Container.
  Definition Self := Container.
  
  Definition A : Set := i32.
  
  Definition B : Set := i32.
  
  Definition contains
      (self : ref Self)
      (number_1 : ref i32)
      (number_2 : ref i32)
      : bool :=
    ((self.[0]).["eq"] number_1).["andb"] ((self.[1]).["eq"] number_2).
  
  Global Instance Method_contains : Notation.Dot "contains" := {
    Notation.dot := contains;
  }.
  
  Definition first (self : ref Self) : i32 := self.[0].
  
  Global Instance Method_first : Notation.Dot "first" := {
    Notation.dot := first;
  }.
  
  Definition last (self : ref Self) : i32 := self.[1].
  
  Global Instance Method_last : Notation.Dot "last" := {
    Notation.dot := last;
  }.
  
  Global Instance I : Contains.Trait Self := {
    Contains.contains := contains;
    Contains.first := first;
    Contains.last := last;
  }.
End Impl_Contains_for_Container.

Definition difference {C : Set} `{Contains.Trait C} (container : ref C) : i32 :=
  container.["last"].["sub"] container.["first"].

Definition main (_ : unit) : unit :=
  let number_1 := 3 in
  let number_2 := 10 in
  let container := Container.Build_t number_1 number_2 in
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "Does container contain "; " and "; ": "; "\n" ]
      [
        _crate.fmt.ArgumentV1::["new_display"] number_1;
        _crate.fmt.ArgumentV1::["new_display"] number_2;
        _crate.fmt.ArgumentV1::["new_display"]
          (container.["contains"] number_1 number_2)
      ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "First number: "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_display"] container.["first"] ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "Last number: "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_display"] container.["last"] ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "The difference is: "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_display"] (difference container) ]) ;;
  tt ;;
  tt.

Definition main (_ : unit) : unit := test.
