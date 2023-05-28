(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Person.
  Record t : Set := {
    name : String;
    age : u8;
  }.
  
  Global Instance Get_name : Notation.Dot "name" := {
    Notation.dot '(Build_t x0 _) := x0;
  }.
  Global Instance Get_age : Notation.Dot "age" := {
    Notation.dot '(Build_t _ x1) := x1;
  }.
End Person.
Definition Person : Set := Person.t.

Module Impl__crate_fmt_Debug_for_Person.
  Definition Self := Person.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref _crate.fmt.Formatter)
      : _crate.fmt.Result :=
    _crate.fmt.Formatter::["debug_struct_field2_finish"]
      f
      "Person"
      "name"
      self.["name"]
      "age"
      self.["age"].
  
  Global Instance Method_fmt : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : _crate.fmt.Debug.Trait Self := {
    _crate.fmt.Debug.fmt := fmt;
  }.
End Impl__crate_fmt_Debug_for_Person.

Module Unit.
  Inductive t : Set := Build.
End Unit.
Definition Unit := Unit.t.

Module Pair.
  Record t : Set := { _ : i32; _ : f32;}.
  
  Global Instance Get_0 : Notation.Dot 0 := {
    Notation.dot '(Build_t x0 _) := x0;
  }.
  Global Instance Get_1 : Notation.Dot 1 := {
    Notation.dot '(Build_t _ x1) := x1;
  }.
End Pair.
Definition Pair := Pair.t.

Module Point.
  Record t : Set := {
    x : f32;
    y : f32;
  }.
  
  Global Instance Get_x : Notation.Dot "x" := {
    Notation.dot '(Build_t x0 _) := x0;
  }.
  Global Instance Get_y : Notation.Dot "y" := {
    Notation.dot '(Build_t _ x1) := x1;
  }.
End Point.
Definition Point : Set := Point.t.

Module Rectangle.
  Record t : Set := {
    top_left : Point;
    bottom_right : Point;
  }.
  
  Global Instance Get_top_left : Notation.Dot "top_left" := {
    Notation.dot '(Build_t x0 _) := x0;
  }.
  Global Instance Get_bottom_right : Notation.Dot "bottom_right" := {
    Notation.dot '(Build_t _ x1) := x1;
  }.
End Rectangle.
Definition Rectangle : Set := Rectangle.t.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  let name := String::["from"] "Peter" in
  let age := 27 in
  let peter := {| Person.name := name; Person.age := age; |} in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ ""; "
" ]
          [ format_argument::["new_debug"] peter ]) in
    tt in
  let point := {| Point.x := 10 (* 10.3 *); Point.y := 0 (* 0.4 *); |} in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "point coordinates: ("; ", "; ")
" ]
          [
            format_argument::["new_display"] point.["x"];
            format_argument::["new_display"] point.["y"]
          ]) in
    tt in
  let bottom_right := {| Point.x := 5 (* 5.2 *); |} with point in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "second point: ("; ", "; ")
" ]
          [
            format_argument::["new_display"] bottom_right.["x"];
            format_argument::["new_display"] bottom_right.["y"]
          ]) in
    tt in
  let '{| Point.x := left_edge; Point.y := top_edge; |} := point in
  let _rectangle :=
    {|
      Rectangle.top_left := {| Point.x := left_edge; Point.y := top_edge; |};
      Rectangle.bottom_right := bottom_right;
    |} in
  let _unit := Unit.Build in
  let pair := Pair.Build_t 1 0 (* 0.1 *) in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "pair contains "; " and "; "
" ]
          [
            format_argument::["new_debug"] (pair.[0]);
            format_argument::["new_debug"] (pair.[1])
          ]) in
    tt in
  let 'Pair.Build_t integer decimal := pair in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "pair contains "; " and "; "
" ]
          [
            format_argument::["new_debug"] integer;
            format_argument::["new_debug"] decimal
          ]) in
    tt in
  tt.
