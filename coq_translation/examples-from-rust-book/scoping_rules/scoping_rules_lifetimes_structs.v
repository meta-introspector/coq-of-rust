(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Borrowed.
  Inductive t : Set := Build (_ : ref i32).
  
  Global Instance Get_0 : IndexedField.Class t 0 _ := {|
    IndexedField.get '(Build x0) := x0;
  |}.
End Borrowed.
Definition Borrowed := Borrowed.t.

Module Impl__crate_fmt_Debug_for_Borrowed.
  Definition Self := Borrowed.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref _crate.fmt.Formatter)
      : _crate.fmt.Result :=
    _crate.fmt.ImplFormatter.debug_tuple_field1_finish
      f
      "Borrowed"
      (IndexedField.get (index := 0) self).
  
  Global Instance M_fmt : Method "fmt" _ := {|
    method := fmt;
  |}.
  Global Instance AF_fmt : Borrowed.AssociatedFunction "fmt" _ := {|
    Borrowed.associated_function := fmt;
  |}.
  Global Instance AFT_fmt : _crate.fmt.Debug.AssociatedFunction "fmt" _ := {|
    _crate.fmt.Debug.associated_function := fmt;
  |}.
  
  Global Instance I 'a : _crate.fmt.Debug.Class Self := {|
    _crate.fmt.Debug.fmt := fmt;
  |}.
End Impl__crate_fmt_Debug_for_Borrowed.

Module NamedBorrowed.
  Record t : Set := {
    x : ref i32;
    y : ref i32;
  }.
  
  Global Instance Get_x : NamedField.Class t "x" _ := {|
    NamedField.get '(Build_t x0 _) := x0;
  |}.
  Global Instance Get_y : NamedField.Class t "y" _ := {|
    NamedField.get '(Build_t _ x1) := x1;
  |}.
  Class AssociatedFunction (name : string) (T : Set) : Set := {
    associated_function : T;
  }.
  Arguments associated_function name {T AssociatedFunction}.
End NamedBorrowed.
Definition NamedBorrowed : Set := NamedBorrowed.t.

Module Impl__crate_fmt_Debug_for_NamedBorrowed.
  Definition Self := NamedBorrowed.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref _crate.fmt.Formatter)
      : _crate.fmt.Result :=
    _crate.fmt.ImplFormatter.debug_struct_field2_finish
      f
      "NamedBorrowed"
      "x"
      (NamedField.get (name := "x") self)
      "y"
      (NamedField.get (name := "y") self).
  
  Global Instance M_fmt : Method "fmt" _ := {|
    method := fmt;
  |}.
  Global Instance AF_fmt : NamedBorrowed.AssociatedFunction "fmt" _ := {|
    NamedBorrowed.associated_function := fmt;
  |}.
  Global Instance AFT_fmt : _crate.fmt.Debug.AssociatedFunction "fmt" _ := {|
    _crate.fmt.Debug.associated_function := fmt;
  |}.
  
  Global Instance I 'a : _crate.fmt.Debug.Class Self := {|
    _crate.fmt.Debug.fmt := fmt;
  |}.
End Impl__crate_fmt_Debug_for_NamedBorrowed.

Module Either.
  Inductive t : Set :=
  | Num (_ : i32)
  | Ref (_ : ref i32).
End Either.
Definition Either := Either.t.

Module Impl__crate_fmt_Debug_for_Either.
  Definition Self := Either.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref _crate.fmt.Formatter)
      : _crate.fmt.Result :=
    match self with
    | Either.Num (__self_0) =>
      _crate.fmt.ImplFormatter.debug_tuple_field1_finish f "Num" __self_0
    | Either.Ref (__self_0) =>
      _crate.fmt.ImplFormatter.debug_tuple_field1_finish f "Ref" __self_0
    end.
  
  Global Instance M_fmt : Method "fmt" _ := {|
    method := fmt;
  |}.
  Global Instance AF_fmt : Either.AssociatedFunction "fmt" _ := {|
    Either.associated_function := fmt;
  |}.
  Global Instance AFT_fmt : _crate.fmt.Debug.AssociatedFunction "fmt" _ := {|
    _crate.fmt.Debug.associated_function := fmt;
  |}.
  
  Global Instance I 'a : _crate.fmt.Debug.Class Self := {|
    _crate.fmt.Debug.fmt := fmt;
  |}.
End Impl__crate_fmt_Debug_for_Either.

Definition main (_ : unit) : unit :=
  let x := 18 in
  let y := 15 in
  let single := Borrowed.Build x in
  let double := {| NamedBorrowed.x := x; NamedBorrowed.y := y; |} in
  let reference := Either.Ref x in
  let number := Either.Num y in
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "x is borrowed in "; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_debug single ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "x and y are borrowed in "; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_debug double ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "x is borrowed in "; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_debug reference ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "y is *not* borrowed in "; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_debug number ]) ;;
  tt ;;
  tt.
