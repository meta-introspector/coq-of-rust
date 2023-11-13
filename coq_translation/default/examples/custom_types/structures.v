(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Person.
Section Person.
  Record t : Set := {
    name : alloc.string.String.t;
    age : u8.t;
  }.
  
  Global Instance Get_name : Notation.Dot "name" := {
    Notation.dot x := let* x := M.read x in M.alloc x.(name) : M _;
  }.
  Global Instance Get_AF_name : Notation.DoubleColon t "name" := {
    Notation.double_colon x := let* x := M.read x in M.alloc x.(name) : M _;
  }.
  Global Instance Get_age : Notation.Dot "age" := {
    Notation.dot x := let* x := M.read x in M.alloc x.(age) : M _;
  }.
  Global Instance Get_AF_age : Notation.DoubleColon t "age" := {
    Notation.double_colon x := let* x := M.read x in M.alloc x.(age) : M _;
  }.
End Person.
End Person.

Module  Impl_core_fmt_Debug_for_structures_Person_t.
Section Impl_core_fmt_Debug_for_structures_Person_t.
  Ltac Self := exact structures.Person.t.
  
  (*
  Debug
  *)
  Definition fmt
      (self : M.Val (ref ltac:(Self)))
      (f : M.Val (mut_ref core.fmt.Formatter.t))
      : M (M.Val ltac:(core.fmt.Result)) :=
    M.function_body
      (let* α0 : ltac:(refine (M.Val core.fmt.Formatter.t)) := deref f in
      let* α1 : ltac:(refine (M.Val (mut_ref core.fmt.Formatter.t))) :=
        borrow_mut α0 in
      let* α2 : ltac:(refine (M.Val str.t)) := deref (mk_str "Person") in
      let* α3 : ltac:(refine (M.Val (ref str.t))) := borrow α2 in
      let* α4 : ltac:(refine (M.Val str.t)) := deref (mk_str "name") in
      let* α5 : ltac:(refine (M.Val (ref str.t))) := borrow α4 in
      let* α6 : ltac:(refine (M.Val structures.Person.t)) := deref self in
      let* α7 : ltac:(refine (M.Val alloc.string.String.t)) := α6.["name"] in
      let* α8 : ltac:(refine (M.Val (ref alloc.string.String.t))) :=
        borrow α7 in
      let* α9 : ltac:(refine (M.Val (ref type not implemented))) :=
        pointer_coercion "Unsize" α8 in
      let* α10 : ltac:(refine (M.Val str.t)) := deref (mk_str "age") in
      let* α11 : ltac:(refine (M.Val (ref str.t))) := borrow α10 in
      let* α12 : ltac:(refine (M.Val structures.Person.t)) := deref self in
      let* α13 : ltac:(refine (M.Val u8.t)) := α12.["age"] in
      let* α14 : ltac:(refine (M.Val (ref u8.t))) := borrow α13 in
      let* α15 : ltac:(refine (M.Val (ref (ref u8.t)))) := borrow α14 in
      let* α16 : ltac:(refine (M.Val (ref type not implemented))) :=
        pointer_coercion "Unsize" α15 in
      core.fmt.Formatter.t::["debug_struct_field2_finish"] α1 α3 α5 α9 α11 α16).
  
  Global Instance AssociatedFunction_fmt :
    Notation.DoubleColon ltac:(Self) "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait ltac:(Self) := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_structures_Person_t.
End Impl_core_fmt_Debug_for_structures_Person_t.

Module  Unit.
Section Unit.
  Inductive t : Set := Build.
End Unit.
End Unit.

Module  Pair.
Section Pair.
  Record t : Set := {
    x0 : i32.t;
    x1 : f32.t;
  }.
  
  Global Instance Get_0 : Notation.Dot "0" := {
    Notation.dot x := let* x := M.read x in M.alloc x.(x0) : M _;
  }.
  Global Instance Get_1 : Notation.Dot "1" := {
    Notation.dot x := let* x := M.read x in M.alloc x.(x1) : M _;
  }.
End Pair.
End Pair.

Module  Point.
Section Point.
  Record t : Set := {
    x : f32.t;
    y : f32.t;
  }.
  
  Global Instance Get_x : Notation.Dot "x" := {
    Notation.dot x' := let* x' := M.read x' in M.alloc x'.(x) : M _;
  }.
  Global Instance Get_AF_x : Notation.DoubleColon t "x" := {
    Notation.double_colon x' := let* x' := M.read x' in M.alloc x'.(x) : M _;
  }.
  Global Instance Get_y : Notation.Dot "y" := {
    Notation.dot x := let* x := M.read x in M.alloc x.(y) : M _;
  }.
  Global Instance Get_AF_y : Notation.DoubleColon t "y" := {
    Notation.double_colon x := let* x := M.read x in M.alloc x.(y) : M _;
  }.
End Point.
End Point.

Module  Rectangle.
Section Rectangle.
  Record t : Set := {
    top_left : structures.Point.t;
    bottom_right : structures.Point.t;
  }.
  
  Global Instance Get_top_left : Notation.Dot "top_left" := {
    Notation.dot x := let* x := M.read x in M.alloc x.(top_left) : M _;
  }.
  Global Instance Get_AF_top_left : Notation.DoubleColon t "top_left" := {
    Notation.double_colon x := let* x := M.read x in M.alloc x.(top_left) : M _;
  }.
  Global Instance Get_bottom_right : Notation.Dot "bottom_right" := {
    Notation.dot x := let* x := M.read x in M.alloc x.(bottom_right) : M _;
  }.
  Global Instance Get_AF_bottom_right :
    Notation.DoubleColon t "bottom_right" := {
    Notation.double_colon x :=
      let* x := M.read x in M.alloc x.(bottom_right) : M _;
  }.
End Rectangle.
End Rectangle.

(*
fn main() {
    // Create struct with field init shorthand
    let name = String::from("Peter");
    let age = 27;
    let peter = Person { name, age };

    // Print debug struct
    println!("{:?}", peter);

    // Instantiate a `Point`
    let point: Point = Point { x: 10.3, y: 0.4 };

    // Access the fields of the point
    println!("point coordinates: ({}, {})", point.x, point.y);

    // Make a new point by using struct update syntax to use the fields of our
    // other one
    let bottom_right = Point { x: 5.2, ..point };

    // `bottom_right.y` will be the same as `point.y` because we used that field
    // from `point`
    println!("second point: ({}, {})", bottom_right.x, bottom_right.y);

    // Destructure the point using a `let` binding
    let Point {
        x: left_edge,
        y: top_edge,
    } = point;

    let _rectangle = Rectangle {
        // struct instantiation is an expression too
        top_left: Point {
            x: left_edge,
            y: top_edge,
        },
        bottom_right: bottom_right,
    };

    // Instantiate a unit struct
    let _unit = Unit;

    // Instantiate a tuple struct
    let pair = Pair(1, 0.1);

    // Access the fields of a tuple struct
    println!("pair contains {:?} and {:?}", pair.0, pair.1);

    // Destructure a tuple struct
    let Pair(integer, decimal) = pair;

    println!("pair contains {:?} and {:?}", integer, decimal);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M (M.Val unit) :=
  M.function_body
    (let* name : ltac:(refine (M.Val alloc.string.String.t)) :=
      (core.convert.From.from
          (Self := alloc.string.String.t)
          (Trait := ltac:(refine _)))
        (mk_str "Peter") in
    let* age : ltac:(refine (M.Val u8.t)) := M.alloc 27 in
    let* peter : ltac:(refine (M.Val structures.Person.t)) :=
      let* α0 := M.read name in
      let* α1 := M.read age in
      M.alloc
        {| structures.Person.name := α0; structures.Person.age := α1; |} in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str ""; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref structures.Person.t))) :=
          borrow peter in
        let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_debug"] α3 in
        let* α5 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α4 ] in
        let* α6 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α5 in
        let* α7 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α7 in
        std.io.stdio._print α8 in
      M.alloc tt in
    let* point : ltac:(refine (M.Val structures.Point.t)) :=
      let* α0 : ltac:(refine (M.Val f32.t)) := M.alloc 10 (* 10.3 *) in
      let* α1 := M.read α0 in
      let* α2 : ltac:(refine (M.Val f32.t)) := M.alloc 0 (* 0.4 *) in
      let* α3 := M.read α2 in
      M.alloc {| structures.Point.x := α1; structures.Point.y := α3; |} in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "point coordinates: ("; mk_str ", "; mk_str ")
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val f32.t)) := point.["x"] in
        let* α4 : ltac:(refine (M.Val (ref f32.t))) := borrow α3 in
        let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α4 in
        let* α6 : ltac:(refine (M.Val f32.t)) := point.["y"] in
        let* α7 : ltac:(refine (M.Val (ref f32.t))) := borrow α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α7 in
        let* α9 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α5; α8 ] in
        let* α10 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α9 in
        let* α11 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α10 in
        let* α12 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α11 in
        std.io.stdio._print α12 in
      M.alloc tt in
    let* bottom_right : ltac:(refine (M.Val structures.Point.t)) :=
      let* α0 : ltac:(refine (M.Val f32.t)) := M.alloc 5 (* 5.2 *) in
      let* α1 := M.read α0 in
      M.alloc {| structures.Point.x := α1; |} in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "second point: ("; mk_str ", "; mk_str ")
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val f32.t)) := bottom_right.["x"] in
        let* α4 : ltac:(refine (M.Val (ref f32.t))) := borrow α3 in
        let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α4 in
        let* α6 : ltac:(refine (M.Val f32.t)) := bottom_right.["y"] in
        let* α7 : ltac:(refine (M.Val (ref f32.t))) := borrow α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α7 in
        let* α9 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α5; α8 ] in
        let* α10 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α9 in
        let* α11 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α10 in
        let* α12 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α11 in
        std.io.stdio._print α12 in
      M.alloc tt in
    let '{| structures.Point.x := left_edge; structures.Point.y := top_edge;
        |} :=
      point in
    let* _rectangle : ltac:(refine (M.Val structures.Rectangle.t)) :=
      let* α0 := M.read left_edge in
      let* α1 := M.read top_edge in
      let* α2 := M.read bottom_right in
      M.alloc
        {|
          structures.Rectangle.top_left :=
            {| structures.Point.x := α0; structures.Point.y := α1; |};
          structures.Rectangle.bottom_right := α2;
        |} in
    let* _unit : ltac:(refine (M.Val structures.Unit.t)) :=
      M.alloc structures.Unit.Build_t in
    let* pair : ltac:(refine (M.Val structures.Pair.t)) :=
      let* α0 : ltac:(refine (M.Val i32.t)) := M.alloc 1 in
      let* α1 := M.read α0 in
      let* α2 : ltac:(refine (M.Val f32.t)) := M.alloc 0 (* 0.1 *) in
      let* α3 := M.read α2 in
      M.alloc (structures.Pair.Build_t α1 α3) in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "pair contains "; mk_str " and "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val i32.t)) := pair.["0"] in
        let* α4 : ltac:(refine (M.Val (ref i32.t))) := borrow α3 in
        let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_debug"] α4 in
        let* α6 : ltac:(refine (M.Val f32.t)) := pair.["1"] in
        let* α7 : ltac:(refine (M.Val (ref f32.t))) := borrow α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_debug"] α7 in
        let* α9 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α5; α8 ] in
        let* α10 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α9 in
        let* α11 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α10 in
        let* α12 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α11 in
        std.io.stdio._print α12 in
      M.alloc tt in
    let 'structures.Pair.Build_t integer decimal := pair in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "pair contains "; mk_str " and "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref i32.t))) := borrow integer in
        let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_debug"] α3 in
        let* α5 : ltac:(refine (M.Val (ref f32.t))) := borrow decimal in
        let* α6 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_debug"] α5 in
        let* α7 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α4; α6 ] in
        let* α8 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α7 in
        let* α9 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α8 in
        let* α10 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α9 in
        std.io.stdio._print α10 in
      M.alloc tt in
    M.alloc tt).
