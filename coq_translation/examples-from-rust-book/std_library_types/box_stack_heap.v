(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module mem := std.mem.

Module Point.
  Record t : Set := {
    x : f64;
    y : f64;
  }.
  
  Global Instance Get_x : Notation.Dot "x" := {|
    Notation.dot '(Build_t x0 _) := x0;
  |}.
  Global Instance Get_y : Notation.Dot "y" := {|
    Notation.dot '(Build_t _ x1) := x1;
  |}.
End Point.
Definition Point : Set := Point.t.

Module Impl__crate_fmt_Debug_for_Point.
  Definition Self := Point.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref _crate.fmt.Formatter)
      : _crate.fmt.Result :=
    _crate.fmt.Formatter::["debug_struct_field2_finish"]
      f
      "Point"
      "x"
      self.["x"]
      "y"
      self.["y"].
  
  Global Instance Method_fmt : Notation.Dot "fmt" := {|
    Notation.dot := fmt;
  |}.
  Global Instance AssociatedFunction_fmt : Notation.DoubleColon Self "fmt" := {|
    Notation.double_colon := fmt;
  |}.
  
  Global Instance I : _crate.fmt.Debug.Trait Self := {|
    _crate.fmt.Debug.fmt := fmt;
  |}.
End Impl__crate_fmt_Debug_for_Point.

Module Impl__crate_clone_Clone_for_Point.
  Definition Self := Point.
  
  Definition clone (self : ref Self) : Point :=
    let _ := tt in
    deref self.
  
  Global Instance Method_clone : Notation.Dot "clone" := {|
    Notation.dot := clone;
  |}.
  Global Instance AssociatedFunction_clone :
    Notation.DoubleColon Self "clone" := {|
    Notation.double_colon := clone;
  |}.
  
  Global Instance I : _crate.clone.Clone.Trait Self := {|
    _crate.clone.Clone.clone := clone;
  |}.
End Impl__crate_clone_Clone_for_Point.

Module Impl__crate_marker_Copy_for_Point.
  Definition Self := Point.
  
  Global Instance I : _crate.marker.Copy.Trait Self :=
    _crate.marker.Copy.Build_Class _.
End Impl__crate_marker_Copy_for_Point.

Module Rectangle.
  Record t : Set := {
    top_left : Point;
    bottom_right : Point;
  }.
  
  Global Instance Get_top_left : Notation.Dot "top_left" := {|
    Notation.dot '(Build_t x0 _) := x0;
  |}.
  Global Instance Get_bottom_right : Notation.Dot "bottom_right" := {|
    Notation.dot '(Build_t _ x1) := x1;
  |}.
End Rectangle.
Definition Rectangle : Set := Rectangle.t.

Definition origin (_ : unit) : Point :=
  {| Point.x := 0 (* 0.0 *); Point.y := 0 (* 0.0 *); |}.

Definition boxed_origin (_ : unit) : Box :=
  Box::["new"] {| Point.x := 0 (* 0.0 *); Point.y := 0 (* 0.0 *); |}.

Definition main (_ : unit) : unit :=
  let point := origin tt in
  let rectangle :=
    {|
      Rectangle.top_left := origin tt;
      Rectangle.bottom_right :=
        {| Point.x := 3 (* 3.0 *); Point.y := neg 4 (* 4.0 *); |};
    |} in
  let boxed_rectangle :=
    Box::["new"]
      {|
        Rectangle.top_left := origin tt;
        Rectangle.bottom_right :=
          {| Point.x := 3 (* 3.0 *); Point.y := neg 4 (* 4.0 *); |};
      |} in
  let boxed_point := Box::["new"] (origin tt) in
  let box_in_a_box := Box::["new"] (boxed_origin tt) in
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "Point occupies "; " bytes on the stack\n" ]
      [ _crate.fmt.ArgumentV1::["new_display"] (mem.size_of_val point) ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "Rectangle occupies "; " bytes on the stack\n" ]
      [ _crate.fmt.ArgumentV1::["new_display"] (mem.size_of_val rectangle) ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "Boxed point occupies "; " bytes on the stack\n" ]
      [ _crate.fmt.ArgumentV1::["new_display"] (mem.size_of_val boxed_point)
      ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "Boxed rectangle occupies "; " bytes on the stack\n" ]
      [ _crate.fmt.ArgumentV1::["new_display"] (mem.size_of_val boxed_rectangle)
      ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "Boxed box occupies "; " bytes on the stack\n" ]
      [ _crate.fmt.ArgumentV1::["new_display"] (mem.size_of_val box_in_a_box)
      ]) ;;
  tt ;;
  let unboxed_point := deref boxed_point in
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "Unboxed point occupies "; " bytes on the stack\n" ]
      [ _crate.fmt.ArgumentV1::["new_display"] (mem.size_of_val unboxed_point)
      ]) ;;
  tt ;;
  tt.
