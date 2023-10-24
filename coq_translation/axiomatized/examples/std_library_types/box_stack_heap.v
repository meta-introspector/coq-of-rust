(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - struct was ignored by the compiler *)
Module Point.
  Section Point.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Record t : Set := {
      x : f64;
      y : f64;
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

Module Impl_core_fmt_Debug_for_box_stack_heap_Point.
  Section Impl_core_fmt_Debug_for_box_stack_heap_Point.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := box_stack_heap.Point.
    
    (* #[allow(dead_code)] - function was ignored by the compiler *)
    Parameter fmt :
        (ref Self) -> (mut_ref core.fmt.Formatter) -> M core.fmt.Result.
    
    Global Instance AssociatedFunction_fmt :
      Notation.DoubleColon Self "fmt" := {
      Notation.double_colon := fmt;
    }.
    
    Global Instance ℐ : core.fmt.Debug.Trait Self := {
      core.fmt.Debug.fmt := fmt;
    }.
  End Impl_core_fmt_Debug_for_box_stack_heap_Point.
  Global Hint Resolve ℐ : core.
End Impl_core_fmt_Debug_for_box_stack_heap_Point.

Module Impl_core_clone_Clone_for_box_stack_heap_Point.
  Section Impl_core_clone_Clone_for_box_stack_heap_Point.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := box_stack_heap.Point.
    
    (* #[allow(dead_code)] - function was ignored by the compiler *)
    Parameter clone : (ref Self) -> M box_stack_heap.Point.
    
    Global Instance AssociatedFunction_clone :
      Notation.DoubleColon Self "clone" := {
      Notation.double_colon := clone;
    }.
    
    Global Instance ℐ : core.clone.Clone.Trait Self := {
      core.clone.Clone.clone := clone;
    }.
  End Impl_core_clone_Clone_for_box_stack_heap_Point.
  Global Hint Resolve ℐ : core.
End Impl_core_clone_Clone_for_box_stack_heap_Point.

Module Impl_core_marker_Copy_for_box_stack_heap_Point.
  Section Impl_core_marker_Copy_for_box_stack_heap_Point.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := box_stack_heap.Point.
    
    Global Instance ℐ : core.marker.Copy.Trait Self := {
    }.
  End Impl_core_marker_Copy_for_box_stack_heap_Point.
  Global Hint Resolve ℐ : core.
End Impl_core_marker_Copy_for_box_stack_heap_Point.

(* #[allow(dead_code)] - struct was ignored by the compiler *)
Module Rectangle.
  Section Rectangle.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Record t : Set := {
      top_left : box_stack_heap.Point;
      bottom_right : box_stack_heap.Point;
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
    Global Instance Get_AF_bottom_right
      : Notation.DoubleColon t "bottom_right" := {
      Notation.double_colon x
        :=
        let* x := M.read x in Pure x.(bottom_right) : M _;
    }.
  End Rectangle.
End Rectangle.
Definition Rectangle `{ℋ : State.Trait} : Set := M.val Rectangle.t.

Parameter origin : forall `{ℋ : State.Trait}, M box_stack_heap.Point.

Parameter boxed_origin :
    forall `{ℋ : State.Trait},
    M (alloc.boxed.Box box_stack_heap.Point alloc.boxed.Box.Default.A).

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{ℋ : State.Trait}, M unit.
