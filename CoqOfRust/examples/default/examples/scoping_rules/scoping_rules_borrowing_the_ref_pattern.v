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
  Definition clone
      (self : ref ltac:(Self))
      : M scoping_rules_borrowing_the_ref_pattern.Point.t :=
    let* self := M.alloc self in
    M.function_body
      (let* _ : M.Val unit := M.alloc tt in
      deref self).
  
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
Definition main : M unit :=
  M.function_body
    (let* c : M.Val char.t :=
      let* α0 : M.Val char.t := M.alloc "Q"%char in
      M.copy α0 in
    let* ref_c1 : M.Val char.t := M.copy c in
    let* ref_c2 : M.Val (ref char.t) :=
      let* α0 : M.Val (ref char.t) := borrow c in
      M.copy α0 in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "ref_c1 equals ref_c2: "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := M.read α2 in
        let* α4 : M.Val char.t := deref ref_c1 in
        let* α5 : M.Val char.t := deref ref_c2 in
        let* α6 : M.Val bool.t := BinOp.eq α4 α5 in
        let* α7 : M.Val (ref bool.t) := borrow α6 in
        let* α8 := M.read α7 in
        let* α9 := core.fmt.rt.Argument.t::["new_display"] α8 in
        let* α10 : M.Val core.fmt.rt.Argument.t := M.alloc α9 in
        let* α11 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α10 ] in
        let* α12 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α11 in
        let* α13 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α12 in
        let* α14 := M.read α13 in
        let* α15 := core.fmt.Arguments.t::["new_v1"] α3 α14 in
        let* α16 := std.io.stdio._print α15 in
        M.alloc α16 in
      M.alloc tt in
    let* point : M.Val scoping_rules_borrowing_the_ref_pattern.Point.t :=
      let* α0 : M.Val i32.t := M.alloc 0 in
      let* α1 := M.read α0 in
      let* α2 : M.Val i32.t := M.alloc 0 in
      let* α3 := M.read α2 in
      M.alloc
        {|
          scoping_rules_borrowing_the_ref_pattern.Point.x := α1;
          scoping_rules_borrowing_the_ref_pattern.Point.y := α3;
        |} in
    let* _copy_of_x : M.Val i32.t :=
      let* '{|
            scoping_rules_borrowing_the_ref_pattern.Point.x := ref_to_x;
            scoping_rules_borrowing_the_ref_pattern.Point.y := _;
          |} :
          M.Val scoping_rules_borrowing_the_ref_pattern.Point.t :=
        M.copy point in
      let* α0 : M.Val i32.t := deref ref_to_x in
      M.copy α0 in
    let* mutable_point :
        M.Val scoping_rules_borrowing_the_ref_pattern.Point.t :=
      M.copy point in
    let* _ : M.Val unit :=
      let* '{|
            scoping_rules_borrowing_the_ref_pattern.Point.x := _;
            scoping_rules_borrowing_the_ref_pattern.Point.y := mut_ref_to_y;
          |} :
          M.Val scoping_rules_borrowing_the_ref_pattern.Point.t :=
        M.copy mutable_point in
      let* _ : M.Val unit :=
        let* α0 : M.Val i32.t := deref mut_ref_to_y in
        let* α1 : M.Val i32.t := M.alloc 1 in
        let* α2 := M.read α1 in
        assign α0 α2 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "point is ("; mk_str ", "; mk_str ")
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := M.read α2 in
        let* α4 : M.Val (ref i32.t) := borrow point.["x"] in
        let* α5 := M.read α4 in
        let* α6 := core.fmt.rt.Argument.t::["new_display"] α5 in
        let* α7 : M.Val core.fmt.rt.Argument.t := M.alloc α6 in
        let* α8 : M.Val (ref i32.t) := borrow point.["y"] in
        let* α9 := M.read α8 in
        let* α10 := core.fmt.rt.Argument.t::["new_display"] α9 in
        let* α11 : M.Val core.fmt.rt.Argument.t := M.alloc α10 in
        let* α12 : M.Val (array core.fmt.rt.Argument.t) :=
          M.alloc [ α7; α11 ] in
        let* α13 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α12 in
        let* α14 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α13 in
        let* α15 := M.read α14 in
        let* α16 := core.fmt.Arguments.t::["new_v1"] α3 α15 in
        let* α17 := std.io.stdio._print α16 in
        M.alloc α17 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "mutable_point is ("; mk_str ", "; mk_str ")
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := M.read α2 in
        let* α4 : M.Val (ref i32.t) := borrow mutable_point.["x"] in
        let* α5 := M.read α4 in
        let* α6 := core.fmt.rt.Argument.t::["new_display"] α5 in
        let* α7 : M.Val core.fmt.rt.Argument.t := M.alloc α6 in
        let* α8 : M.Val (ref i32.t) := borrow mutable_point.["y"] in
        let* α9 := M.read α8 in
        let* α10 := core.fmt.rt.Argument.t::["new_display"] α9 in
        let* α11 : M.Val core.fmt.rt.Argument.t := M.alloc α10 in
        let* α12 : M.Val (array core.fmt.rt.Argument.t) :=
          M.alloc [ α7; α11 ] in
        let* α13 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α12 in
        let* α14 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α13 in
        let* α15 := M.read α14 in
        let* α16 := core.fmt.Arguments.t::["new_v1"] α3 α15 in
        let* α17 := std.io.stdio._print α16 in
        M.alloc α17 in
      M.alloc tt in
    let* mutable_tuple :
        M.Val ((alloc.boxed.Box.t u32.t alloc.alloc.Global.t) * u32.t) :=
      let* α0 : M.Val u32.t := M.alloc 5 in
      let* α1 := M.read α0 in
      let* α2 := (alloc.boxed.Box.t u32.t alloc.alloc.Global.t)::["new"] α1 in
      let* α3 : M.Val u32.t := M.alloc 3 in
      let* α4 := M.read α3 in
      M.alloc (α2, α4) in
    let* _ : M.Val unit :=
      let* '(_, last) :
          M.Val ((alloc.boxed.Box.t u32.t alloc.alloc.Global.t) * u32.t) :=
        M.copy mutable_tuple in
      let* _ : M.Val unit :=
        let* α0 : M.Val u32.t := deref last in
        let* α1 : M.Val u32.t := M.alloc 2 in
        let* α2 := M.read α1 in
        assign α0 α2 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "tuple is "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := M.read α2 in
        let* α4 :
            M.Val
              (ref ((alloc.boxed.Box.t u32.t alloc.alloc.Global.t) * u32.t)) :=
          borrow mutable_tuple in
        let* α5 := M.read α4 in
        let* α6 := core.fmt.rt.Argument.t::["new_debug"] α5 in
        let* α7 : M.Val core.fmt.rt.Argument.t := M.alloc α6 in
        let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
        let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α8 in
        let* α10 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α9 in
        let* α11 := M.read α10 in
        let* α12 := core.fmt.Arguments.t::["new_v1"] α3 α11 in
        let* α13 := std.io.stdio._print α12 in
        M.alloc α13 in
      M.alloc tt in
    M.alloc tt).
