(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - struct was ignored by the compiler *)
Module  Point.
Section Point.
  Context `{ℋ : State.Trait}.
  
  Record t : Set := {
    x : f64;
    y : f64;
  }.
  
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
End Point.
End Point.
Definition Point `{ℋ : State.Trait} : Set := M.Val Point.t.

Module  Impl_core_fmt_Debug_for_box_stack_heap_Point.
Section Impl_core_fmt_Debug_for_box_stack_heap_Point.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := box_stack_heap.Point.
  
  (* #[allow(dead_code)] - function was ignored by the compiler *)
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 : ltac:(refine core.fmt.Formatter) := deref f in
      let* α1 : ltac:(refine (mut_ref core.fmt.Formatter)) := borrow_mut α0 in
      let* α2 : ltac:(refine str) := deref (mk_str "Point") in
      let* α3 : ltac:(refine (ref str)) := borrow α2 in
      let* α4 : ltac:(refine str) := deref (mk_str "x") in
      let* α5 : ltac:(refine (ref str)) := borrow α4 in
      let* α6 : ltac:(refine box_stack_heap.Point) := deref self in
      let* α7 : ltac:(refine f64) := α6.["x"] in
      let* α8 : ltac:(refine (ref f64)) := borrow α7 in
      let* α9 : ltac:(refine f64) := deref α8 in
      let* α10 : ltac:(refine (ref f64)) := borrow α9 in
      let* α11 : ltac:(refine (ref type not implemented)) :=
        pointer_coercion "Unsize" α10 in
      let* α12 : ltac:(refine str) := deref (mk_str "y") in
      let* α13 : ltac:(refine (ref str)) := borrow α12 in
      let* α14 : ltac:(refine box_stack_heap.Point) := deref self in
      let* α15 : ltac:(refine f64) := α14.["y"] in
      let* α16 : ltac:(refine (ref f64)) := borrow α15 in
      let* α17 : ltac:(refine (ref (ref f64))) := borrow α16 in
      let* α18 : ltac:(refine (ref f64)) := deref α17 in
      let* α19 : ltac:(refine (ref (ref f64))) := borrow α18 in
      let* α20 : ltac:(refine (ref type not implemented)) :=
        pointer_coercion "Unsize" α19 in
      core.fmt.Formatter::["debug_struct_field2_finish"] α1 α3 α5 α11 α13 α20).
  
  Global Instance AssociatedFunction_fmt : Notation.DoubleColon Self "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_box_stack_heap_Point.
End Impl_core_fmt_Debug_for_box_stack_heap_Point.

