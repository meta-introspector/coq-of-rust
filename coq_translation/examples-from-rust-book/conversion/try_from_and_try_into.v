(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module EvenNumber.
  Inductive t : Set := Build (_ : i32).
  
  Global Instance Get_0 : IndexedField.Class t 0 i32 := {|
    IndexedField.get '(Build x0) := x0;
  |}.
End EvenNumber.
Definition EvenNumber := EvenNumber.t.

Module Impl__crate_fmt_Debug_for_EvenNumber.
  Definition Self := EvenNumber.
  
  Global Instance I : _crate.fmt.Debug.Class Self := {|
    _crate.fmt.Debug.fmt
        (self : ref EvenNumber)
        (f : mut_ref _crate.fmt.Formatter) :=
      _crate::fmt::ImplFormatter.debug_tuple_field1_finish
        f
        "EvenNumber"
        (IndexedField.get (index := 0) self);
  |}.
Module ImplEvenNumber.

Module Impl__crate_marker_StructuralPartialEq_for_EvenNumber.
  Definition Self := EvenNumber.
  
  Global Instance I : _crate.marker.StructuralPartialEq.Class Self :=
      _crate.marker.StructuralPartialEq.Build_Class _.
Module ImplEvenNumber.

Module Impl__crate_cmp_PartialEq_for_EvenNumber.
  Definition Self := EvenNumber.
  
  Global Instance I : _crate.cmp.PartialEq.Class Self := {|
    _crate.cmp.PartialEq.eq (self : ref EvenNumber) (other : ref EvenNumber) :=
      eqb
        (IndexedField.get (index := 0) self)
        (IndexedField.get (index := 0) other);
  |}.
Module ImplEvenNumber.

Module Impl_TryFrom_for_EvenNumber.
  Definition Self := EvenNumber.
  
  Global Instance I : TryFrom.Class i32 Self := {|
    TryFrom.Error := ;
    TryFrom.try_from (value : i32) :=
      if eqb (rem value 2) 0 then
        Ok (EvenNumber value)
      else
        Err ();
  |}.
Module ImplEvenNumber.

Definition main (_ : unit) : unit :=
  match (ImplEvenNumber.try_from 8, Ok (EvenNumber 8)) with
  | (left_val, right_val) =>
    if not (eqb (deref left_val) (deref right_val)) then
      let kind := _crate.panicking.AssertKind.Eq in
      _crate.panicking.assert_failed
        kind
        (deref left_val)
        (deref right_val)
        _crate.option.Option.None ;;
      tt
    else
      tt
  end ;;
  match (ImplEvenNumber.try_from 5, Err ()) with
  | (left_val, right_val) =>
    if not (eqb (deref left_val) (deref right_val)) then
      let kind := _crate.panicking.AssertKind.Eq in
      _crate.panicking.assert_failed
        kind
        (deref left_val)
        (deref right_val)
        _crate.option.Option.None ;;
      tt
    else
      tt
  end ;;
  let result := method "try_into" 8 in
  match (result, Ok (EvenNumber 8)) with
  | (left_val, right_val) =>
    if not (eqb (deref left_val) (deref right_val)) then
      let kind := _crate.panicking.AssertKind.Eq in
      _crate.panicking.assert_failed
        kind
        (deref left_val)
        (deref right_val)
        _crate.option.Option.None ;;
      tt
    else
      tt
  end ;;
  let result := method "try_into" 5 in
  match (result, Err ()) with
  | (left_val, right_val) =>
    if not (eqb (deref left_val) (deref right_val)) then
      let kind := _crate.panicking.AssertKind.Eq in
      _crate.panicking.assert_failed
        kind
        (deref left_val)
        (deref right_val)
        _crate.option.Option.None ;;
      tt
    else
      tt
  end ;;
  tt.
