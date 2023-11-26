(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Point.
Section Point.
  Record t : Set := {
    x : i32.t;
    y : i32.t;
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

Module  Impl_core_clone_Clone_for_scoping_rules_borrowing_the_ref_pattern_Point_t.
Section Impl_core_clone_Clone_for_scoping_rules_borrowing_the_ref_pattern_Point_t.
  Ltac Self := exact scoping_rules_borrowing_the_ref_pattern.Point.t.
  
  (*
  Clone
  *)
  Parameter clone :
      (ref ltac:(Self)) -> M scoping_rules_borrowing_the_ref_pattern.Point.t.
  
  Global Instance AssociatedFunction_clone :
    Notations.DoubleColon ltac:(Self) "clone" := {
    Notations.double_colon := clone;
  }.
  
  Global Instance ℐ : core.clone.Clone.Required.Trait ltac:(Self) := {
    core.clone.Clone.clone := clone;
    core.clone.Clone.clone_from := Datatypes.None;
  }.
End Impl_core_clone_Clone_for_scoping_rules_borrowing_the_ref_pattern_Point_t.
End Impl_core_clone_Clone_for_scoping_rules_borrowing_the_ref_pattern_Point_t.

Module  Impl_core_marker_Copy_for_scoping_rules_borrowing_the_ref_pattern_Point_t.
Section Impl_core_marker_Copy_for_scoping_rules_borrowing_the_ref_pattern_Point_t.
  Ltac Self := exact scoping_rules_borrowing_the_ref_pattern.Point.t.
  
  Global Instance ℐ : core.marker.Copy.Trait ltac:(Self) := {
  }.
End Impl_core_marker_Copy_for_scoping_rules_borrowing_the_ref_pattern_Point_t.
End Impl_core_marker_Copy_for_scoping_rules_borrowing_the_ref_pattern_Point_t.

(*
fn main() {
    let c = 'Q';

    // A `ref` borrow on the left side of an assignment is equivalent to
    // an `&` borrow on the right side.
    let ref ref_c1 = c;
    let ref_c2 = &c;

    println!("ref_c1 equals ref_c2: {}", *ref_c1 == *ref_c2);

    let point = Point { x: 0, y: 0 };

    // `ref` is also valid when destructuring a struct.
    let _copy_of_x = {
        // `ref_to_x` is a reference to the `x` field of `point`.
        let Point {
            x: ref ref_to_x,
            y: _,
        } = point;

        // Return a copy of the `x` field of `point`.
        *ref_to_x
    };

    // A mutable copy of `point`
    let mut mutable_point = point;

    {
        // `ref` can be paired with `mut` to take mutable references.
        let Point {
            x: _,
            y: ref mut mut_ref_to_y,
        } = mutable_point;

        // Mutate the `y` field of `mutable_point` via a mutable reference.
        *mut_ref_to_y = 1;
    }

    println!("point is ({}, {})", point.x, point.y);
    println!(
        "mutable_point is ({}, {})",
        mutable_point.x, mutable_point.y
    );

    // A mutable tuple that includes a pointer
    let mut mutable_tuple = (Box::new(5u32), 3u32);

    {
        // Destructure `mutable_tuple` to change the value of `last`.
        let (_, ref mut last) = mutable_tuple;
        *last = 2u32;
    }

    println!("tuple is {:?}", mutable_tuple);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.
