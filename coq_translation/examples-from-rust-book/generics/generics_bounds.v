(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module HasArea.
  Class Class (Self : Set) : Set := {
    area : ref Self -> f64;
  }.
End HasArea.

Module Impl_HasArea_for_Rectangle.
  Definition Self := Rectangle.
  
  Global Instance I : HasArea.Class Self := {|
    HasArea.area (self : ref Rectangle) := mul self.length self.height;
  |}.
Module ImplRectangle.

Module Rectangle.
  Record t : Set := {
    length : f64;
    height : f64;
  }.
End Rectangle.
Definition Rectangle : Set := Rectangle.t.

Module Impl__crate_fmt_Debug_for_Rectangle.
  Definition Self := Rectangle.
  
  Global Instance I : _crate.fmt.Debug.Class Self := {|
    _crate.fmt.Debug.fmt
        (self : ref Rectangle)
        (f : mut_ref _crate.fmt.Formatter) :=
      _crate::fmt::ImplFormatter.debug_struct_field2_finish
        f
        "Rectangle"
        "length"
        self.length
        "height"
        self.height;
  |}.
Module ImplRectangle.

Module Triangle.
  Record t : Set := {
    length : f64;
    height : f64;
  }.
End Triangle.
Definition Triangle : Set := Triangle.t.

Definition print_debug (_ : unit) :=
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["";"\n"]
      [_crate::fmt::ImplArgumentV1.new_debug t]) ;;
  tt ;;
  tt.

Definition area (_ : unit) := area t.

Definition main (_ : unit) :=
  let rectangle :=
    {| Rectangle.length := 3 (* 3.0 *); Rectangle.height := 4 (* 4.0 *); |} in
  let _triangle :=
    {| Triangle.length := 3 (* 3.0 *); Triangle.height := 4 (* 4.0 *); |} in
  print_debug rectangle ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["Area: ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_display (area rectangle)]) ;;
  tt ;;
  tt.
