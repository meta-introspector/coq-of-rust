(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Point.
  Unset Primitive Projections.
  Record t : Set := {
    x : f64;
    y : f64;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_x : Notation.Dot "x" := {
    Notation.dot '(Build_t x0 _) := x0;
  }.
  Global Instance Get_AF_x : Notation.DoubleColon t "x" := {
    Notation.double_colon '(Build_t x0 _) := x0;
  }.
  Global Instance Get_y : Notation.Dot "y" := {
    Notation.dot '(Build_t _ x1) := x1;
  }.
  Global Instance Get_AF_y : Notation.DoubleColon t "y" := {
    Notation.double_colon '(Build_t _ x1) := x1;
  }.
End Point.
Definition Point : Set := Point.t.

Module Impl_associated_functions_and_methods_Point.
  Definition Self := associated_functions_and_methods.Point.
  
  Definition origin
      `{H' : State.Trait}
      : M (H := H') associated_functions_and_methods.Point :=
    Pure
      {|
        associated_functions_and_methods.Point.y := 0 (* 0.0 *);
        associated_functions_and_methods.Point.x := 1 (* 1.0 *);
      |}.
  
  Global Instance AssociatedFunction_origin `{H' : State.Trait} :
    Notation.DoubleColon Self "origin" := {
    Notation.double_colon := origin;
  }.
  
  Definition new
      `{H' : State.Trait}
      (x : f64)
      (y : f64)
      : M (H := H') associated_functions_and_methods.Point :=
    Pure
      {|
        associated_functions_and_methods.Point.x := x;
        associated_functions_and_methods.Point.y := y;
      |}.
  
  Global Instance AssociatedFunction_new `{H' : State.Trait} :
    Notation.DoubleColon Self "new" := {
    Notation.double_colon := new;
  }.
End Impl_associated_functions_and_methods_Point.

Module Rectangle.
  Unset Primitive Projections.
  Record t : Set := {
    p1 : associated_functions_and_methods.Point;
    p2 : associated_functions_and_methods.Point;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_p1 : Notation.Dot "p1" := {
    Notation.dot '(Build_t x0 _) := x0;
  }.
  Global Instance Get_AF_p1 : Notation.DoubleColon t "p1" := {
    Notation.double_colon '(Build_t x0 _) := x0;
  }.
  Global Instance Get_p2 : Notation.Dot "p2" := {
    Notation.dot '(Build_t _ x1) := x1;
  }.
  Global Instance Get_AF_p2 : Notation.DoubleColon t "p2" := {
    Notation.double_colon '(Build_t _ x1) := x1;
  }.
End Rectangle.
Definition Rectangle : Set := Rectangle.t.

Module Impl_associated_functions_and_methods_Rectangle.
  Definition Self := associated_functions_and_methods.Rectangle.
  
  Definition get_p1
      `{H' : State.Trait}
      (self : ref Self)
      : M (H := H') associated_functions_and_methods.Point :=
    Pure self.["p1"].
  
  Global Instance Method_get_p1 `{H' : State.Trait} : Notation.Dot "get_p1" := {
    Notation.dot := get_p1;
  }.
  
  Definition area `{H' : State.Trait} (self : ref Self) : M (H := H') f64 :=
    let
        '{|
          associated_functions_and_methods.Point.x := x1;
          associated_functions_and_methods.Point.y := y1;
        |} :=
      self.["p1"] in
    let
        '{|
          associated_functions_and_methods.Point.x := x2;
          associated_functions_and_methods.Point.y := y2;
        |} :=
      self.["p2"] in
    let* α0 := x1.["sub"] x2 in
    let* α1 := y1.["sub"] y2 in
    let* α2 := α0.["mul"] α1 in
    α2.["abs"].
  
  Global Instance Method_area `{H' : State.Trait} : Notation.Dot "area" := {
    Notation.dot := area;
  }.
  
  Definition perimeter
      `{H' : State.Trait}
      (self : ref Self)
      : M (H := H') f64 :=
    let
        '{|
          associated_functions_and_methods.Point.x := x1;
          associated_functions_and_methods.Point.y := y1;
        |} :=
      self.["p1"] in
    let
        '{|
          associated_functions_and_methods.Point.x := x2;
          associated_functions_and_methods.Point.y := y2;
        |} :=
      self.["p2"] in
    let* α0 := x1.["sub"] x2 in
    let* α1 := α0.["abs"] in
    let* α2 := y1.["sub"] y2 in
    let* α3 := α2.["abs"] in
    let* α4 := α1.["add"] α3 in
    2 (* 2.0 *).["mul"] α4.
  
  Global Instance Method_perimeter `{H' : State.Trait} :
    Notation.Dot "perimeter" := {
    Notation.dot := perimeter;
  }.
  
  Definition translate
      `{H' : State.Trait}
      (self : mut_ref Self)
      (x : f64)
      (y : f64)
      : M (H := H') unit :=
    let* _ := self.["p1"].["x"].["add_assign"] x in
    let* _ := self.["p2"].["x"].["add_assign"] x in
    let* _ := self.["p1"].["y"].["add_assign"] y in
    let* _ := self.["p2"].["y"].["add_assign"] y in
    Pure tt.
  
  Global Instance Method_translate `{H' : State.Trait} :
    Notation.Dot "translate" := {
    Notation.dot := translate;
  }.
End Impl_associated_functions_and_methods_Rectangle.

Module Pair.
  Unset Primitive Projections.
  Record t : Set := {
    _ : alloc.boxed.Box i32 alloc.boxed.Box.Default.A;
    _ : alloc.boxed.Box i32 alloc.boxed.Box.Default.A;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_0 : Notation.Dot 0 := {
    Notation.dot '(Build_t x0 _) := x0;
  }.
  Global Instance Get_1 : Notation.Dot 1 := {
    Notation.dot '(Build_t _ x1) := x1;
  }.
End Pair.
Definition Pair := @Pair.t.

Module Impl_associated_functions_and_methods_Pair.
  Definition Self := associated_functions_and_methods.Pair.
  
  Definition destroy `{H' : State.Trait} (self : Self) : M (H := H') unit :=
    let 'associated_functions_and_methods.Pair.Build_t first second := self in
    let* _ :=
      let* _ :=
        let* α0 := format_argument::["new_display"] (addr_of first) in
        let* α1 := format_argument::["new_display"] (addr_of second) in
        let* α2 :=
          format_arguments::["new_v1"]
            (addr_of [ "Destroying Pair("; ", "; ")
" ])
            (addr_of [ α0; α1 ]) in
        std.io.stdio._print α2 in
      Pure tt in
    Pure tt.
  
  Global Instance Method_destroy `{H' : State.Trait} :
    Notation.Dot "destroy" := {
    Notation.dot := destroy;
  }.
End Impl_associated_functions_and_methods_Pair.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H' : State.Trait} : M (H := H') unit :=
  let* rectangle :=
    let* α0 := associated_functions_and_methods.Point::["origin"] in
    let* α1 :=
      associated_functions_and_methods.Point::["new"] 3 (* 3.0 *) 4 (* 4.0 *) in
    Pure
      {|
        associated_functions_and_methods.Rectangle.p1 := α0;
        associated_functions_and_methods.Rectangle.p2 := α1;
      |} in
  let* _ :=
    let* _ :=
      let* α0 := rectangle.["perimeter"] in
      let* α1 := format_argument::["new_display"] (addr_of α0) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ "Rectangle perimeter: "; "
" ])
          (addr_of [ α1 ]) in
      std.io.stdio._print α2 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := rectangle.["area"] in
      let* α1 := format_argument::["new_display"] (addr_of α0) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ "Rectangle area: "; "
" ])
          (addr_of [ α1 ]) in
      std.io.stdio._print α2 in
    Pure tt in
  let* square :=
    let* α0 := associated_functions_and_methods.Point::["origin"] in
    let* α1 :=
      associated_functions_and_methods.Point::["new"] 1 (* 1.0 *) 1 (* 1.0 *) in
    Pure
      {|
        associated_functions_and_methods.Rectangle.p1 := α0;
        associated_functions_and_methods.Rectangle.p2 := α1;
      |} in
  let* _ := square.["translate"] 1 (* 1.0 *) 1 (* 1.0 *) in
  let* pair :=
    let* α0 := (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] 1 in
    let* α1 := (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] 2 in
    Pure (associated_functions_and_methods.Pair.Build_t α0 α1) in
  let* _ := pair.["destroy"] in
  Pure tt.
