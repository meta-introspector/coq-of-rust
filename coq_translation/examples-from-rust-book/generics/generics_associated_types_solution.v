(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Container.
  Inductive t : Set := Build (_ : i32) (_ : i32).
  
  Global Instance Get_0 : IndexedField.Class t 0 i32 := {|
    IndexedField.get '(Build x0 _) := x0;
  |}.
  Global Instance Get_1 : IndexedField.Class t 1 i32 := {|
    IndexedField.get '(Build _ x1) := x1;
  |}.
End Container.
Definition Container := Container.t.

Module Contains.
  Class Class (Self : Set) : Set := {
    A : Set;
    B : Set;
    contains : (ref Self) -> ((ref ImplSelf.A) -> ((ref ImplSelf.B) -> bool));
    first : (ref Self) -> i32;
    last : (ref Self) -> i32;
  }.
  
  Global Instance Method_A `(Class) : Method "A" _ := {|
    method := A;
  |}.
  Global Instance Method_B `(Class) : Method "B" _ := {|
    method := B;
  |}.
  Global Instance Method_contains `(Class) : Method "contains" _ := {|
    method := contains;
  |}.
  Global Instance Method_first `(Class) : Method "first" _ := {|
    method := first;
  |}.
  Global Instance Method_last `(Class) : Method "last" _ := {|
    method := last;
  |}.
End Contains.

Module Impl_Contains_for_Container.
  Definition Self := Container.
  
  Global Instance I : Contains.Class Self := {|
    Contains.A := i32;
    Contains.B := i32;
    Contains.contains
        (self : ref Container)
        (number_1 : ref i32)
        (number_2 : ref i32) :=
      andb
        (eqb (IndexedField.get (index := 0) self) number_1)
        (eqb (IndexedField.get (index := 1) self) number_2);
    Contains.first (self : ref Container) := IndexedField.get (index := 0) self;
    Contains.last (self : ref Container) := IndexedField.get (index := 1) self;
  |}.
Module ImplContainer.

Definition difference {C : Set} `{Contains.Class C} (container : ref C) : i32 :=
  sub (method "last" container) (method "first" container).

Definition main (_ : unit) : unit :=
  let number_1 := 3 in
  let number_2 := 10 in
  let container := Container.Build number_1 number_2 in
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "Does container contain "; " and "; ": "; "\n" ]
      [
        _crate.fmt.ImplArgumentV1.new_display number_1;
        _crate.fmt.ImplArgumentV1.new_display number_2;
        _crate.fmt.ImplArgumentV1.new_display
          (method "contains" container number_1 number_2)
      ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "First number: "; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_display (method "first" container) ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "Last number: "; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_display (method "last" container) ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "The difference is: "; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_display (difference container) ]) ;;
  tt ;;
  tt.
