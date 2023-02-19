(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Person.
  Record t : Set := {
    name : String;
    age : u8;
  }.
End Person.
Definition Person : Set := Person.t.

Module Impl__crate_fmt_Debug_for_Person.
  Definition Self := Person.
  
  #[global] Instance I : _crate.fmt.Debug.Class Self := {|
    fmt
      (self : static_ref Person)
      (f : mut_ref _crate.fmt.Formatter)
      : _crate.fmt.Result :=
      _crate::fmt::ImplFormatter.debug_struct_field2_finish
        f
        "Person"
        "name"
        self.name
        "age"
        self.age;
  |}.
Module ImplPerson.

Error Struct.

Definition Pair : Set :=
  i32 * f32.

Module Point.
  Record t : Set := {
    x : f32;
    y : f32;
  }.
End Point.
Definition Point : Set := Point.t.

Module Rectangle.
  Record t : Set := {
    top_left : Point;
    bottom_right : Point;
  }.
End Rectangle.
Definition Rectangle : Set := Rectangle.t.

Definition main (_ : unit) :=
  let name := ImplString.from "Peter" in
  let age := 27 in
  let peter := {| Person.name := name; Person.age := age; |} in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["";"\n"]
      [_crate::fmt::ImplArgumentV1.new_debug peter]) ;;
  tt ;;
  let point := {| Point.x := 10 (* 10.3 *); Point.y := 0 (* 0.4 *); |} in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["point coordinates: (";", ";")\n"]
      [_crate::fmt::ImplArgumentV1.new_display
        point.x;_crate::fmt::ImplArgumentV1.new_display point.y]) ;;
  tt ;;
  let bottom_right := {| Point.x := 5 (* 5.2 *); |} with point in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["second point: (";", ";")\n"]
      [_crate::fmt::ImplArgumentV1.new_display
        bottom_right.x;_crate::fmt::ImplArgumentV1.new_display
        bottom_right.y]) ;;
  tt ;;
  let {| Point.x := left_edge; Point.y := top_edge; |} := point in
  let _rectangle := {|
    Rectangle.top_left := {| Point.x := left_edge; Point.y := top_edge; |};
    Rectangle.bottom_right := bottom_right;
  |} in
  let _unit := Unit in
  let pair := Pair 1 0 (* 0.1 *) in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["pair contains ";" and ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_debug
        pair.0;_crate::fmt::ImplArgumentV1.new_debug pair.1]) ;;
  tt ;;
  let Pair (integer, decimal) := pair in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["pair contains ";" and ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_debug
        integer;_crate::fmt::ImplArgumentV1.new_debug decimal]) ;;
  tt ;;
  tt.
