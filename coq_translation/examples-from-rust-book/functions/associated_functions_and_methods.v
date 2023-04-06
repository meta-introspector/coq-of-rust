(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

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

Module ImplPoint.
  Definition Self := Point.
  
  Definition origin (_ : unit) : Point :=
    {| Point.y := 0 (* 0.0 *); Point.x := 1 (* 1.0 *); |}.
  
  Global Instance AssociatedFunction_origin :
    Notation.DoubleColon Self "origin" := {|
    Notation.double_colon := origin;
  |}.
  
  Definition new (x : f64) (y : f64) : Point :=
    {| Point.x := x; Point.y := y; |}.
  
  Global Instance AssociatedFunction_new : Notation.DoubleColon Self "new" := {|
    Notation.double_colon := new;
  |}.
End ImplPoint.

Module Rectangle.
  Record t : Set := {
    p1 : Point;
    p2 : Point;
  }.
  
  Global Instance Get_p1 : Notation.Dot "p1" := {|
    Notation.dot '(Build_t x0 _) := x0;
  |}.
  Global Instance Get_p2 : Notation.Dot "p2" := {|
    Notation.dot '(Build_t _ x1) := x1;
  |}.
End Rectangle.
Definition Rectangle : Set := Rectangle.t.

Module ImplRectangle.
  Definition Self := Rectangle.
  
  Definition get_p1 (self : ref Self) : Point := self.["p1"].
  
  Global Instance Method_get_p1 : Notation.Dot "get_p1" := {|
    Notation.dot := get_p1;
  |}.
  
  Definition area (self : ref Self) : f64 :=
    let Point {| Point.x := x1; Point.y := y1; |} := self.["p1"] in
    let Point {| Point.x := x2; Point.y := y2; |} := self.["p2"] in
    (mul (sub x1 x2) (sub y1 y2)).["abs"].
  
  Global Instance Method_area : Notation.Dot "area" := {|
    Notation.dot := area;
  |}.
  
  Definition perimeter (self : ref Self) : f64 :=
    let Point {| Point.x := x1; Point.y := y1; |} := self.["p1"] in
    let Point {| Point.x := x2; Point.y := y2; |} := self.["p2"] in
    mul 2 (* 2.0 *) (add (sub x1 x2).["abs"] (sub y1 y2).["abs"]).
  
  Global Instance Method_perimeter : Notation.Dot "perimeter" := {|
    Notation.dot := perimeter;
  |}.
  
  Definition translate (self : mut_ref Self) (x : f64) (y : f64) :=
    assign self.["p1"].["x"] (add self.["p1"].["x"] x) ;;
    assign self.["p2"].["x"] (add self.["p2"].["x"] x) ;;
    assign self.["p1"].["y"] (add self.["p1"].["y"] y) ;;
    assign self.["p2"].["y"] (add self.["p2"].["y"] y) ;;
    tt.
  
  Global Instance Method_translate : Notation.Dot "translate" := {|
    Notation.dot := translate;
  |}.
End ImplRectangle.

Module Pair.
  Inductive t : Set := Build (_ : Box) (_ : Box).
  
  Global Instance Get_0 : IndexedField.Class t 0 _ := {|
    IndexedField.get '(Build x0 _) := x0;
  |}.
  Global Instance Get_1 : IndexedField.Class t 1 _ := {|
    IndexedField.get '(Build _ x1) := x1;
  |}.
End Pair.
Definition Pair := Pair.t.

Module ImplPair.
  Definition Self := Pair.
  
  Definition destroy (self : Self) :=
    let Pair (first, second) := self in
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"]
        [ "Destroying Pair("; ", "; ")\n" ]
        [
          _crate.fmt.ArgumentV1::["new_display"] first;
          _crate.fmt.ArgumentV1::["new_display"] second
        ]) ;;
    tt ;;
    tt.
  
  Global Instance Method_destroy : Notation.Dot "destroy" := {|
    Notation.dot := destroy;
  |}.
End ImplPair.

Definition main (_ : unit) : unit :=
  let rectangle :=
    {|
      Rectangle.p1 := Point::["origin"] tt;
      Rectangle.p2 := Point::["new"] 3 (* 3.0 *) 4 (* 4.0 *);
    |} in
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "Rectangle perimeter: "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_display"] rectangle.["perimeter"] ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "Rectangle area: "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_display"] rectangle.["area"] ]) ;;
  tt ;;
  let square :=
    {|
      Rectangle.p1 := Point::["origin"] tt;
      Rectangle.p2 := Point::["new"] 1 (* 1.0 *) 1 (* 1.0 *);
    |} in
  square.["translate"] 1 (* 1.0 *) 1 (* 1.0 *) ;;
  let pair := Pair.Build (Box::["new"] 1) (Box::["new"] 2) in
  pair.["destroy"] ;;
  tt.
