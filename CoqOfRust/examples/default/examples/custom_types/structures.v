(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Person.
Section Person.
  Record t : Set := {
    name : alloc.string.String.t;
    age : u8.t;
  }.
  
  Definition Get_name :=
    Ref.map (fun α => Some α.(name)) (fun β α => Some (α <| name := β |>)).
  Definition Get_age :=
    Ref.map (fun α => Some α.(age)) (fun β α => Some (α <| age := β |>)).
End Person.
End Person.

Module  Impl_core_fmt_Debug_for_structures_Person_t.
Section Impl_core_fmt_Debug_for_structures_Person_t.
  Definition Self : Set := structures.Person.t.
  
  (*
  Debug
  *)
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter.t)
      : M ltac:(core.fmt.Result) :=
    let* self := M.alloc self in
    let* f := M.alloc f in
    let* α0 : mut_ref core.fmt.Formatter.t := M.read f in
    let* α1 : ref str.t := M.read (mk_str "Person") in
    let* α2 : ref str.t := M.read (mk_str "name") in
    let* α3 : ref structures.Person.t := M.read self in
    let* α4 : M.Val (ref alloc.string.String.t) :=
      M.alloc (borrow (structures.Person.Get_name (deref α3))) in
    let* α5 : ref _ (* dyn *) := M.read (pointer_coercion "Unsize" α4) in
    let* α6 : ref str.t := M.read (mk_str "age") in
    let* α7 : ref structures.Person.t := M.read self in
    let* α8 : M.Val (ref u8.t) :=
      M.alloc (borrow (structures.Person.Get_age (deref α7))) in
    let* α9 : M.Val (ref (ref u8.t)) := M.alloc (borrow α8) in
    let* α10 : ref _ (* dyn *) := M.read (pointer_coercion "Unsize" α9) in
    M.call
      (impl core.fmt.Formatter.t "debug_struct_field2_finish"
        α0
        α1
        α2
        α5
        α6
        α10).
  
  Axiom fmt_is_impl : impl Self "fmt" = fmt.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
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
  
  Definition Get_0 :=
    Ref.map (fun α => Some α.(x0)) (fun β α => Some (α <| x0 := β |>)).
  Definition Get_1 :=
    Ref.map (fun α => Some α.(x1)) (fun β α => Some (α <| x1 := β |>)).
End Pair.
End Pair.

Module  Point.
Section Point.
  Record t : Set := {
    x : f32.t;
    y : f32.t;
  }.
  
  Definition Get_x :=
    Ref.map (fun α => Some α.(x)) (fun β α => Some (α <| x := β |>)).
  Definition Get_y :=
    Ref.map (fun α => Some α.(y)) (fun β α => Some (α <| y := β |>)).
End Point.
End Point.

