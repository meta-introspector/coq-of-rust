(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Point.
Section Point.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    x : i32;
    y : i32;
    z : i32;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_x : Notation.Dot "x" := {
    Notation.dot x' := let* x' := M.read x' in M.pure x'.(x) : M _;
  }.
  Global Instance Get_AF_x : Notation.DoubleColon t "x" := {
    Notation.double_colon x' := let* x' := M.read x' in M.pure x'.(x) : M _;
  }.
  Global Instance Get_y : Notation.Dot "y" := {
    Notation.dot x := let* x := M.read x in M.pure x.(y) : M _;
  }.
  Global Instance Get_AF_y : Notation.DoubleColon t "y" := {
    Notation.double_colon x := let* x := M.read x in M.pure x.(y) : M _;
  }.
  Global Instance Get_z : Notation.Dot "z" := {
    Notation.dot x := let* x := M.read x in M.pure x.(z) : M _;
  }.
  Global Instance Get_AF_z : Notation.DoubleColon t "z" := {
    Notation.double_colon x := let* x := M.read x in M.pure x.(z) : M _;
  }.
End Point.
End Point.
Definition Point `{ℋ : State.Trait} : Set := M.Val Point.t.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* point :=
      let* α0 := M.alloc 0 in
      let* α1 := M.alloc 0 in
      let* α2 := M.alloc 0 in
      M.alloc
        {|
          scoping_rules_borrowing_aliasing.Point.x := α0;
          scoping_rules_borrowing_aliasing.Point.y := α1;
          scoping_rules_borrowing_aliasing.Point.z := α2;
        |} in
    let* borrowed_point :=
      borrow point scoping_rules_borrowing_aliasing.Point in
    let* another_borrow :=
      borrow point scoping_rules_borrowing_aliasing.Point in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow
            [
              mk_str "Point has coordinates: (";
              mk_str ", ";
              mk_str ", ";
              mk_str ")
"
            ]
            (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 :=
          deref borrowed_point scoping_rules_borrowing_aliasing.Point in
        let* α5 := α4.["x"] in
        let* α6 := borrow α5 i32 in
        let* α7 := deref α6 i32 in
        let* α8 := borrow α7 i32 in
        let* α9 := core.fmt.rt.Argument::["new_display"] α8 in
        let* α10 :=
          deref another_borrow scoping_rules_borrowing_aliasing.Point in
        let* α11 := α10.["y"] in
        let* α12 := borrow α11 i32 in
        let* α13 := deref α12 i32 in
        let* α14 := borrow α13 i32 in
        let* α15 := core.fmt.rt.Argument::["new_display"] α14 in
        let* α16 := point.["z"] in
        let* α17 := borrow α16 i32 in
        let* α18 := deref α17 i32 in
        let* α19 := borrow α18 i32 in
        let* α20 := core.fmt.rt.Argument::["new_display"] α19 in
        let* α21 := borrow [ α9; α15; α20 ] (list core.fmt.rt.Argument) in
        let* α22 := deref α21 (list core.fmt.rt.Argument) in
        let* α23 := borrow α22 (list core.fmt.rt.Argument) in
        let* α24 := pointer_coercion "Unsize" α23 in
        let* α25 := core.fmt.Arguments::["new_v1"] α3 α24 in
        std.io.stdio._print α25 in
      M.alloc tt in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow
            [
              mk_str "Point has coordinates: (";
              mk_str ", ";
              mk_str ", ";
              mk_str ")
"
            ]
            (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 :=
          deref borrowed_point scoping_rules_borrowing_aliasing.Point in
        let* α5 := α4.["x"] in
        let* α6 := borrow α5 i32 in
        let* α7 := deref α6 i32 in
        let* α8 := borrow α7 i32 in
        let* α9 := core.fmt.rt.Argument::["new_display"] α8 in
        let* α10 :=
          deref another_borrow scoping_rules_borrowing_aliasing.Point in
        let* α11 := α10.["y"] in
        let* α12 := borrow α11 i32 in
        let* α13 := deref α12 i32 in
        let* α14 := borrow α13 i32 in
        let* α15 := core.fmt.rt.Argument::["new_display"] α14 in
        let* α16 := point.["z"] in
        let* α17 := borrow α16 i32 in
        let* α18 := deref α17 i32 in
        let* α19 := borrow α18 i32 in
        let* α20 := core.fmt.rt.Argument::["new_display"] α19 in
        let* α21 := borrow [ α9; α15; α20 ] (list core.fmt.rt.Argument) in
        let* α22 := deref α21 (list core.fmt.rt.Argument) in
        let* α23 := borrow α22 (list core.fmt.rt.Argument) in
        let* α24 := pointer_coercion "Unsize" α23 in
        let* α25 := core.fmt.Arguments::["new_v1"] α3 α24 in
        std.io.stdio._print α25 in
      M.alloc tt in
    let* mutable_borrow :=
      borrow_mut point scoping_rules_borrowing_aliasing.Point in
    let* _ :=
      let* α0 := deref mutable_borrow scoping_rules_borrowing_aliasing.Point in
      let* α1 := α0.["x"] in
      let* α2 := M.alloc 5 in
      assign α1 α2 in
    let* _ :=
      let* α0 := deref mutable_borrow scoping_rules_borrowing_aliasing.Point in
      let* α1 := α0.["y"] in
      let* α2 := M.alloc 2 in
      assign α1 α2 in
    let* _ :=
      let* α0 := deref mutable_borrow scoping_rules_borrowing_aliasing.Point in
      let* α1 := α0.["z"] in
      let* α2 := M.alloc 1 in
      assign α1 α2 in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow
            [
              mk_str "Point has coordinates: (";
              mk_str ", ";
              mk_str ", ";
              mk_str ")
"
            ]
            (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 :=
          deref mutable_borrow scoping_rules_borrowing_aliasing.Point in
        let* α5 := α4.["x"] in
        let* α6 := borrow α5 i32 in
        let* α7 := deref α6 i32 in
        let* α8 := borrow α7 i32 in
        let* α9 := core.fmt.rt.Argument::["new_display"] α8 in
        let* α10 :=
          deref mutable_borrow scoping_rules_borrowing_aliasing.Point in
        let* α11 := α10.["y"] in
        let* α12 := borrow α11 i32 in
        let* α13 := deref α12 i32 in
        let* α14 := borrow α13 i32 in
        let* α15 := core.fmt.rt.Argument::["new_display"] α14 in
        let* α16 :=
          deref mutable_borrow scoping_rules_borrowing_aliasing.Point in
        let* α17 := α16.["z"] in
        let* α18 := borrow α17 i32 in
        let* α19 := deref α18 i32 in
        let* α20 := borrow α19 i32 in
        let* α21 := core.fmt.rt.Argument::["new_display"] α20 in
        let* α22 := borrow [ α9; α15; α21 ] (list core.fmt.rt.Argument) in
        let* α23 := deref α22 (list core.fmt.rt.Argument) in
        let* α24 := borrow α23 (list core.fmt.rt.Argument) in
        let* α25 := pointer_coercion "Unsize" α24 in
        let* α26 := core.fmt.Arguments::["new_v1"] α3 α25 in
        std.io.stdio._print α26 in
      M.alloc tt in
    let* new_borrowed_point :=
      borrow point scoping_rules_borrowing_aliasing.Point in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow
            [
              mk_str "Point now has coordinates: (";
              mk_str ", ";
              mk_str ", ";
              mk_str ")
"
            ]
            (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 :=
          deref new_borrowed_point scoping_rules_borrowing_aliasing.Point in
        let* α5 := α4.["x"] in
        let* α6 := borrow α5 i32 in
        let* α7 := deref α6 i32 in
        let* α8 := borrow α7 i32 in
        let* α9 := core.fmt.rt.Argument::["new_display"] α8 in
        let* α10 :=
          deref new_borrowed_point scoping_rules_borrowing_aliasing.Point in
        let* α11 := α10.["y"] in
        let* α12 := borrow α11 i32 in
        let* α13 := deref α12 i32 in
        let* α14 := borrow α13 i32 in
        let* α15 := core.fmt.rt.Argument::["new_display"] α14 in
        let* α16 :=
          deref new_borrowed_point scoping_rules_borrowing_aliasing.Point in
        let* α17 := α16.["z"] in
        let* α18 := borrow α17 i32 in
        let* α19 := deref α18 i32 in
        let* α20 := borrow α19 i32 in
        let* α21 := core.fmt.rt.Argument::["new_display"] α20 in
        let* α22 := borrow [ α9; α15; α21 ] (list core.fmt.rt.Argument) in
        let* α23 := deref α22 (list core.fmt.rt.Argument) in
        let* α24 := borrow α23 (list core.fmt.rt.Argument) in
        let* α25 := pointer_coercion "Unsize" α24 in
        let* α26 := core.fmt.Arguments::["new_v1"] α3 α25 in
        std.io.stdio._print α26 in
      M.alloc tt in
    M.alloc tt).
