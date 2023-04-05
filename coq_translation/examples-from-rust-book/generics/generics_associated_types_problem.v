(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Container.
  Inductive t : Set := Build (_ : i32) (_ : i32).
  
  Global Instance Get_0 : IndexedField.Class t 0 _ := {|
    IndexedField.get '(Build x0 _) := x0;
  |}.
  Global Instance Get_1 : IndexedField.Class t 1 _ := {|
    IndexedField.get '(Build _ x1) := x1;
  |}.
End Container.
Definition Container := Container.t.

Module Contains.
  Class Trait (A B Self : Set) : Set := {
    contains : (ref Self) -> ((ref A) -> ((ref B) -> bool));
    first : (ref Self) -> i32;
    last : (ref Self) -> i32;
  }.
  
  Global Instance Method_contains `(Trait) : Notation.Dot "contains" := {|
    Notation.dot := contains;
  |}.
  Global Instance Method_first `(Trait) : Notation.Dot "first" := {|
    Notation.dot := first;
  |}.
  Global Instance Method_last `(Trait) : Notation.Dot "last" := {|
    Notation.dot := last;
  |}.
  Class AssociatedFunction (name : string) (T : Set) : Set := {
    associated_function : T;
  }.
  Arguments associated_function name {T AssociatedFunction}.
End Contains.

Module Impl_Contains_for_Container.
  Definition Self := Container.
  
  Definition contains
      (self : ref Self)
      (number_1 : ref i32)
      (number_2 : ref i32)
      : bool :=
    andb
      (eqb (IndexedField.get (index := 0) self) number_1)
      (eqb (IndexedField.get (index := 1) self) number_2).
  
  Global Instance Method_contains : Notation.Dot "contains" := {|
    Notation.dot := contains;
  |}.
  Global Instance AssociatedFunction_contains :
    Notation.DoubleColon Self "contains" := {|
    Notation.double_colon := contains;
  |}.
  
  Definition first (self : ref Self) : i32 :=
    IndexedField.get (index := 0) self.
  
  Global Instance Method_first : Notation.Dot "first" := {|
    Notation.dot := first;
  |}.
  Global Instance AssociatedFunction_first :
    Notation.DoubleColon Self "first" := {|
    Notation.double_colon := first;
  |}.
  
  Definition last (self : ref Self) : i32 := IndexedField.get (index := 1) self.
  
  Global Instance Method_last : Notation.Dot "last" := {|
    Notation.dot := last;
  |}.
  Global Instance AssociatedFunction_last :
    Notation.DoubleColon Self "last" := {|
    Notation.double_colon := last;
  |}.
  
  Global Instance I : Contains.Trait i32 i32 Self := {|
    Contains.contains := contains;
    Contains.first := first;
    Contains.last := last;
  |}.
End Impl_Contains_for_Container.

Definition difference
    {A B C : Set}
    `{Contains.Trait A B C}
    (container : ref C)
    : i32 :=
  sub container.["last"] container.["first"].

Definition main (_ : unit) : unit :=
  let number_1 := 3 in
  let number_2 := 10 in
  let container := Container.Build number_1 number_2 in
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
