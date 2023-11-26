(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Person.
Section Person.
  Record t : Set := {
    name : alloc.string.String.t;
    age : u8.t;
  }.
  
  Global Instance Get_name : Notations.Dot "name" := {
    Notations.dot := Ref.map (fun x => x.(name)) (fun v x => x <| name := v |>);
  }.
  Global Instance Get_AF_name : Notations.DoubleColon t "name" := {
    Notations.double_colon (x : M.Val t) := x.["name"];
  }.
  Global Instance Get_age : Notations.Dot "age" := {
    Notations.dot := Ref.map (fun x => x.(age)) (fun v x => x <| age := v |>);
  }.
  Global Instance Get_AF_age : Notations.DoubleColon t "age" := {
    Notations.double_colon (x : M.Val t) := x.["age"];
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
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 : ltac:(refine (M.Val core.fmt.Formatter.t)) := deref f in
      let* α1 : ltac:(refine (M.Val (mut_ref core.fmt.Formatter.t))) :=
        borrow_mut α0 in
      let* α2 : ltac:(refine (M.Val str.t)) := deref (mk_str "Person") in
      let* α3 : ltac:(refine (M.Val (ref str.t))) := borrow α2 in
      let* α4 : ltac:(refine (M.Val str.t)) := deref (mk_str "name") in
      let* α5 : ltac:(refine (M.Val (ref str.t))) := borrow α4 in
      let* α6 : ltac:(refine (M.Val structures.Person.t)) := deref self in
      let* α7 : ltac:(refine (M.Val (ref alloc.string.String.t))) :=
        borrow α6.["name"] in
      let* α8 : ltac:(refine (M.Val (ref type not implemented))) :=
        pointer_coercion "Unsize" α7 in
      let* α9 : ltac:(refine (M.Val str.t)) := deref (mk_str "age") in
      let* α10 : ltac:(refine (M.Val (ref str.t))) := borrow α9 in
      let* α11 : ltac:(refine (M.Val structures.Person.t)) := deref self in
      let* α12 : ltac:(refine (M.Val (ref u8.t))) := borrow α11.["age"] in
      let* α13 : ltac:(refine (M.Val (ref (ref u8.t)))) := borrow α12 in
      let* α14 : ltac:(refine (M.Val (ref type not implemented))) :=
        pointer_coercion "Unsize" α13 in
      let* α15 :=
        core.fmt.Formatter.t::["debug_struct_field2_finish"]
          α1
          α3
          α5
          α8
          α10
          α14 in
      M.alloc α15).
  
  Global Instance AssociatedFunction_fmt :
    Notations.DoubleColon ltac:(Self) "fmt" := {
    Notations.double_colon := fmt;
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
  
  Global Instance Get_0 : Notations.Dot "0" := {
    Notations.dot := Ref.map (fun x => x.(x0)) (fun v x => x <| x0 := v |>);
  }.
  Global Instance Get_1 : Notations.Dot "1" := {
    Notations.dot := Ref.map (fun x => x.(x1)) (fun v x => x <| x1 := v |>);
  }.
End Pair.
End Pair.

Module  Point.
Section Point.
  Record t : Set := {
    x : f32.t;
    y : f32.t;
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

Module  Rectangle.
Section Rectangle.
  Record t : Set := {
    top_left : structures.Point.t;
    bottom_right : structures.Point.t;
  }.
  
  Global Instance Get_top_left : Notations.Dot "top_left" := {
    Notations.dot :=
      Ref.map (fun x => x.(top_left)) (fun v x => x <| top_left := v |>);
  }.
  Global Instance Get_AF_top_left : Notations.DoubleColon t "top_left" := {
    Notations.double_colon (x : M.Val t) := x.["top_left"];
  }.
  Global Instance Get_bottom_right : Notations.Dot "bottom_right" := {
    Notations.dot :=
      Ref.map
        (fun x => x.(bottom_right))
        (fun v x => x <| bottom_right := v |>);
  }.
  Global Instance Get_AF_bottom_right :
    Notations.DoubleColon t "bottom_right" := {
    Notations.double_colon (x : M.Val t) := x.["bottom_right"];
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
Definition main : M unit :=
  M.function_body
    (let* name : ltac:(refine (M.Val alloc.string.String.t)) :=
      let* α0 :=
        (core.convert.From.from
            (Self := alloc.string.String.t)
            (Trait := ltac:(refine _)))
          (mk_str "Peter") in
      M.alloc α0 in
    let* age : ltac:(refine (M.Val u8.t)) :=
      let* α0 : ltac:(refine (M.Val u8.t)) := M.alloc 27 in
      M.copy α0 in
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
        let* α4 := core.fmt.rt.Argument.t::["new_debug"] α3 in
        let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α4 in
        let* α6 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α5 ] in
        let* α7 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α6 in
        let* α8 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α7 in
        let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
        let* α10 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α9 in
        let* α11 := std.io.stdio._print α10 in
        M.alloc α11 in
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
        let* α3 : ltac:(refine (M.Val (ref f32.t))) := borrow point.["x"] in
        let* α4 := core.fmt.rt.Argument.t::["new_display"] α3 in
        let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α4 in
        let* α6 : ltac:(refine (M.Val (ref f32.t))) := borrow point.["y"] in
        let* α7 := core.fmt.rt.Argument.t::["new_display"] α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α7 in
        let* α9 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α5; α8 ] in
        let* α10 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α9 in
        let* α11 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments.t::["new_v1"] α2 α11 in
        let* α13 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α12 in
        let* α14 := std.io.stdio._print α13 in
        M.alloc α14 in
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
        let* α3 : ltac:(refine (M.Val (ref f32.t))) :=
          borrow bottom_right.["x"] in
        let* α4 := core.fmt.rt.Argument.t::["new_display"] α3 in
        let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α4 in
        let* α6 : ltac:(refine (M.Val (ref f32.t))) :=
          borrow bottom_right.["y"] in
        let* α7 := core.fmt.rt.Argument.t::["new_display"] α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α7 in
        let* α9 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α5; α8 ] in
        let* α10 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α9 in
        let* α11 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments.t::["new_v1"] α2 α11 in
        let* α13 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α12 in
        let* α14 := std.io.stdio._print α13 in
        M.alloc α14 in
      M.alloc tt in
    let* '{| structures.Point.x := left_edge; structures.Point.y := top_edge;
        |} :
        ltac:(refine (M.Val structures.Point.t)) :=
      M.copy point in
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
        let* α3 : ltac:(refine (M.Val (ref i32.t))) := borrow pair.["0"] in
        let* α4 := core.fmt.rt.Argument.t::["new_debug"] α3 in
        let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α4 in
        let* α6 : ltac:(refine (M.Val (ref f32.t))) := borrow pair.["1"] in
        let* α7 := core.fmt.rt.Argument.t::["new_debug"] α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α7 in
        let* α9 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α5; α8 ] in
        let* α10 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α9 in
        let* α11 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments.t::["new_v1"] α2 α11 in
        let* α13 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α12 in
        let* α14 := std.io.stdio._print α13 in
        M.alloc α14 in
      M.alloc tt in
    let* 'structures.Pair.Build_t integer decimal :
        ltac:(refine (M.Val structures.Pair.t)) :=
      M.copy pair in
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
        let* α4 := core.fmt.rt.Argument.t::["new_debug"] α3 in
        let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α4 in
        let* α6 : ltac:(refine (M.Val (ref f32.t))) := borrow decimal in
        let* α7 := core.fmt.rt.Argument.t::["new_debug"] α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α7 in
        let* α9 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α5; α8 ] in
        let* α10 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α9 in
        let* α11 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments.t::["new_v1"] α2 α11 in
        let* α13 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α12 in
        let* α14 := std.io.stdio._print α13 in
        M.alloc α14 in
      M.alloc tt in
    M.alloc tt).
