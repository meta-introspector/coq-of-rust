(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

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

Module Impl_associated_functions_and_methods_Point.
  Definition Self := associated_functions_and_methods.Point.
  
  Parameter origin : forall `{H : State.Trait},
      M (H := H) associated_functions_and_methods.Point.
  
  Global Instance AssociatedFunction_origin `{H : State.Trait} :
    Notation.DoubleColon Self "origin" := {
    Notation.double_colon := origin;
  }.
  
  Parameter new : forall `{H : State.Trait},
      f64 ->
      f64 ->
      M (H := H) associated_functions_and_methods.Point.
  
  Global Instance AssociatedFunction_new `{H : State.Trait} :
    Notation.DoubleColon Self "new" := {
    Notation.double_colon := new;
  }.
End Impl_associated_functions_and_methods_Point.

Module Rectangle.
  Unset Primitive Projections.
  Record t : Set := {
    p1 : associated_functions_and_methods.Point;
    p2 : associated_functions_and_methods.Point;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_p1 : Notation.Dot "p1" := {
    Notation.dot '(Build_t x0 _) := x0;
  }.
  Global Instance Get_p2 : Notation.Dot "p2" := {
    Notation.dot '(Build_t _ x1) := x1;
  }.
End Rectangle.
Definition Rectangle : Set := Rectangle.t.

Module Impl_associated_functions_and_methods_Rectangle.
  Definition Self := associated_functions_and_methods.Rectangle.
  
  Parameter get_p1 : forall `{H : State.Trait},
      ref Self ->
      M (H := H) associated_functions_and_methods.Point.
  
  Global Instance Method_get_p1 `{H : State.Trait} : Notation.Dot "get_p1" := {
    Notation.dot := get_p1;
  }.
  
  Parameter area : forall `{H : State.Trait}, ref Self -> M (H := H) f64.
  
  Global Instance Method_area `{H : State.Trait} : Notation.Dot "area" := {
    Notation.dot := area;
  }.
  
  Parameter perimeter : forall `{H : State.Trait}, ref Self -> M (H := H) f64.
  
  Global Instance Method_perimeter `{H : State.Trait} :
    Notation.Dot "perimeter" := {
    Notation.dot := perimeter;
  }.
  
  Parameter translate : forall `{H : State.Trait},
      mut_ref Self ->
      f64 ->
      f64 ->
      M (H := H) unit.
  
  Global Instance Method_translate `{H : State.Trait} :
    Notation.Dot "translate" := {
    Notation.dot := translate;
  }.
End Impl_associated_functions_and_methods_Rectangle.

Module Pair.
  Unset Primitive Projections.
  Record t : Set := {
    _ : alloc.boxed.Box i32;
    _ : alloc.boxed.Box i32;
  }.
  Global Set Primitive Projections.
  
    Global Instance Get_0 : Notation.Dot 0 := {
      Notation.dot '(Build_t x0 _) := x0;
    }.
    Global Instance Get_1 : Notation.Dot 1 := {
      Notation.dot '(Build_t _ x1) := x1;
    }.
End Pair.
Definition Pair := Pair.t.

Module Impl_associated_functions_and_methods_Pair.
  Definition Self := associated_functions_and_methods.Pair.
  
  Parameter destroy : forall `{H : State.Trait}, Self -> M (H := H) unit.
  
  Global Instance Method_destroy `{H : State.Trait} :
    Notation.Dot "destroy" := {
    Notation.dot := destroy;
  }.
End Impl_associated_functions_and_methods_Pair.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{H : State.Trait}, M (H := H) unit.
