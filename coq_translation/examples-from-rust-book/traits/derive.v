(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Centimeters.
  Record t : Set := { _ : f64;}.
  
  Global Instance Get_0 : Notation.Dot 0 := {
    Notation.dot '(Build_t x0) := x0;
  }.
End Centimeters.
Definition Centimeters := Centimeters.t.

Module Impl__crate_marker_StructuralPartialEq_for_Centimeters.
  Definition Self := Centimeters.
  
  Global Instance I : _crate.marker.StructuralPartialEq.Trait Self :=
    _crate.marker.StructuralPartialEq.Build_Class _.
End Impl__crate_marker_StructuralPartialEq_for_Centimeters.

Module Impl__crate_cmp_PartialEq_for_Centimeters.
  Definition Self := Centimeters.
  
  Definition eq (self : ref Self) (other : ref Centimeters) :=
    let return_type := bool in
    ltac:(function (
      (self.[0]).["eq"](| other.[0] |)
    : return_type)).
  
  Global Instance Method_eq : Notation.Dot "eq" := {
    Notation.dot := eq;
  }.
  
  Global Instance I : _crate.cmp.PartialEq.Trait Self := {
    _crate.cmp.PartialEq.eq := eq;
  }.
End Impl__crate_cmp_PartialEq_for_Centimeters.

Module Impl__crate_cmp_PartialOrd_for_Centimeters.
  Definition Self := Centimeters.
  
  Definition partial_cmp (self : ref Self) (other : ref Centimeters) :=
    let return_type := _crate.option.Option _crate.cmp.Ordering in
    ltac:(function (
      _crate.cmp.PartialOrd.partial_cmp(| self.[0], other.[0] |)
    : return_type)).
  
  Global Instance Method_partial_cmp : Notation.Dot "partial_cmp" := {
    Notation.dot := partial_cmp;
  }.
  
  Global Instance I : _crate.cmp.PartialOrd.Trait Self := {
    _crate.cmp.PartialOrd.partial_cmp := partial_cmp;
  }.
End Impl__crate_cmp_PartialOrd_for_Centimeters.

Module Inches.
  Record t : Set := { _ : i32;}.
  
  Global Instance Get_0 : Notation.Dot 0 := {
    Notation.dot '(Build_t x0) := x0;
  }.
End Inches.
Definition Inches := Inches.t.

Module Impl__crate_fmt_Debug_for_Inches.
  Definition Self := Inches.
  
  Definition fmt (self : ref Self) (f : mut_ref _crate.fmt.Formatter) :=
    let return_type := _crate.fmt.Result in
    ltac:(function (
      _crate.fmt.Formatter::["debug_tuple_field1_finish"](|
        f,
        "Inches",
        self.[0]
      |)
    : return_type)).
  
  Global Instance Method_fmt : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : _crate.fmt.Debug.Trait Self := {
    _crate.fmt.Debug.fmt := fmt;
  }.
End Impl__crate_fmt_Debug_for_Inches.

Module ImplInches.
  Definition Self := Inches.
  
  Definition to_centimeters (self : ref Self) :=
    let return_type := Centimeters in
    ltac:(function (
      let 'Inches.Build_t inches := self in
      Centimeters.Build_t (cast inches f64).["mul"](| 3 (* 2.54 *) |)
    : return_type)).
  
  Global Instance Method_to_centimeters : Notation.Dot "to_centimeters" := {
    Notation.dot := to_centimeters;
  }.
End ImplInches.

Module Seconds.
  Record t : Set := { _ : i32;}.
  
  Global Instance Get_0 : Notation.Dot 0 := {
    Notation.dot '(Build_t x0) := x0;
  }.
End Seconds.
Definition Seconds := Seconds.t.

Definition main :=
  let return_type := unit in
  ltac:(function (
    let _one_second := Seconds.Build_t 1 in
    let foot := Inches.Build_t 12 in
    let _ : unit :=
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "One foot equals "; "
" ],
            [ format_argument::["new_debug"](| foot |) ]
          |)
        |) in
      tt in
    let meter := Centimeters.Build_t 100 (* 100.0 *) in
    let cmp :=
      if (foot.["to_centimeters"](||).["lt"](| meter |) : bool) then
        "smaller"
      else
        "bigger" in
    let _ : unit :=
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "One foot is "; " than one meter.
" ],
            [ format_argument::["new_display"](| cmp |) ]
          |)
        |) in
      tt in
    tt
  : return_type)).
