(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Point.
Section Point.
  Record t : Set := {
    x : f64.t;
    y : f64.t;
  }.
  
  Global Instance Get_x : Notations.Dot "x" := {
    Notations.dot := Ref.map (fun x' => x'.(x)) (fun v x' => x' <| x := v |>);
  }.
  Global Instance Get_AF_x : Notations.DoubleColon t "x" := {
    Notations.double_colon (x' : M.Val t) := x'.["x"];
  }.
  Global Instance Get_y : Notations.Dot "y" := {
    Notations.dot := Ref.map (fun x => x.(y)) (fun v x => x <| y := v |>);
  }.
  Global Instance Get_AF_y : Notations.DoubleColon t "y" := {
    Notations.double_colon (x : M.Val t) := x.["y"];
  }.
End Point.
End Point.

Module  Impl_associated_functions_and_methods_Point_t.
Section Impl_associated_functions_and_methods_Point_t.
  Ltac Self := exact associated_functions_and_methods.Point.t.
  
  (*
      fn origin() -> Point {
          Point { y: 0.0, x: 1.0 }
      }
  *)
  Definition origin : M associated_functions_and_methods.Point.t :=
    M.function_body
      (let* α0 : M.Val f64.t := M.alloc 0 (* 0.0 *) in
      let* α1 := M.read α0 in
      let* α2 : M.Val f64.t := M.alloc 1 (* 1.0 *) in
      let* α3 := M.read α2 in
      M.alloc
        {|
          associated_functions_and_methods.Point.y := α1;
          associated_functions_and_methods.Point.x := α3;
        |}).
  
  Global Instance AssociatedFunction_origin :
    Notations.DoubleColon ltac:(Self) "origin" := {
    Notations.double_colon := origin;
  }.
  
  (*
      fn new(x: f64, y: f64) -> Point {
          Point { x: x, y: y }
      }
  *)
  Definition new
      (x : M.Val f64.t)
      (y : M.Val f64.t)
      : M associated_functions_and_methods.Point.t :=
    M.function_body
      (let* α0 := M.read x in
      let* α1 := M.read y in
      M.alloc
        {|
          associated_functions_and_methods.Point.x := α0;
          associated_functions_and_methods.Point.y := α1;
        |}).
  
  Global Instance AssociatedFunction_new :
    Notations.DoubleColon ltac:(Self) "new" := {
    Notations.double_colon := new;
  }.
End Impl_associated_functions_and_methods_Point_t.
End Impl_associated_functions_and_methods_Point_t.

Module  Rectangle.
Section Rectangle.
  Record t : Set := {
    p1 : associated_functions_and_methods.Point.t;
    p2 : associated_functions_and_methods.Point.t;
  }.
  
  Global Instance Get_p1 : Notations.Dot "p1" := {
    Notations.dot := Ref.map (fun x => x.(p1)) (fun v x => x <| p1 := v |>);
  }.
  Global Instance Get_AF_p1 : Notations.DoubleColon t "p1" := {
    Notations.double_colon (x : M.Val t) := x.["p1"];
  }.
  Global Instance Get_p2 : Notations.Dot "p2" := {
    Notations.dot := Ref.map (fun x => x.(p2)) (fun v x => x <| p2 := v |>);
  }.
  Global Instance Get_AF_p2 : Notations.DoubleColon t "p2" := {
    Notations.double_colon (x : M.Val t) := x.["p2"];
  }.
End Rectangle.
End Rectangle.

Module  Impl_associated_functions_and_methods_Rectangle_t.
Section Impl_associated_functions_and_methods_Rectangle_t.
  Ltac Self := exact associated_functions_and_methods.Rectangle.t.
  
  (*
      fn get_p1(&self) -> Point {
          self.p1
      }
  *)
  Definition get_p1
      (self : M.Val (ref ltac:(Self)))
      : M associated_functions_and_methods.Point.t :=
    M.function_body
      (let* α0 : M.Val associated_functions_and_methods.Rectangle.t :=
        deref self in
      M.pure α0.["p1"]).
  
  Global Instance AssociatedFunction_get_p1 :
    Notations.DoubleColon ltac:(Self) "get_p1" := {
    Notations.double_colon := get_p1;
  }.
  
  (*
      fn area(&self) -> f64 {
          // `self` gives access to the struct fields via the dot operator
          let Point { x: x1, y: y1 } = self.p1;
          let Point { x: x2, y: y2 } = self.p2;
  
          // `abs` is a `f64` method that returns the absolute value of the
          // caller
          ((x1 - x2) * (y1 - y2)).abs()
      }
  *)
  Definition area (self : M.Val (ref ltac:(Self))) : M f64.t :=
    M.function_body
      (let* '{|
            associated_functions_and_methods.Point.x := x1;
            associated_functions_and_methods.Point.y := y1;
          |} :
          M.Val associated_functions_and_methods.Point.t :=
        let* α0 : M.Val associated_functions_and_methods.Rectangle.t :=
          deref self in
        M.copy α0.["p1"] in
      let* '{|
            associated_functions_and_methods.Point.x := x2;
            associated_functions_and_methods.Point.y := y2;
          |} :
          M.Val associated_functions_and_methods.Point.t :=
        let* α0 : M.Val associated_functions_and_methods.Rectangle.t :=
          deref self in
        M.copy α0.["p2"] in
      let* α0 : M.Val f64.t := BinOp.sub x1 x2 in
      let* α1 : M.Val f64.t := BinOp.sub y1 y2 in
      let* α2 : M.Val f64.t := BinOp.mul α0 α1 in
      let* α3 := f64.t::["abs"] α2 in
      M.alloc α3).
  
  Global Instance AssociatedFunction_area :
    Notations.DoubleColon ltac:(Self) "area" := {
    Notations.double_colon := area;
  }.
  
  (*
      fn perimeter(&self) -> f64 {
          let Point { x: x1, y: y1 } = self.p1;
          let Point { x: x2, y: y2 } = self.p2;
  
          2.0 * ((x1 - x2).abs() + (y1 - y2).abs())
      }
  *)
  Definition perimeter (self : M.Val (ref ltac:(Self))) : M f64.t :=
    M.function_body
      (let* '{|
            associated_functions_and_methods.Point.x := x1;
            associated_functions_and_methods.Point.y := y1;
          |} :
          M.Val associated_functions_and_methods.Point.t :=
        let* α0 : M.Val associated_functions_and_methods.Rectangle.t :=
          deref self in
        M.copy α0.["p1"] in
      let* '{|
            associated_functions_and_methods.Point.x := x2;
            associated_functions_and_methods.Point.y := y2;
          |} :
          M.Val associated_functions_and_methods.Point.t :=
        let* α0 : M.Val associated_functions_and_methods.Rectangle.t :=
          deref self in
        M.copy α0.["p2"] in
      let* α0 : M.Val f64.t := M.alloc 2 (* 2.0 *) in
      let* α1 : M.Val f64.t := BinOp.sub x1 x2 in
      let* α2 := f64.t::["abs"] α1 in
      let* α3 : M.Val f64.t := M.alloc α2 in
      let* α4 : M.Val f64.t := BinOp.sub y1 y2 in
      let* α5 := f64.t::["abs"] α4 in
      let* α6 : M.Val f64.t := M.alloc α5 in
      let* α7 : M.Val f64.t := BinOp.add α3 α6 in
      BinOp.mul α0 α7).
  
  Global Instance AssociatedFunction_perimeter :
    Notations.DoubleColon ltac:(Self) "perimeter" := {
    Notations.double_colon := perimeter;
  }.
  
  (*
      fn translate(&mut self, x: f64, y: f64) {
          self.p1.x += x;
          self.p2.x += x;
  
          self.p1.y += y;
          self.p2.y += y;
      }
  *)
  Definition translate
      (self : M.Val (mut_ref ltac:(Self)))
      (x : M.Val f64.t)
      (y : M.Val f64.t)
      : M unit :=
    M.function_body
      (let* _ : M.Val unit :=
        let* α0 : M.Val associated_functions_and_methods.Rectangle.t :=
          deref self in
        assign_op add α0.["p1"].["x"] x in
      let* _ : M.Val unit :=
        let* α0 : M.Val associated_functions_and_methods.Rectangle.t :=
          deref self in
        assign_op add α0.["p2"].["x"] x in
      let* _ : M.Val unit :=
        let* α0 : M.Val associated_functions_and_methods.Rectangle.t :=
          deref self in
        assign_op add α0.["p1"].["y"] y in
      let* _ : M.Val unit :=
        let* α0 : M.Val associated_functions_and_methods.Rectangle.t :=
          deref self in
        assign_op add α0.["p2"].["y"] y in
      M.alloc tt).
  
  Global Instance AssociatedFunction_translate :
    Notations.DoubleColon ltac:(Self) "translate" := {
    Notations.double_colon := translate;
  }.
