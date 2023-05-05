(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module HasArea.
  Class Trait (Self : Set) : Set := {
    area : (ref Self) -> (M f64);
  }.
  
  Global Instance Method_area `(Trait) : Notation.Dot "area" := {
    Notation.dot := area;
  }.
End HasArea.

Module Impl_HasArea_for_Rectangle.
  Definition Self := Rectangle.
  
  Definition area (self : ref Self) :=
    let return_type := f64 in
    ltac:(function (
      self.["length"].["mul"](| self.["height"] |)
    : return_type)).
  
  Global Instance Method_area : Notation.Dot "area" := {
    Notation.dot := area;
  }.
  
  Global Instance I : HasArea.Trait Self := {
    HasArea.area := area;
  }.
End Impl_HasArea_for_Rectangle.

Module Rectangle.
  Record t : Set := {
    length : f64;
    height : f64;
  }.
  
  Global Instance Get_length : Notation.Dot "length" := {
    Notation.dot '(Build_t x0 _) := x0;
  }.
  Global Instance Get_height : Notation.Dot "height" := {
    Notation.dot '(Build_t _ x1) := x1;
  }.
End Rectangle.
Definition Rectangle : Set := Rectangle.t.

Module Impl__crate_fmt_Debug_for_Rectangle.
  Definition Self := Rectangle.
  
  Definition fmt (self : ref Self) (f : mut_ref _crate.fmt.Formatter) :=
    let return_type := _crate.fmt.Result in
    ltac:(function (
      _crate.fmt.Formatter::["debug_struct_field2_finish"](|
        f,
        "Rectangle",
        "length",
        self.["length"],
        "height",
        self.["height"]
      |)
    : return_type)).
  
  Global Instance Method_fmt : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : _crate.fmt.Debug.Trait Self := {
    _crate.fmt.Debug.fmt := fmt;
  }.
End Impl__crate_fmt_Debug_for_Rectangle.

Module Triangle.
  Record t : Set := {
    length : f64;
    height : f64;
  }.
  
  Global Instance Get_length : Notation.Dot "length" := {
    Notation.dot '(Build_t x0 _) := x0;
  }.
  Global Instance Get_height : Notation.Dot "height" := {
    Notation.dot '(Build_t _ x1) := x1;
  }.
End Triangle.
Definition Triangle : Set := Triangle.t.

Definition print_debug {T : Set} `{Debug.Trait T} (t : ref T) :=
  let return_type := unit in
  ltac:(function (
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ ""; "
" ],
            [ format_argument::["new_debug"](| t |) ]
          |)
        |) in
      tt in
    tt
  : return_type)).

Definition area {T : Set} `{HasArea.Trait T} (t : ref T) :=
  let return_type := f64 in
  ltac:(function (
    t.["area"](||)
  : return_type)).

Definition main :=
  let return_type := unit in
  ltac:(function (
    let rectangle :=
      {| Rectangle.length := 3 (* 3.0 *); Rectangle.height := 4 (* 4.0 *); |} in
    let _triangle :=
      {| Triangle.length := 3 (* 3.0 *); Triangle.height := 4 (* 4.0 *); |} in
    let '_ := print_debug(| rectangle |) in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "Area: "; "
" ],
            [ format_argument::["new_display"](| rectangle.["area"](||) |) ]
          |)
        |) in
      tt in
    tt
  : return_type)).