Module  Rectangle.
Section Rectangle.
  Record t : Set := {
    top_left : structures.Point.t;
    bottom_right : structures.Point.t;
  }.
  
  Definition Get_top_left :=
    Ref.map
      (fun α => Some α.(top_left))
      (fun β α => Some (α <| top_left := β |>)).
  Definition Get_bottom_right :=
    Ref.map
      (fun α => Some α.(bottom_right))
      (fun β α => Some (α <| bottom_right := β |>)).
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
  let* name : M.Val alloc.string.String.t :=
    let* α0 : _ :=
      ltac:(M.get_method (fun ℐ =>
        core.convert.From.from
          (Self := alloc.string.String.t)
          (T := ref str.t)
          (Trait := ℐ))) in
    let* α1 : ref str.t := M.read (mk_str "Peter") in
    let* α2 : alloc.string.String.t := M.call (α0 α1) in
    M.alloc α2 in
  let* age : M.Val u8.t := M.alloc ((Integer.of_Z 27) : u8.t) in
  let* peter : M.Val structures.Person.t :=
    let* α0 : alloc.string.String.t := M.read name in
    let* α1 : u8.t := M.read age in
    M.alloc {| structures.Person.name := α0; structures.Person.age := α1; |} in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : core.fmt.rt.Argument.t :=
        M.call (impl core.fmt.rt.Argument.t "new_debug" (borrow peter)) in
      let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
      let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α6) in
      let* α8 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α7) in
      let* α9 : core.fmt.Arguments.t :=
        M.call (impl core.fmt.Arguments.t "new_v1" α4 α8) in
      let* α10 : unit := M.call (std.io.stdio._print α9) in
      M.alloc α10 in
    M.alloc tt in
  let* point : M.Val structures.Point.t :=
    let* α0 : f32.t := M.read (UnsupportedLiteral : M.Val f32.t) in
    let* α1 : f32.t := M.read (UnsupportedLiteral : M.Val f32.t) in
    M.alloc {| structures.Point.x := α0; structures.Point.y := α1; |} in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "point coordinates: (") in
      let* α1 : ref str.t := M.read (mk_str ", ") in
      let* α2 : ref str.t := M.read (mk_str ")
") in
      let* α3 : M.Val (array (ref str.t)) := M.alloc [ α0; α1; α2 ] in
      let* α4 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α3) in
      let* α5 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α4) in
      let* α6 : core.fmt.rt.Argument.t :=
        M.call
          (impl core.fmt.rt.Argument.t "new_display"
            (borrow (structures.Point.Get_x point))) in
      let* α7 : core.fmt.rt.Argument.t :=
        M.call
          (impl core.fmt.rt.Argument.t "new_display"
            (borrow (structures.Point.Get_y point))) in
      let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α6; α7 ] in
      let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α8) in
      let* α10 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α9) in
      let* α11 : core.fmt.Arguments.t :=
        M.call (impl core.fmt.Arguments.t "new_v1" α5 α10) in
      let* α12 : unit := M.call (std.io.stdio._print α11) in
      M.alloc α12 in
    M.alloc tt in
  let* bottom_right : M.Val structures.Point.t :=
    let* α0 : f32.t := M.read (UnsupportedLiteral : M.Val f32.t) in
    M.alloc {| structures.Point.x := α0; |} in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "second point: (") in
      let* α1 : ref str.t := M.read (mk_str ", ") in
      let* α2 : ref str.t := M.read (mk_str ")
") in
      let* α3 : M.Val (array (ref str.t)) := M.alloc [ α0; α1; α2 ] in
      let* α4 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α3) in
      let* α5 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α4) in
      let* α6 : core.fmt.rt.Argument.t :=
        M.call
          (impl core.fmt.rt.Argument.t "new_display"
            (borrow (structures.Point.Get_x bottom_right))) in
      let* α7 : core.fmt.rt.Argument.t :=
        M.call
          (impl core.fmt.rt.Argument.t "new_display"
            (borrow (structures.Point.Get_y bottom_right))) in
      let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α6; α7 ] in
      let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α8) in
      let* α10 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α9) in
      let* α11 : core.fmt.Arguments.t :=
        M.call (impl core.fmt.Arguments.t "new_v1" α5 α10) in
      let* α12 : unit := M.call (std.io.stdio._print α11) in
      M.alloc α12 in
    M.alloc tt in
  let* α0 : M.Val unit :=
    match_operator
      point
      [
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | {| structures.Point.x := _; structures.Point.y := _; |} =>
            let γ0_0 := structures.Point.Get_x γ in
            let γ0_1 := structures.Point.Get_y γ in
            let* left_edge := M.copy γ0_0 in
            let* top_edge := M.copy γ0_1 in
            let* _rectangle : M.Val structures.Rectangle.t :=
              let* α0 : f32.t := M.read left_edge in
              let* α1 : f32.t := M.read top_edge in
              let* α2 : structures.Point.t := M.read bottom_right in
              M.alloc
                {|
                  structures.Rectangle.top_left :=
                    {| structures.Point.x := α0; structures.Point.y := α1; |};
                  structures.Rectangle.bottom_right := α2;
                |} in
            let* _unit : M.Val structures.Unit.t :=
              M.alloc structures.Unit.Build in
            let* pair : M.Val structures.Pair.t :=
              let* α0 : f32.t := M.read (UnsupportedLiteral : M.Val f32.t) in
              M.alloc (structures.Pair.Build_t ((Integer.of_Z 1) : i32.t) α0) in
            let* _ : M.Val unit :=
              let* _ : M.Val unit :=
                let* α0 : ref str.t := M.read (mk_str "pair contains ") in
                let* α1 : ref str.t := M.read (mk_str " and ") in
                let* α2 : ref str.t := M.read (mk_str "
") in
                let* α3 : M.Val (array (ref str.t)) := M.alloc [ α0; α1; α2 ] in
                let* α4 : M.Val (ref (array (ref str.t))) :=
                  M.alloc (borrow α3) in
                let* α5 : ref (slice (ref str.t)) :=
                  M.read (pointer_coercion "Unsize" α4) in
                let* α6 : core.fmt.rt.Argument.t :=
                  M.call
                    (impl core.fmt.rt.Argument.t "new_debug"
                      (borrow (structures.Pair.Get_0 pair))) in
                let* α7 : core.fmt.rt.Argument.t :=
                  M.call
                    (impl core.fmt.rt.Argument.t "new_debug"
                      (borrow (structures.Pair.Get_1 pair))) in
                let* α8 : M.Val (array core.fmt.rt.Argument.t) :=
                  M.alloc [ α6; α7 ] in
                let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
                  M.alloc (borrow α8) in
                let* α10 : ref (slice core.fmt.rt.Argument.t) :=
                  M.read (pointer_coercion "Unsize" α9) in
                let* α11 : core.fmt.Arguments.t :=
                  M.call (impl core.fmt.Arguments.t "new_v1" α5 α10) in
                let* α12 : unit := M.call (std.io.stdio._print α11) in
                M.alloc α12 in
              M.alloc tt in
            match_operator
              pair
              [
                fun γ =>
                  (let* α0 := M.read γ in
                  match α0 with
                  | structures.Pair.Build_t _ _ =>
                    let γ0_0 := structures.Pair.Get_0 γ in
                    let γ0_1 := structures.Pair.Get_1 γ in
                    let* integer := M.copy γ0_0 in
                    let* decimal := M.copy γ0_1 in
                    let* _ : M.Val unit :=
                      let* _ : M.Val unit :=
                        let* α0 : ref str.t :=
                          M.read (mk_str "pair contains ") in
                        let* α1 : ref str.t := M.read (mk_str " and ") in
                        let* α2 : ref str.t := M.read (mk_str "
") in
                        let* α3 : M.Val (array (ref str.t)) :=
                          M.alloc [ α0; α1; α2 ] in
                        let* α4 : M.Val (ref (array (ref str.t))) :=
                          M.alloc (borrow α3) in
                        let* α5 : ref (slice (ref str.t)) :=
                          M.read (pointer_coercion "Unsize" α4) in
                        let* α6 : core.fmt.rt.Argument.t :=
                          M.call
                            (impl core.fmt.rt.Argument.t "new_debug"
                              (borrow integer)) in
                        let* α7 : core.fmt.rt.Argument.t :=
                          M.call
                            (impl core.fmt.rt.Argument.t "new_debug"
                              (borrow decimal)) in
                        let* α8 : M.Val (array core.fmt.rt.Argument.t) :=
                          M.alloc [ α6; α7 ] in
                        let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
                          M.alloc (borrow α8) in
                        let* α10 : ref (slice core.fmt.rt.Argument.t) :=
                          M.read (pointer_coercion "Unsize" α9) in
                        let* α11 : core.fmt.Arguments.t :=
                          M.call (impl core.fmt.Arguments.t "new_v1" α5 α10) in
                        let* α12 : unit := M.call (std.io.stdio._print α11) in
                        M.alloc α12 in
                      M.alloc tt in
                    M.alloc tt
                  end) :
                  M (M.Val unit)
              ]
          end) :
          M (M.Val unit)
      ] in
  M.read α0.
