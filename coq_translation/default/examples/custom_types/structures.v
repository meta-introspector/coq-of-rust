(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Person.
Section Person.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    name : alloc.string.String;
    age : u8;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_name : Notation.Dot "name" := {
    Notation.dot x := let* x := M.read x in Pure x.(name) : M _;
  }.
  Global Instance Get_AF_name : Notation.DoubleColon t "name" := {
    Notation.double_colon x := let* x := M.read x in Pure x.(name) : M _;
  }.
  Global Instance Get_age : Notation.Dot "age" := {
    Notation.dot x := let* x := M.read x in Pure x.(age) : M _;
  }.
  Global Instance Get_AF_age : Notation.DoubleColon t "age" := {
    Notation.double_colon x := let* x := M.read x in Pure x.(age) : M _;
  }.
End Person.
End Person.
Definition Person `{ℋ : State.Trait} : Set := M.val Person.t.

Module  Impl_core_fmt_Debug_for_structures_Person.
Section Impl_core_fmt_Debug_for_structures_Person.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := structures.Person.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M ltac:(core.fmt.Result) :=
    let* α0 := deref f core.fmt.Formatter in
    let* α1 := borrow_mut α0 core.fmt.Formatter in
    let* α2 := deref (mk_str "Person") str in
    let* α3 := borrow α2 str in
    let* α4 := deref (mk_str "name") str in
    let* α5 := borrow α4 str in
    let* α6 := deref self structures.Person in
    let* α7 := α6.["name"] in
    let* α8 := borrow α7 alloc.string.String in
    let* α9 := deref α8 alloc.string.String in
    let* α10 := borrow α9 alloc.string.String in
    let* α11 := pointer_coercion "Unsize" α10 in
    let* α12 := deref (mk_str "age") str in
    let* α13 := borrow α12 str in
    let* α14 := deref self structures.Person in
    let* α15 := α14.["age"] in
    let* α16 := borrow α15 u8 in
    let* α17 := borrow α16 (ref u8) in
    let* α18 := deref α17 (ref u8) in
    let* α19 := borrow α18 (ref u8) in
    let* α20 := pointer_coercion "Unsize" α19 in
    core.fmt.Formatter::["debug_struct_field2_finish"] α1 α3 α5 α11 α13 α20.
  
  Global Instance AssociatedFunction_fmt : Notation.DoubleColon Self "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_structures_Person.
End Impl_core_fmt_Debug_for_structures_Person.

Module  Unit.
Section Unit.
  Context `{ℋ : State.Trait}.
  
  Inductive t : Set := Build.
End Unit.
End Unit.
Definition Unit := @Unit.t.

Module  Pair.
Section Pair.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    x0 : i32;
    x1 : f32;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_0 : Notation.Dot "0" := {
    Notation.dot x := let* x := M.read x in Pure x.(x0) : M _;
  }.
  Global Instance Get_1 : Notation.Dot "1" := {
    Notation.dot x := let* x := M.read x in Pure x.(x1) : M _;
  }.
End Pair.
End Pair.
Definition Pair `{ℋ : State.Trait} : Set := M.val Pair.t.

Module  Point.
Section Point.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    x : f32;
    y : f32;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_x : Notation.Dot "x" := {
    Notation.dot x' := let* x' := M.read x' in Pure x'.(x) : M _;
  }.
  Global Instance Get_AF_x : Notation.DoubleColon t "x" := {
    Notation.double_colon x' := let* x' := M.read x' in Pure x'.(x) : M _;
  }.
  Global Instance Get_y : Notation.Dot "y" := {
    Notation.dot x := let* x := M.read x in Pure x.(y) : M _;
  }.
  Global Instance Get_AF_y : Notation.DoubleColon t "y" := {
    Notation.double_colon x := let* x := M.read x in Pure x.(y) : M _;
  }.
End Point.
End Point.
Definition Point `{ℋ : State.Trait} : Set := M.val Point.t.

Module  Rectangle.
Section Rectangle.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    top_left : structures.Point;
    bottom_right : structures.Point;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_top_left : Notation.Dot "top_left" := {
    Notation.dot x := let* x := M.read x in Pure x.(top_left) : M _;
  }.
  Global Instance Get_AF_top_left : Notation.DoubleColon t "top_left" := {
    Notation.double_colon x := let* x := M.read x in Pure x.(top_left) : M _;
  }.
  Global Instance Get_bottom_right : Notation.Dot "bottom_right" := {
    Notation.dot x := let* x := M.read x in Pure x.(bottom_right) : M _;
  }.
  Global Instance Get_AF_bottom_right :
    Notation.DoubleColon t "bottom_right" := {
    Notation.double_colon x :=
      let* x := M.read x in Pure x.(bottom_right) : M _;
  }.
End Rectangle.
End Rectangle.
Definition Rectangle `{ℋ : State.Trait} : Set := M.val Rectangle.t.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  let* name :=
    (core.convert.From.from
        (Self := alloc.string.String)
        (Trait := ltac:(refine _)))
      (mk_str "Peter") in
  let* age := M.alloc 27 in
  let* peter :=
    M.alloc
      {| structures.Person.name := name; structures.Person.age := age; |} in
  let* _ :=
    let* _ :=
      let* α0 := borrow [ mk_str ""; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := borrow peter structures.Person in
      let* α5 := deref α4 structures.Person in
      let* α6 := borrow α5 structures.Person in
      let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
      let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
      let* α9 := deref α8 (list core.fmt.rt.Argument) in
      let* α10 := borrow α9 (list core.fmt.rt.Argument) in
      let* α11 := pointer_coercion "Unsize" α10 in
      let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
      std.io.stdio._print α12 in
    M.alloc tt in
  let* point :=
    let* α0 := M.alloc 10 (* 10.3 *) in
    let* α1 := M.alloc 0 (* 0.4 *) in
    M.alloc {| structures.Point.x := α0; structures.Point.y := α1; |} in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow
          [ mk_str "point coordinates: ("; mk_str ", "; mk_str ")
" ]
          (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := point.["x"] in
      let* α5 := borrow α4 f32 in
      let* α6 := deref α5 f32 in
      let* α7 := borrow α6 f32 in
      let* α8 := core.fmt.rt.Argument::["new_display"] α7 in
      let* α9 := point.["y"] in
      let* α10 := borrow α9 f32 in
      let* α11 := deref α10 f32 in
      let* α12 := borrow α11 f32 in
      let* α13 := core.fmt.rt.Argument::["new_display"] α12 in
      let* α14 := borrow [ α8; α13 ] (list core.fmt.rt.Argument) in
      let* α15 := deref α14 (list core.fmt.rt.Argument) in
      let* α16 := borrow α15 (list core.fmt.rt.Argument) in
      let* α17 := pointer_coercion "Unsize" α16 in
      let* α18 := core.fmt.Arguments::["new_v1"] α3 α17 in
      std.io.stdio._print α18 in
    M.alloc tt in
  let* bottom_right :=
    let* α0 := M.alloc 5 (* 5.2 *) in
    M.alloc {| structures.Point.x := α0; |} in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow
          [ mk_str "second point: ("; mk_str ", "; mk_str ")
" ]
          (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := bottom_right.["x"] in
      let* α5 := borrow α4 f32 in
      let* α6 := deref α5 f32 in
      let* α7 := borrow α6 f32 in
      let* α8 := core.fmt.rt.Argument::["new_display"] α7 in
      let* α9 := bottom_right.["y"] in
      let* α10 := borrow α9 f32 in
      let* α11 := deref α10 f32 in
      let* α12 := borrow α11 f32 in
      let* α13 := core.fmt.rt.Argument::["new_display"] α12 in
      let* α14 := borrow [ α8; α13 ] (list core.fmt.rt.Argument) in
      let* α15 := deref α14 (list core.fmt.rt.Argument) in
      let* α16 := borrow α15 (list core.fmt.rt.Argument) in
      let* α17 := pointer_coercion "Unsize" α16 in
      let* α18 := core.fmt.Arguments::["new_v1"] α3 α17 in
      std.io.stdio._print α18 in
    M.alloc tt in
  let '{| structures.Point.x := left_edge; structures.Point.y := top_edge; |} :=
    point in
  let* _rectangle :=
    let* α0 :=
      M.alloc
        {| structures.Point.x := left_edge; structures.Point.y := top_edge;
        |} in
    M.alloc
      {|
        structures.Rectangle.top_left := α0;
        structures.Rectangle.bottom_right := bottom_right;
      |} in
  let* _unit := M.alloc structures.Unit.Build_t in
  let* pair :=
    let* α0 := M.alloc 1 in
    let* α1 := M.alloc 0 (* 0.1 *) in
    M.alloc (structures.Pair.Build_t α0 α1) in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow
          [ mk_str "pair contains "; mk_str " and "; mk_str "
" ]
          (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := pair.["0"] in
      let* α5 := borrow α4 i32 in
      let* α6 := deref α5 i32 in
      let* α7 := borrow α6 i32 in
      let* α8 := core.fmt.rt.Argument::["new_debug"] α7 in
      let* α9 := pair.["1"] in
      let* α10 := borrow α9 f32 in
      let* α11 := deref α10 f32 in
      let* α12 := borrow α11 f32 in
      let* α13 := core.fmt.rt.Argument::["new_debug"] α12 in
      let* α14 := borrow [ α8; α13 ] (list core.fmt.rt.Argument) in
      let* α15 := deref α14 (list core.fmt.rt.Argument) in
      let* α16 := borrow α15 (list core.fmt.rt.Argument) in
      let* α17 := pointer_coercion "Unsize" α16 in
      let* α18 := core.fmt.Arguments::["new_v1"] α3 α17 in
      std.io.stdio._print α18 in
    M.alloc tt in
  let 'structures.Pair.Build_t integer decimal := pair in
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow
          [ mk_str "pair contains "; mk_str " and "; mk_str "
" ]
          (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := borrow integer i32 in
      let* α5 := deref α4 i32 in
      let* α6 := borrow α5 i32 in
      let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
      let* α8 := borrow decimal f32 in
      let* α9 := deref α8 f32 in
      let* α10 := borrow α9 f32 in
      let* α11 := core.fmt.rt.Argument::["new_debug"] α10 in
      let* α12 := borrow [ α7; α11 ] (list core.fmt.rt.Argument) in
      let* α13 := deref α12 (list core.fmt.rt.Argument) in
      let* α14 := borrow α13 (list core.fmt.rt.Argument) in
      let* α15 := pointer_coercion "Unsize" α14 in
      let* α16 := core.fmt.Arguments::["new_v1"] α3 α15 in
      std.io.stdio._print α16 in
    M.alloc tt in
  M.alloc tt.
