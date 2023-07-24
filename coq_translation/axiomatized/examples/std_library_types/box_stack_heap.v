(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - struct was ignored by the compiler *)
Module Point.
  Unset Primitive Projections.
  Record t : Set := {
    x : f64;
    y : f64;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_x : Notation.Dot "x" := {
    Notation.dot '(Build_t x0 _) := x0;
  }.
  Global Instance Get_y : Notation.Dot "y" := {
    Notation.dot '(Build_t _ x1) := x1;
  }.
End Point.
Definition Point : Set := Point.t.

Module Impl_core_fmt_Debug_for_box_stack_heap_Point.
  Definition Self := box_stack_heap.Point.
  
  (* #[allow(dead_code)] - function was ignored by the compiler *)
  Parameter debug_struct_field2_finish : core.fmt.Formatter -> string -> 
    string -> f64 -> 
    string -> f64 -> 
    M (H := H) core.fmt.Result.
  
  Global Instance Deb_debug_struct_field2_finish : Notation.DoubleColon
    core.fmt.Formatter "debug_struct_field2_finish" := {
    Notation.double_colon := debug_struct_field2_finish; }.
  
  Parameter fmt : forall `{H : State.Trait},
      ref Self ->
      mut_ref core.fmt.Formatter ->
      M (H := H) core.fmt.Result.
  
  Global Instance Method_fmt `{H : State.Trait} : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt `{H : State.Trait} := fmt;
  }.
End Impl_core_fmt_Debug_for_box_stack_heap_Point.

Module Impl_core_clone_Clone_for_box_stack_heap_Point.
  Definition Self := box_stack_heap.Point.
  
  (* #[allow(dead_code)] - function was ignored by the compiler *)
  Parameter clone : forall `{H : State.Trait},
      ref Self ->
      M (H := H) box_stack_heap.Point.
  
  Global Instance Method_clone `{H : State.Trait} : Notation.Dot "clone" := {
    Notation.dot := clone;
  }.
  
  Global Instance I : core.clone.Clone.Trait Self := {
    core.clone.Clone.clone `{H : State.Trait} := clone;
  }.
End Impl_core_clone_Clone_for_box_stack_heap_Point.

Module Impl_core_marker_Copy_for_box_stack_heap_Point.
  Definition Self := box_stack_heap.Point.
  
  Global Instance I : core.marker.Copy.Trait Self :=
    core.marker.Copy.Build_Trait _.
End Impl_core_marker_Copy_for_box_stack_heap_Point.

(* #[allow(dead_code)] - struct was ignored by the compiler *)
Module Rectangle.
  Unset Primitive Projections.
  Record t : Set := {
    top_left : box_stack_heap.Point;
    bottom_right : box_stack_heap.Point;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_top_left : Notation.Dot "top_left" := {
    Notation.dot '(Build_t x0 _) := x0;
  }.
  Global Instance Get_bottom_right : Notation.Dot "bottom_right" := {
    Notation.dot '(Build_t _ x1) := x1;
  }.
End Rectangle.
Definition Rectangle : Set := Rectangle.t.

Parameter origin : forall `{H : State.Trait}, M (H := H) box_stack_heap.Point.

Parameter boxed_origin : forall `{H : State.Trait},
    M (H := H) (alloc.boxed.Box box_stack_heap.Point).

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{H : State.Trait}, M (H := H) unit.
