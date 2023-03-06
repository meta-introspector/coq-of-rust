(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Centimeters.
  Inductive t : Set := Build (_ : f64).
  
  Global Instance Get_0 : IndexedField.Class t 0 _ := {|
    IndexedField.get '(Build x0) := x0;
  |}.
End Centimeters.
Definition Centimeters := Centimeters.t.

Module Impl__crate_marker_StructuralPartialEq_for_Centimeters.
  Definition Self := Centimeters.
  
  Global Instance I : _crate.marker.StructuralPartialEq.Class Self :=
      _crate.marker.StructuralPartialEq.Build_Class _.
End Impl__crate_marker_StructuralPartialEq_for_Centimeters.

Module Impl__crate_cmp_PartialEq_for_Centimeters.
  Definition Self := Centimeters.
  
  Global Instance I : _crate.cmp.PartialEq.Class Self := {|
    Definition eq (self : ref Self) (other : ref Centimeters) : bool :=
      eqb
        (IndexedField.get (index := 0) self)
        (IndexedField.get (index := 0) other).
    
    Global Instance AF_eq : Centimeters.AssociatedFunction "eq" _ := {|
      Centimeters.associated_function := eq;
    |}.
    Global Instance M_eq : Method "eq" _ := {|
      method := eq;
    |}.
  |}.
End Impl__crate_cmp_PartialEq_for_Centimeters.

Module Impl__crate_cmp_PartialOrd_for_Centimeters.
  Definition Self := Centimeters.
  
  Global Instance I : _crate.cmp.PartialOrd.Class Self := {|
    Definition partial_cmp
        (self : ref Self)
        (other : ref Centimeters)
        : _crate.option.Option :=
      (_crate.cmp.PartialOrd.associated_function "partial_cmp")
        (IndexedField.get (index := 0) self)
        (IndexedField.get (index := 0) other).
    
    Global Instance
      AF_partial_cmp
      :
      Centimeters.AssociatedFunction
      "partial_cmp"
      _
      :=
      {|
      Centimeters.associated_function := partial_cmp;
    |}.
    Global Instance M_partial_cmp : Method "partial_cmp" _ := {|
      method := partial_cmp;
    |}.
  |}.
End Impl__crate_cmp_PartialOrd_for_Centimeters.

Module Inches.
  Inductive t : Set := Build (_ : i32).
  
  Global Instance Get_0 : IndexedField.Class t 0 _ := {|
    IndexedField.get '(Build x0) := x0;
  |}.
End Inches.
Definition Inches := Inches.t.

Module Impl__crate_fmt_Debug_for_Inches.
  Definition Self := Inches.
  
  Global Instance I : _crate.fmt.Debug.Class Self := {|
    Definition fmt
        (self : ref Self)
        (f : mut_ref _crate.fmt.Formatter)
        : _crate.fmt.Result :=
      _crate.fmt.ImplFormatter.debug_tuple_field1_finish
        f
        "Inches"
        (IndexedField.get (index := 0) self).
    
    Global Instance AF_fmt : Inches.AssociatedFunction "fmt" _ := {|
      Inches.associated_function := fmt;
    |}.
    Global Instance M_fmt : Method "fmt" _ := {|
      method := fmt;
    |}.
  |}.
End Impl__crate_fmt_Debug_for_Inches.

Module ImplInches.
  Definition Self := Inches.
  
  Definition to_centimeters (self : ref Self) : Centimeters :=
    let Inches (inches) := self in
    Centimeters.Build (mul (cast inches f64) 3 (* 2.54 *)).
  
  Global Instance
    AF_to_centimeters
    :
    Inches.AssociatedFunction
    "to_centimeters"
    _
    :=
    {|
    Inches.associated_function := to_centimeters;
  |}.
  Global Instance M_to_centimeters : Method "to_centimeters" _ := {|
    method := to_centimeters;
  |}.
End ImplInches.

Module Seconds.
  Inductive t : Set := Build (_ : i32).
  
  Global Instance Get_0 : IndexedField.Class t 0 _ := {|
    IndexedField.get '(Build x0) := x0;
  |}.
End Seconds.
Definition Seconds := Seconds.t.

Definition main (_ : unit) : unit :=
  let _one_second := Seconds.Build 1 in
  let foot := Inches.Build 12 in
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "One foot equals "; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_debug foot ]) ;;
  tt ;;
  let meter := Centimeters.Build 100 (* 100.0 *) in
  let cmp :=
    if (lt (method "to_centimeters" foot) meter : bool) then
      "smaller"
    else
      "bigger" in
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "One foot is "; " than one meter.\n" ]
      [ _crate.fmt.ImplArgumentV1.new_display cmp ]) ;;
  tt ;;
  tt.
