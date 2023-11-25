(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Point.
Section Point.
  Record t : Set := {
    x : i32.t;
    y : i32.t;
    z : i32.t;
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
  Global Instance Get_z : Notations.Dot "z" := {
    Notations.dot := Ref.map (fun x => x.(z)) (fun v x => x <| z := v |>);
  }.
  Global Instance Get_AF_z : Notations.DoubleColon t "z" := {
    Notations.double_colon (x : M.Val t) := x.["z"];
  }.
End Point.
End Point.

(*
fn main() {
    let mut point = Point { x: 0, y: 0, z: 0 };

    let borrowed_point = &point;
    let another_borrow = &point;

    // Data can be accessed via the references and the original owner
    println!(
        "Point has coordinates: ({}, {}, {})",
        borrowed_point.x, another_borrow.y, point.z
    );

    // Error! Can't borrow `point` as mutable because it's currently
    // borrowed as immutable.
    // let mutable_borrow = &mut point;
    // TODO ^ Try uncommenting this line

    // The borrowed values are used again here
    println!(
        "Point has coordinates: ({}, {}, {})",
        borrowed_point.x, another_borrow.y, point.z
    );

    // The immutable references are no longer used for the rest of the code so
    // it is possible to reborrow with a mutable reference.
    let mutable_borrow = &mut point;

    // Change data via mutable reference
    mutable_borrow.x = 5;
    mutable_borrow.y = 2;
    mutable_borrow.z = 1;

    // Error! Can't borrow `point` as immutable because it's currently
    // borrowed as mutable.
    // let y = &point.y;
    // TODO ^ Try uncommenting this line

    // Error! Can't print because `println!` takes an immutable reference.
    // println!("Point Z coordinate is {}", point.z);
    // TODO ^ Try uncommenting this line

    // Ok! Mutable references can be passed as immutable to `println!`
    println!(
        "Point has coordinates: ({}, {}, {})",
        mutable_borrow.x, mutable_borrow.y, mutable_borrow.z
    );

    // The mutable reference is no longer used for the rest of the code so it
    // is possible to reborrow
    let new_borrowed_point = &point;
    println!(
        "Point now has coordinates: ({}, {}, {})",
        new_borrowed_point.x, new_borrowed_point.y, new_borrowed_point.z
    );
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M (M.Val unit) :=
  M.function_body
    (let* point :
        ltac:(refine (M.Val scoping_rules_borrowing_aliasing.Point.t)) :=
      let* α0 : ltac:(refine (M.Val i32.t)) := M.alloc 0 in
      let* α1 := M.read α0 in
      let* α2 : ltac:(refine (M.Val i32.t)) := M.alloc 0 in
      let* α3 := M.read α2 in
      let* α4 : ltac:(refine (M.Val i32.t)) := M.alloc 0 in
      let* α5 := M.read α4 in
      M.alloc
        {|
          scoping_rules_borrowing_aliasing.Point.x := α1;
          scoping_rules_borrowing_aliasing.Point.y := α3;
          scoping_rules_borrowing_aliasing.Point.z := α5;
        |} in
    let* borrowed_point :
        ltac:(refine (M.Val (ref scoping_rules_borrowing_aliasing.Point.t))) :=
      let* α0 :
          ltac:(refine
            (M.Val (ref scoping_rules_borrowing_aliasing.Point.t))) :=
        borrow point in
      M.copy α0 in
    let* another_borrow :
        ltac:(refine (M.Val (ref scoping_rules_borrowing_aliasing.Point.t))) :=
      let* α0 :
          ltac:(refine
            (M.Val (ref scoping_rules_borrowing_aliasing.Point.t))) :=
        borrow point in
      M.copy α0 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc
            [
              mk_str "Point has coordinates: (";
              mk_str ", ";
              mk_str ", ";
              mk_str ")
"
            ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 :
            ltac:(refine (M.Val scoping_rules_borrowing_aliasing.Point.t)) :=
          deref borrowed_point in
        let* α4 : ltac:(refine (M.Val (ref i32.t))) := borrow α3.["x"] in
        let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α4 in
        let* α6 :
            ltac:(refine (M.Val scoping_rules_borrowing_aliasing.Point.t)) :=
          deref another_borrow in
        let* α7 : ltac:(refine (M.Val (ref i32.t))) := borrow α6.["y"] in
        let* α8 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α7 in
        let* α9 : ltac:(refine (M.Val (ref i32.t))) := borrow point.["z"] in
        let* α10 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α9 in
        let* α11 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α5; α8; α10 ] in
        let* α12 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α11 in
        let* α13 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α12 in
        let* α14 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α13 in
        std.io.stdio._print α14 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc
            [
              mk_str "Point has coordinates: (";
              mk_str ", ";
              mk_str ", ";
              mk_str ")
"
            ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 :
            ltac:(refine (M.Val scoping_rules_borrowing_aliasing.Point.t)) :=
          deref borrowed_point in
        let* α4 : ltac:(refine (M.Val (ref i32.t))) := borrow α3.["x"] in
        let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α4 in
        let* α6 :
            ltac:(refine (M.Val scoping_rules_borrowing_aliasing.Point.t)) :=
          deref another_borrow in
        let* α7 : ltac:(refine (M.Val (ref i32.t))) := borrow α6.["y"] in
        let* α8 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α7 in
        let* α9 : ltac:(refine (M.Val (ref i32.t))) := borrow point.["z"] in
        let* α10 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α9 in
        let* α11 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α5; α8; α10 ] in
        let* α12 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α11 in
        let* α13 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α12 in
        let* α14 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α13 in
        std.io.stdio._print α14 in
      M.alloc tt in
    let* mutable_borrow :
        ltac:(refine
          (M.Val (mut_ref scoping_rules_borrowing_aliasing.Point.t))) :=
      let* α0 :
          ltac:(refine
            (M.Val (mut_ref scoping_rules_borrowing_aliasing.Point.t))) :=
        borrow_mut point in
      M.copy α0 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* α0 :
          ltac:(refine (M.Val scoping_rules_borrowing_aliasing.Point.t)) :=
        deref mutable_borrow in
      let* α1 : ltac:(refine (M.Val i32.t)) := M.alloc 5 in
      assign α0.["x"] α1 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* α0 :
          ltac:(refine (M.Val scoping_rules_borrowing_aliasing.Point.t)) :=
        deref mutable_borrow in
      let* α1 : ltac:(refine (M.Val i32.t)) := M.alloc 2 in
      assign α0.["y"] α1 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* α0 :
          ltac:(refine (M.Val scoping_rules_borrowing_aliasing.Point.t)) :=
        deref mutable_borrow in
      let* α1 : ltac:(refine (M.Val i32.t)) := M.alloc 1 in
      assign α0.["z"] α1 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc
            [
              mk_str "Point has coordinates: (";
              mk_str ", ";
              mk_str ", ";
              mk_str ")
"
            ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 :
            ltac:(refine (M.Val scoping_rules_borrowing_aliasing.Point.t)) :=
          deref mutable_borrow in
        let* α4 : ltac:(refine (M.Val (ref i32.t))) := borrow α3.["x"] in
        let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α4 in
        let* α6 :
            ltac:(refine (M.Val scoping_rules_borrowing_aliasing.Point.t)) :=
          deref mutable_borrow in
        let* α7 : ltac:(refine (M.Val (ref i32.t))) := borrow α6.["y"] in
        let* α8 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α7 in
        let* α9 :
            ltac:(refine (M.Val scoping_rules_borrowing_aliasing.Point.t)) :=
          deref mutable_borrow in
        let* α10 : ltac:(refine (M.Val (ref i32.t))) := borrow α9.["z"] in
        let* α11 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α10 in
        let* α12 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α5; α8; α11 ] in
        let* α13 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α12 in
        let* α14 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α13 in
        let* α15 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α14 in
        std.io.stdio._print α15 in
      M.alloc tt in
    let* new_borrowed_point :
        ltac:(refine (M.Val (ref scoping_rules_borrowing_aliasing.Point.t))) :=
      let* α0 :
          ltac:(refine
            (M.Val (ref scoping_rules_borrowing_aliasing.Point.t))) :=
        borrow point in
      M.copy α0 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc
            [
              mk_str "Point now has coordinates: (";
              mk_str ", ";
              mk_str ", ";
              mk_str ")
"
            ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 :
            ltac:(refine (M.Val scoping_rules_borrowing_aliasing.Point.t)) :=
          deref new_borrowed_point in
        let* α4 : ltac:(refine (M.Val (ref i32.t))) := borrow α3.["x"] in
        let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α4 in
        let* α6 :
            ltac:(refine (M.Val scoping_rules_borrowing_aliasing.Point.t)) :=
          deref new_borrowed_point in
        let* α7 : ltac:(refine (M.Val (ref i32.t))) := borrow α6.["y"] in
        let* α8 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α7 in
        let* α9 :
            ltac:(refine (M.Val scoping_rules_borrowing_aliasing.Point.t)) :=
          deref new_borrowed_point in
        let* α10 : ltac:(refine (M.Val (ref i32.t))) := borrow α9.["z"] in
        let* α11 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α10 in
        let* α12 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α5; α8; α11 ] in
        let* α13 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α12 in
        let* α14 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α13 in
        let* α15 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α14 in
        std.io.stdio._print α15 in
      M.alloc tt in
    M.alloc tt).