Module  Impl_core_clone_Clone_for_box_stack_heap_Point.
Section Impl_core_clone_Clone_for_box_stack_heap_Point.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := box_stack_heap.Point.
  
  (* #[allow(dead_code)] - function was ignored by the compiler *)
  Definition clone (self : ref Self) : M box_stack_heap.Point :=
    M.function_body
      (let* _ : ltac:(refine unit) := M.alloc tt in
      deref self).
  
  Global Instance AssociatedFunction_clone :
    Notation.DoubleColon Self "clone" := {
    Notation.double_colon := clone;
  }.
  
  Global Instance ℐ : core.clone.Clone.Required.Trait Self := {
    core.clone.Clone.clone := clone;
    core.clone.Clone.clone_from := Datatypes.None;
  }.
End Impl_core_clone_Clone_for_box_stack_heap_Point.
End Impl_core_clone_Clone_for_box_stack_heap_Point.

Module  Impl_core_marker_Copy_for_box_stack_heap_Point.
Section Impl_core_marker_Copy_for_box_stack_heap_Point.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := box_stack_heap.Point.
  
  Global Instance ℐ : core.marker.Copy.Trait Self := {
  }.
End Impl_core_marker_Copy_for_box_stack_heap_Point.
End Impl_core_marker_Copy_for_box_stack_heap_Point.

(* #[allow(dead_code)] - struct was ignored by the compiler *)
Module  Rectangle.
Section Rectangle.
  Context `{ℋ : State.Trait}.
  
  Record t : Set := {
    top_left : box_stack_heap.Point;
    bottom_right : box_stack_heap.Point;
  }.
  
  Global Instance Get_top_left : Notation.Dot "top_left" := {
    Notation.dot x := let* x := M.read x in M.pure x.(top_left) : M _;
  }.
  Global Instance Get_AF_top_left : Notation.DoubleColon t "top_left" := {
    Notation.double_colon x := let* x := M.read x in M.pure x.(top_left) : M _;
  }.
  Global Instance Get_bottom_right : Notation.Dot "bottom_right" := {
    Notation.dot x := let* x := M.read x in M.pure x.(bottom_right) : M _;
  }.
  Global Instance Get_AF_bottom_right :
    Notation.DoubleColon t "bottom_right" := {
    Notation.double_colon x :=
      let* x := M.read x in M.pure x.(bottom_right) : M _;
  }.
End Rectangle.
End Rectangle.
Definition Rectangle `{ℋ : State.Trait} : Set := M.Val Rectangle.t.

Definition origin `{ℋ : State.Trait} : M box_stack_heap.Point :=
  M.function_body
    (let* α0 : ltac:(refine f64) := M.alloc 0 (* 0.0 *) in
    let* α1 : ltac:(refine f64) := M.alloc 0 (* 0.0 *) in
    M.alloc {| box_stack_heap.Point.x := α0; box_stack_heap.Point.y := α1; |}).

Definition boxed_origin
    `{ℋ : State.Trait}
    : M (alloc.boxed.Box box_stack_heap.Point alloc.boxed.Box.Default.A) :=
  M.function_body
    (let* α0 : ltac:(refine f64) := M.alloc 0 (* 0.0 *) in
    let* α1 : ltac:(refine f64) := M.alloc 0 (* 0.0 *) in
    let* α2 : ltac:(refine box_stack_heap.Point) :=
      M.alloc
        {| box_stack_heap.Point.x := α0; box_stack_heap.Point.y := α1; |} in
    (alloc.boxed.Box box_stack_heap.Point alloc.alloc.Global)::["new"] α2).

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* point : ltac:(refine box_stack_heap.Point) := box_stack_heap.origin in
    let* rectangle : ltac:(refine box_stack_heap.Rectangle) :=
      let* α0 : ltac:(refine box_stack_heap.Point) := box_stack_heap.origin in
      let* α1 : ltac:(refine f64) := M.alloc 3 (* 3.0 *) in
      let* α2 : ltac:(refine f64) := M.alloc (- 4 (* 4.0 *)) in
      let* α3 : ltac:(refine box_stack_heap.Point) :=
        M.alloc
          {| box_stack_heap.Point.x := α1; box_stack_heap.Point.y := α2; |} in
      M.alloc
        {|
          box_stack_heap.Rectangle.top_left := α0;
          box_stack_heap.Rectangle.bottom_right := α3;
        |} in
    let* boxed_rectangle :
        ltac:(refine
          (alloc.boxed.Box box_stack_heap.Rectangle alloc.alloc.Global)) :=
      let* α0 : ltac:(refine box_stack_heap.Point) := box_stack_heap.origin in
      let* α1 : ltac:(refine f64) := M.alloc 3 (* 3.0 *) in
      let* α2 : ltac:(refine f64) := M.alloc (- 4 (* 4.0 *)) in
      let* α3 : ltac:(refine box_stack_heap.Point) :=
        M.alloc
          {| box_stack_heap.Point.x := α1; box_stack_heap.Point.y := α2; |} in
      let* α4 : ltac:(refine box_stack_heap.Rectangle) :=
        M.alloc
          {|
            box_stack_heap.Rectangle.top_left := α0;
            box_stack_heap.Rectangle.bottom_right := α3;
          |} in
      (alloc.boxed.Box box_stack_heap.Rectangle alloc.alloc.Global)::["new"]
        α4 in
    let* boxed_point :
        ltac:(refine
          (alloc.boxed.Box box_stack_heap.Point alloc.alloc.Global)) :=
      let* α0 : ltac:(refine box_stack_heap.Point) := box_stack_heap.origin in
      (alloc.boxed.Box box_stack_heap.Point alloc.alloc.Global)::["new"] α0 in
    let* box_in_a_box :
        ltac:(refine
          (alloc.boxed.Box
            (alloc.boxed.Box box_stack_heap.Point alloc.alloc.Global)
            alloc.alloc.Global)) :=
      let* α0 :
          ltac:(refine
            (alloc.boxed.Box box_stack_heap.Point alloc.alloc.Global)) :=
        box_stack_heap.boxed_origin in
      (alloc.boxed.Box
            (alloc.boxed.Box box_stack_heap.Point alloc.alloc.Global)
            alloc.alloc.Global)::["new"]
        α0 in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "Point occupies "; mk_str " bytes on the stack
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine (ref box_stack_heap.Point)) := borrow point in
        let* α6 : ltac:(refine box_stack_heap.Point) := deref α5 in
        let* α7 : ltac:(refine (ref box_stack_heap.Point)) := borrow α6 in
        let* α8 : ltac:(refine usize) := core.mem.size_of_val α7 in
        let* α9 : ltac:(refine (ref usize)) := borrow α8 in
        let* α10 : ltac:(refine usize) := deref α9 in
        let* α11 : ltac:(refine (ref usize)) := borrow α10 in
        let* α12 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_display"] α11 in
        let* α13 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α12 ] in
        let* α14 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α13 in
        let* α15 : ltac:(refine (array core.fmt.rt.Argument)) := deref α14 in
        let* α16 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α15 in
        let* α17 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α16 in
        let* α18 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α4 α17 in
        std.io.stdio._print α18 in
      M.alloc tt in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc
            [ mk_str "Rectangle occupies "; mk_str " bytes on the stack
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine (ref box_stack_heap.Rectangle)) :=
          borrow rectangle in
        let* α6 : ltac:(refine box_stack_heap.Rectangle) := deref α5 in
        let* α7 : ltac:(refine (ref box_stack_heap.Rectangle)) := borrow α6 in
        let* α8 : ltac:(refine usize) := core.mem.size_of_val α7 in
        let* α9 : ltac:(refine (ref usize)) := borrow α8 in
        let* α10 : ltac:(refine usize) := deref α9 in
        let* α11 : ltac:(refine (ref usize)) := borrow α10 in
        let* α12 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_display"] α11 in
        let* α13 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α12 ] in
        let* α14 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α13 in
        let* α15 : ltac:(refine (array core.fmt.rt.Argument)) := deref α14 in
        let* α16 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α15 in
        let* α17 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α16 in
        let* α18 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α4 α17 in
        std.io.stdio._print α18 in
      M.alloc tt in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc
            [ mk_str "Boxed point occupies "; mk_str " bytes on the stack
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 :
            ltac:(refine
              (ref
                (alloc.boxed.Box box_stack_heap.Point alloc.alloc.Global))) :=
          borrow boxed_point in
        let* α6 :
            ltac:(refine
              (alloc.boxed.Box box_stack_heap.Point alloc.alloc.Global)) :=
          deref α5 in
        let* α7 :
            ltac:(refine
              (ref
                (alloc.boxed.Box box_stack_heap.Point alloc.alloc.Global))) :=
          borrow α6 in
        let* α8 : ltac:(refine usize) := core.mem.size_of_val α7 in
        let* α9 : ltac:(refine (ref usize)) := borrow α8 in
        let* α10 : ltac:(refine usize) := deref α9 in
        let* α11 : ltac:(refine (ref usize)) := borrow α10 in
        let* α12 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_display"] α11 in
        let* α13 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α12 ] in
        let* α14 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α13 in
        let* α15 : ltac:(refine (array core.fmt.rt.Argument)) := deref α14 in
        let* α16 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α15 in
        let* α17 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α16 in
        let* α18 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α4 α17 in
        std.io.stdio._print α18 in
      M.alloc tt in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc
            [ mk_str "Boxed rectangle occupies "; mk_str " bytes on the stack
"
            ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 :
            ltac:(refine
              (ref
                (alloc.boxed.Box
                  box_stack_heap.Rectangle
                  alloc.alloc.Global))) :=
          borrow boxed_rectangle in
        let* α6 :
            ltac:(refine
              (alloc.boxed.Box box_stack_heap.Rectangle alloc.alloc.Global)) :=
          deref α5 in
        let* α7 :
            ltac:(refine
              (ref
                (alloc.boxed.Box
                  box_stack_heap.Rectangle
                  alloc.alloc.Global))) :=
          borrow α6 in
        let* α8 : ltac:(refine usize) := core.mem.size_of_val α7 in
        let* α9 : ltac:(refine (ref usize)) := borrow α8 in
        let* α10 : ltac:(refine usize) := deref α9 in
        let* α11 : ltac:(refine (ref usize)) := borrow α10 in
        let* α12 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_display"] α11 in
        let* α13 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α12 ] in
        let* α14 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α13 in
        let* α15 : ltac:(refine (array core.fmt.rt.Argument)) := deref α14 in
        let* α16 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α15 in
        let* α17 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α16 in
        let* α18 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α4 α17 in
        std.io.stdio._print α18 in
      M.alloc tt in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc
            [ mk_str "Boxed box occupies "; mk_str " bytes on the stack
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 :
            ltac:(refine
              (ref
                (alloc.boxed.Box
                  (alloc.boxed.Box box_stack_heap.Point alloc.alloc.Global)
                  alloc.alloc.Global))) :=
          borrow box_in_a_box in
        let* α6 :
            ltac:(refine
              (alloc.boxed.Box
                (alloc.boxed.Box box_stack_heap.Point alloc.alloc.Global)
                alloc.alloc.Global)) :=
          deref α5 in
        let* α7 :
            ltac:(refine
              (ref
                (alloc.boxed.Box
                  (alloc.boxed.Box box_stack_heap.Point alloc.alloc.Global)
                  alloc.alloc.Global))) :=
          borrow α6 in
        let* α8 : ltac:(refine usize) := core.mem.size_of_val α7 in
        let* α9 : ltac:(refine (ref usize)) := borrow α8 in
        let* α10 : ltac:(refine usize) := deref α9 in
        let* α11 : ltac:(refine (ref usize)) := borrow α10 in
        let* α12 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_display"] α11 in
        let* α13 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α12 ] in
        let* α14 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α13 in
        let* α15 : ltac:(refine (array core.fmt.rt.Argument)) := deref α14 in
        let* α16 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α15 in
        let* α17 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α16 in
        let* α18 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α4 α17 in
        std.io.stdio._print α18 in
      M.alloc tt in
    let* unboxed_point : ltac:(refine box_stack_heap.Point) :=
      deref boxed_point in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc
            [ mk_str "Unboxed point occupies "; mk_str " bytes on the stack
"
            ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine (ref box_stack_heap.Point)) :=
          borrow unboxed_point in
        let* α6 : ltac:(refine box_stack_heap.Point) := deref α5 in
        let* α7 : ltac:(refine (ref box_stack_heap.Point)) := borrow α6 in
        let* α8 : ltac:(refine usize) := core.mem.size_of_val α7 in
        let* α9 : ltac:(refine (ref usize)) := borrow α8 in
        let* α10 : ltac:(refine usize) := deref α9 in
        let* α11 : ltac:(refine (ref usize)) := borrow α10 in
        let* α12 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_display"] α11 in
        let* α13 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α12 ] in
        let* α14 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α13 in
        let* α15 : ltac:(refine (array core.fmt.rt.Argument)) := deref α14 in
        let* α16 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α15 in
        let* α17 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α16 in
        let* α18 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α4 α17 in
        std.io.stdio._print α18 in
      M.alloc tt in
    M.alloc tt).
