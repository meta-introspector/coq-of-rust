(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Point.
Section Point.
  Record t : Set := {
    x : f64.t;
    y : f64.t;
  }.
  
  Global Instance Get_x : Notations.Dot "x" := {
    Notations.dot :=
      Ref.map (fun α => Some α.(x)) (fun β α => Some (α <| x := β |>));
  }.
  Global Instance Get_AF_x : Notations.DoubleColon t "x" := {
    Notations.double_colon (α : M.Val t) := α.["x"];
  }.
  Global Instance Get_y : Notations.Dot "y" := {
    Notations.dot :=
      Ref.map (fun α => Some α.(y)) (fun β α => Some (α <| y := β |>));
  }.
  Global Instance Get_AF_y : Notations.DoubleColon t "y" := {
    Notations.double_colon (α : M.Val t) := α.["y"];
  }.
End Point.
End Point.

Module  Impl_associated_functions_and_methods_Point_t.
Section Impl_associated_functions_and_methods_Point_t.
  Definition Self : Set := associated_functions_and_methods.Point.t.
  
  (*
      fn origin() -> Point {
          Point { y: 0.0, x: 1.0 }
      }
  *)
  Definition origin : M associated_functions_and_methods.Point.t :=
    let* α0 : f64.t := M.read UnsupportedLiteral in
    let* α1 : f64.t := M.read UnsupportedLiteral in
    M.pure
      {|
        associated_functions_and_methods.Point.y := α0;
        associated_functions_and_methods.Point.x := α1;
      |}.
  
  Global Instance AssociatedFunction_origin :
    Notations.DoubleColon Self "origin" := {
    Notations.double_colon := origin;
  }.
  
  (*
      fn new(x: f64, y: f64) -> Point {
          Point { x: x, y: y }
      }
  *)
  Definition new
      (x : f64.t)
      (y : f64.t)
      : M associated_functions_and_methods.Point.t :=
    let* x := M.alloc x in
    let* y := M.alloc y in
    let* α0 : f64.t := M.read x in
    let* α1 : f64.t := M.read y in
    M.pure
      {|
        associated_functions_and_methods.Point.x := α0;
        associated_functions_and_methods.Point.y := α1;
      |}.
  
  Global Instance AssociatedFunction_new : Notations.DoubleColon Self "new" := {
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
    Notations.dot :=
      Ref.map (fun α => Some α.(p1)) (fun β α => Some (α <| p1 := β |>));
  }.
  Global Instance Get_AF_p1 : Notations.DoubleColon t "p1" := {
    Notations.double_colon (α : M.Val t) := α.["p1"];
  }.
  Global Instance Get_p2 : Notations.Dot "p2" := {
    Notations.dot :=
      Ref.map (fun α => Some α.(p2)) (fun β α => Some (α <| p2 := β |>));
  }.
  Global Instance Get_AF_p2 : Notations.DoubleColon t "p2" := {
    Notations.double_colon (α : M.Val t) := α.["p2"];
  }.
End Rectangle.
End Rectangle.

Module  Impl_associated_functions_and_methods_Rectangle_t.
Section Impl_associated_functions_and_methods_Rectangle_t.
  Definition Self : Set := associated_functions_and_methods.Rectangle.t.
  
  (*
      fn get_p1(&self) -> Point {
          self.p1
      }
  *)
  Definition get_p1
      (self : ref Self)
      : M associated_functions_and_methods.Point.t :=
    let* self := M.alloc self in
    let* α0 : ref associated_functions_and_methods.Rectangle.t := M.read self in
    M.read (deref α0).["p1"].
  
  Global Instance AssociatedFunction_get_p1 :
    Notations.DoubleColon Self "get_p1" := {
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
  Definition area (self : ref Self) : M f64.t :=
    let* self := M.alloc self in
    let* α0 : ref associated_functions_and_methods.Rectangle.t := M.read self in
    let* α1 : M.Val f64.t :=
      match_operator
        (deref α0).["p1"]
        [
          fun γ =>
            (let* α0 := M.read γ in
            match α0 with
            |
                {|
                  associated_functions_and_methods.Point.x := _;
                  associated_functions_and_methods.Point.y := _;
                |}
                =>
              let γ0 := γ.["Point.x"] in
              let γ1 := γ.["Point.y"] in
              let* x1 := M.copy γ0 in
              let* y1 := M.copy γ1 in
              let* α0 : ref associated_functions_and_methods.Rectangle.t :=
                M.read self in
              match_operator
                (deref α0).["p2"]
                [
                  fun γ =>
                    (let* α0 := M.read γ in
                    match α0 with
                    |
                        {|
                          associated_functions_and_methods.Point.x := _;
                          associated_functions_and_methods.Point.y := _;
                        |}
                        =>
                      let γ0 := γ.["Point.x"] in
                      let γ1 := γ.["Point.y"] in
                      let* x2 := M.copy γ0 in
                      let* y2 := M.copy γ1 in
                      let* α0 : f64.t := M.read x1 in
                      let* α1 : f64.t := M.read x2 in
                      let* α2 : f64.t := BinOp.Panic.sub α0 α1 in
                      let* α3 : f64.t := M.read y1 in
                      let* α4 : f64.t := M.read y2 in
                      let* α5 : f64.t := BinOp.Panic.sub α3 α4 in
                      let* α6 : f64.t := BinOp.Panic.mul α2 α5 in
                      let* α7 : f64.t := M.call (f64.t::["abs"] α6) in
                      M.alloc α7
                    end) :
                    M (M.Val f64.t)
                ]
            end) :
            M (M.Val f64.t)
        ] in
    M.read α1.
  
  Global Instance AssociatedFunction_area :
    Notations.DoubleColon Self "area" := {
    Notations.double_colon := area;
  }.
  
  (*
      fn perimeter(&self) -> f64 {
          let Point { x: x1, y: y1 } = self.p1;
          let Point { x: x2, y: y2 } = self.p2;
  
          2.0 * ((x1 - x2).abs() + (y1 - y2).abs())
      }
  *)
  Definition perimeter (self : ref Self) : M f64.t :=
    let* self := M.alloc self in
    let* α0 : ref associated_functions_and_methods.Rectangle.t := M.read self in
    let* α1 : M.Val f64.t :=
      match_operator
        (deref α0).["p1"]
        [
          fun γ =>
            (let* α0 := M.read γ in
            match α0 with
            |
                {|
                  associated_functions_and_methods.Point.x := _;
                  associated_functions_and_methods.Point.y := _;
                |}
                =>
              let γ0 := γ.["Point.x"] in
              let γ1 := γ.["Point.y"] in
              let* x1 := M.copy γ0 in
              let* y1 := M.copy γ1 in
              let* α0 : ref associated_functions_and_methods.Rectangle.t :=
                M.read self in
              match_operator
                (deref α0).["p2"]
                [
                  fun γ =>
                    (let* α0 := M.read γ in
                    match α0 with
                    |
                        {|
                          associated_functions_and_methods.Point.x := _;
                          associated_functions_and_methods.Point.y := _;
                        |}
                        =>
                      let γ0 := γ.["Point.x"] in
                      let γ1 := γ.["Point.y"] in
                      let* x2 := M.copy γ0 in
                      let* y2 := M.copy γ1 in
                      let* α0 : f64.t := M.read UnsupportedLiteral in
                      let* α1 : f64.t := M.read x1 in
                      let* α2 : f64.t := M.read x2 in
                      let* α3 : f64.t := BinOp.Panic.sub α1 α2 in
                      let* α4 : f64.t := M.call (f64.t::["abs"] α3) in
                      let* α5 : f64.t := M.read y1 in
                      let* α6 : f64.t := M.read y2 in
                      let* α7 : f64.t := BinOp.Panic.sub α5 α6 in
                      let* α8 : f64.t := M.call (f64.t::["abs"] α7) in
                      let* α9 : f64.t := BinOp.Panic.add α4 α8 in
                      let* α10 : f64.t := BinOp.Panic.mul α0 α9 in
                      M.alloc α10
                    end) :
                    M (M.Val f64.t)
                ]
            end) :
            M (M.Val f64.t)
        ] in
    M.read α1.
  
  Global Instance AssociatedFunction_perimeter :
    Notations.DoubleColon Self "perimeter" := {
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
  Definition translate (self : mut_ref Self) (x : f64.t) (y : f64.t) : M unit :=
    let* self := M.alloc self in
    let* x := M.alloc x in
    let* y := M.alloc y in
    let* _ : M.Val unit :=
      let* β : M.Val f64.t :=
        let* α0 : mut_ref associated_functions_and_methods.Rectangle.t :=
          M.read self in
        M.pure (deref α0).["p1"].["x"] in
      let* α0 := M.read β in
      let* α1 : f64.t := M.read x in
      let* α2 := BinOp.Panic.add α0 α1 in
      assign β α2 in
    let* _ : M.Val unit :=
      let* β : M.Val f64.t :=
        let* α0 : mut_ref associated_functions_and_methods.Rectangle.t :=
          M.read self in
        M.pure (deref α0).["p2"].["x"] in
      let* α0 := M.read β in
      let* α1 : f64.t := M.read x in
      let* α2 := BinOp.Panic.add α0 α1 in
      assign β α2 in
    let* _ : M.Val unit :=
      let* β : M.Val f64.t :=
        let* α0 : mut_ref associated_functions_and_methods.Rectangle.t :=
          M.read self in
        M.pure (deref α0).["p1"].["y"] in
      let* α0 := M.read β in
      let* α1 : f64.t := M.read y in
      let* α2 := BinOp.Panic.add α0 α1 in
      assign β α2 in
    let* _ : M.Val unit :=
      let* β : M.Val f64.t :=
        let* α0 : mut_ref associated_functions_and_methods.Rectangle.t :=
          M.read self in
        M.pure (deref α0).["p2"].["y"] in
      let* α0 := M.read β in
      let* α1 : f64.t := M.read y in
      let* α2 := BinOp.Panic.add α0 α1 in
      assign β α2 in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
  
  Global Instance AssociatedFunction_translate :
    Notations.DoubleColon Self "translate" := {
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
    Notations.dot :=
      Ref.map (fun α => Some α.(x0)) (fun β α => Some (α <| x0 := β |>));
  }.
  Global Instance Get_1 : Notations.Dot "1" := {
    Notations.dot :=
      Ref.map (fun α => Some α.(x1)) (fun β α => Some (α <| x1 := β |>));
  }.
End Pair.
End Pair.

Module  Impl_associated_functions_and_methods_Pair_t.
Section Impl_associated_functions_and_methods_Pair_t.
  Definition Self : Set := associated_functions_and_methods.Pair.t.
  
  (*
      fn destroy(self) {
          // Destructure `self`
          let Pair(first, second) = self;
  
          println!("Destroying Pair({}, {})", first, second);
  
          // `first` and `second` go out of scope and get freed
      }
  *)
  Definition destroy (self : Self) : M unit :=
    let* self := M.alloc self in
    let* α0 : M.Val unit :=
      match_operator
        self
        [
          fun γ =>
            (let* α0 := M.read γ in
            match α0 with
            | associated_functions_and_methods.Pair.Build_t _ _ =>
              let γ0 := γ.["Pair.0"] in
              let γ1 := γ.["Pair.1"] in
              let* first := M.copy γ0 in
              let* second := M.copy γ1 in
              let* _ : M.Val unit :=
                let* _ : M.Val unit :=
                  let* α0 : ref str.t := M.read (mk_str "Destroying Pair(") in
                  let* α1 : ref str.t := M.read (mk_str ", ") in
                  let* α2 : ref str.t := M.read (mk_str ")\n") in
                  let* α3 : M.Val (array (ref str.t)) :=
                    M.alloc [ α0; α1; α2 ] in
                  let* α4 : M.Val (ref (array (ref str.t))) :=
                    M.alloc (borrow α3) in
                  let* α5 : ref (slice (ref str.t)) :=
                    M.read (pointer_coercion "Unsize" α4) in
                  let* α6 : core.fmt.rt.Argument.t :=
                    M.call
                      (core.fmt.rt.Argument.t::["new_display"]
                        (borrow first)) in
                  let* α7 : core.fmt.rt.Argument.t :=
                    M.call
                      (core.fmt.rt.Argument.t::["new_display"]
                        (borrow second)) in
                  let* α8 : M.Val (array core.fmt.rt.Argument.t) :=
                    M.alloc [ α6; α7 ] in
                  let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
                    M.alloc (borrow α8) in
                  let* α10 : ref (slice core.fmt.rt.Argument.t) :=
                    M.read (pointer_coercion "Unsize" α9) in
                  let* α11 : core.fmt.Arguments.t :=
                    M.call (core.fmt.Arguments.t::["new_v1"] α5 α10) in
                  let* α12 : unit := M.call (std.io.stdio._print α11) in
                  M.alloc α12 in
                M.alloc tt in
              M.alloc tt
            end) :
            M (M.Val unit)
        ] in
    M.read α0.
  
  Global Instance AssociatedFunction_destroy :
    Notations.DoubleColon Self "destroy" := {
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
  let* rectangle : M.Val associated_functions_and_methods.Rectangle.t :=
    let* α0 : associated_functions_and_methods.Point.t :=
      M.call associated_functions_and_methods.Point.t::["origin"] in
    let* α1 : f64.t := M.read UnsupportedLiteral in
    let* α2 : f64.t := M.read UnsupportedLiteral in
    let* α3 : associated_functions_and_methods.Point.t :=
      M.call (associated_functions_and_methods.Point.t::["new"] α1 α2) in
    M.alloc
      {|
        associated_functions_and_methods.Rectangle.p1 := α0;
        associated_functions_and_methods.Rectangle.p2 := α3;
      |} in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "Rectangle perimeter: ") in
      let* α1 : ref str.t := M.read (mk_str "\n") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : f64.t :=
        M.call
          (associated_functions_and_methods.Rectangle.t::["perimeter"]
            (borrow rectangle)) in
      let* α6 : M.Val f64.t := M.alloc α5 in
      let* α7 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α6)) in
      let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
      let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α8) in
      let* α10 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α9) in
      let* α11 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α4 α10) in
      let* α12 : unit := M.call (std.io.stdio._print α11) in
      M.alloc α12 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "Rectangle area: ") in
      let* α1 : ref str.t := M.read (mk_str "\n") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : f64.t :=
        M.call
          (associated_functions_and_methods.Rectangle.t::["area"]
            (borrow rectangle)) in
      let* α6 : M.Val f64.t := M.alloc α5 in
      let* α7 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α6)) in
      let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
      let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α8) in
      let* α10 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α9) in
      let* α11 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α4 α10) in
      let* α12 : unit := M.call (std.io.stdio._print α11) in
      M.alloc α12 in
    M.alloc tt in
  let* square : M.Val associated_functions_and_methods.Rectangle.t :=
    let* α0 : associated_functions_and_methods.Point.t :=
      M.call associated_functions_and_methods.Point.t::["origin"] in
    let* α1 : f64.t := M.read UnsupportedLiteral in
    let* α2 : f64.t := M.read UnsupportedLiteral in
    let* α3 : associated_functions_and_methods.Point.t :=
      M.call (associated_functions_and_methods.Point.t::["new"] α1 α2) in
    M.alloc
      {|
        associated_functions_and_methods.Rectangle.p1 := α0;
        associated_functions_and_methods.Rectangle.p2 := α3;
      |} in
  let* _ : M.Val unit :=
    let* α0 : f64.t := M.read UnsupportedLiteral in
    let* α1 : f64.t := M.read UnsupportedLiteral in
    let* α2 : unit :=
      M.call
        (associated_functions_and_methods.Rectangle.t::["translate"]
          (borrow_mut square)
          α0
          α1) in
    M.alloc α2 in
  let* pair : M.Val associated_functions_and_methods.Pair.t :=
    let* α0 : alloc.boxed.Box.t i32.t alloc.alloc.Global.t :=
      M.call
        ((alloc.boxed.Box.t i32.t alloc.alloc.Global.t)::["new"]
          (Integer.of_Z 1)) in
    let* α1 : alloc.boxed.Box.t i32.t alloc.alloc.Global.t :=
      M.call
        ((alloc.boxed.Box.t i32.t alloc.alloc.Global.t)::["new"]
          (Integer.of_Z 2)) in
    M.alloc (associated_functions_and_methods.Pair.Build_t α0 α1) in
  let* _ : M.Val unit :=
    let* α0 : associated_functions_and_methods.Pair.t := M.read pair in
    let* α1 : unit :=
      M.call (associated_functions_and_methods.Pair.t::["destroy"] α0) in
    M.alloc α1 in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