End Impl_associated_functions_and_methods_Rectangle_t.
End Impl_associated_functions_and_methods_Rectangle_t.

Module  Pair.
Section Pair.
  Record t : Set := {
    x0 : alloc.boxed.Box.t i32.t alloc.boxed.Box.Default.A;
    x1 : alloc.boxed.Box.t i32.t alloc.boxed.Box.Default.A;
  }.
  
  Global Instance Get_0 : Notations.Dot "0" := {
    Notations.dot := Ref.map (fun x => x.(x0)) (fun v x => x <| x0 := v |>);
  }.
  Global Instance Get_1 : Notations.Dot "1" := {
    Notations.dot := Ref.map (fun x => x.(x1)) (fun v x => x <| x1 := v |>);
  }.
End Pair.
End Pair.

Module  Impl_associated_functions_and_methods_Pair_t.
Section Impl_associated_functions_and_methods_Pair_t.
  Ltac Self := exact associated_functions_and_methods.Pair.t.
  
  (*
      fn destroy(self) {
          // Destructure `self`
          let Pair(first, second) = self;
  
          println!("Destroying Pair({}, {})", first, second);
  
          // `first` and `second` go out of scope and get freed
      }
  *)
  Definition destroy (self : M.Val ltac:(Self)) : M unit :=
    M.function_body
      (let* 'associated_functions_and_methods.Pair.Build_t first second :
          M.Val associated_functions_and_methods.Pair.t :=
        M.copy self in
      let* _ : M.Val unit :=
        let* _ : M.Val unit :=
          let* α0 : M.Val (array (ref str.t)) :=
            M.alloc [ mk_str "Destroying Pair("; mk_str ", "; mk_str ")
" ] in
          let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
          let* α2 : M.Val (ref (slice (ref str.t))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 :
              M.Val (ref (alloc.boxed.Box.t i32.t alloc.alloc.Global.t)) :=
            borrow first in
          let* α4 := core.fmt.rt.Argument.t::["new_display"] α3 in
          let* α5 : M.Val core.fmt.rt.Argument.t := M.alloc α4 in
          let* α6 :
              M.Val (ref (alloc.boxed.Box.t i32.t alloc.alloc.Global.t)) :=
            borrow second in
          let* α7 := core.fmt.rt.Argument.t::["new_display"] α6 in
          let* α8 : M.Val core.fmt.rt.Argument.t := M.alloc α7 in
          let* α9 : M.Val (array core.fmt.rt.Argument.t) :=
            M.alloc [ α5; α8 ] in
          let* α10 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α9 in
          let* α11 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
            pointer_coercion "Unsize" α10 in
          let* α12 := core.fmt.Arguments.t::["new_v1"] α2 α11 in
          let* α13 : M.Val core.fmt.Arguments.t := M.alloc α12 in
          let* α14 := std.io.stdio._print α13 in
          M.alloc α14 in
        M.alloc tt in
      M.alloc tt).
  
  Global Instance AssociatedFunction_destroy :
    Notations.DoubleColon ltac:(Self) "destroy" := {
    Notations.double_colon := destroy;
  }.
End Impl_associated_functions_and_methods_Pair_t.
End Impl_associated_functions_and_methods_Pair_t.

(*
fn main() {
    let rectangle = Rectangle {
        // Associated functions are called using double colons
        p1: Point::origin(),
        p2: Point::new(3.0, 4.0),
    };

    // Methods are called using the dot operator
    // Note that the first argument `&self` is implicitly passed, i.e.
    // `rectangle.perimeter()` === `Rectangle::perimeter(&rectangle)`
    println!("Rectangle perimeter: {}", rectangle.perimeter());
    println!("Rectangle area: {}", rectangle.area());

    let mut square = Rectangle {
        p1: Point::origin(),
        p2: Point::new(1.0, 1.0),
    };

    // Error! `rectangle` is immutable, but this method requires a mutable
    // object
    //rectangle.translate(1.0, 0.0);
    // TODO ^ Try uncommenting this line

    // Okay! Mutable objects can call mutable methods
    square.translate(1.0, 1.0);

    let pair = Pair(Box::new(1), Box::new(2));

    pair.destroy();

    // Error! Previous `destroy` call "consumed" `pair`
    //pair.destroy();
    // TODO ^ Try uncommenting this line
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* rectangle : M.Val associated_functions_and_methods.Rectangle.t :=
      let* α0 := associated_functions_and_methods.Point.t::["origin"] in
      let* α1 : M.Val f64.t := M.alloc 3 (* 3.0 *) in
      let* α2 : M.Val f64.t := M.alloc 4 (* 4.0 *) in
      let* α3 := associated_functions_and_methods.Point.t::["new"] α1 α2 in
      M.alloc
        {|
          associated_functions_and_methods.Rectangle.p1 := α0;
          associated_functions_and_methods.Rectangle.p2 := α3;
        |} in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Rectangle perimeter: "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : M.Val (ref associated_functions_and_methods.Rectangle.t) :=
          borrow rectangle in
        let* α4 :=
          associated_functions_and_methods.Rectangle.t::["perimeter"] α3 in
        let* α5 : M.Val f64.t := M.alloc α4 in
        let* α6 : M.Val (ref f64.t) := borrow α5 in
        let* α7 := core.fmt.rt.Argument.t::["new_display"] α6 in
        let* α8 : M.Val core.fmt.rt.Argument.t := M.alloc α7 in
        let* α9 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α8 ] in
        let* α10 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α9 in
        let* α11 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments.t::["new_v1"] α2 α11 in
        let* α13 : M.Val core.fmt.Arguments.t := M.alloc α12 in
        let* α14 := std.io.stdio._print α13 in
        M.alloc α14 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Rectangle area: "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : M.Val (ref associated_functions_and_methods.Rectangle.t) :=
          borrow rectangle in
        let* α4 := associated_functions_and_methods.Rectangle.t::["area"] α3 in
        let* α5 : M.Val f64.t := M.alloc α4 in
        let* α6 : M.Val (ref f64.t) := borrow α5 in
        let* α7 := core.fmt.rt.Argument.t::["new_display"] α6 in
        let* α8 : M.Val core.fmt.rt.Argument.t := M.alloc α7 in
        let* α9 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α8 ] in
        let* α10 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α9 in
        let* α11 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments.t::["new_v1"] α2 α11 in
        let* α13 : M.Val core.fmt.Arguments.t := M.alloc α12 in
        let* α14 := std.io.stdio._print α13 in
        M.alloc α14 in
      M.alloc tt in
    let* square : M.Val associated_functions_and_methods.Rectangle.t :=
      let* α0 := associated_functions_and_methods.Point.t::["origin"] in
      let* α1 : M.Val f64.t := M.alloc 1 (* 1.0 *) in
      let* α2 : M.Val f64.t := M.alloc 1 (* 1.0 *) in
      let* α3 := associated_functions_and_methods.Point.t::["new"] α1 α2 in
      M.alloc
        {|
          associated_functions_and_methods.Rectangle.p1 := α0;
          associated_functions_and_methods.Rectangle.p2 := α3;
        |} in
    let* _ : M.Val unit :=
      let* α0 : M.Val (mut_ref associated_functions_and_methods.Rectangle.t) :=
        borrow_mut square in
      let* α1 : M.Val f64.t := M.alloc 1 (* 1.0 *) in
      let* α2 : M.Val f64.t := M.alloc 1 (* 1.0 *) in
      let* α3 :=
        associated_functions_and_methods.Rectangle.t::["translate"] α0 α1 α2 in
      M.alloc α3 in
    let* pair : M.Val associated_functions_and_methods.Pair.t :=
      let* α0 : M.Val i32.t := M.alloc 1 in
      let* α1 := (alloc.boxed.Box.t i32.t alloc.alloc.Global.t)::["new"] α0 in
      let* α2 : M.Val i32.t := M.alloc 2 in
      let* α3 := (alloc.boxed.Box.t i32.t alloc.alloc.Global.t)::["new"] α2 in
      M.alloc (associated_functions_and_methods.Pair.Build_t α1 α3) in
    let* _ : M.Val unit :=
      let* α0 := associated_functions_and_methods.Pair.t::["destroy"] pair in
      M.alloc α0 in
    M.alloc tt).
