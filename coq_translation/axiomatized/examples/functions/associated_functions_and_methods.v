(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Point.
  Section Point.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Record t : Set := {
      x : f64;
      y : f64;
    }.
    Global Set Primitive Projections.
    
    #[refine] Global Instance Get_x : Notation.Dot "x" := {
      Notation.dot x' := let* x' := M.read x' in Pure x'.(x) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_AF_x : Notation.DoubleColon t "x" := {
      Notation.double_colon x' := let* x' := M.read x' in Pure x'.(x) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_y : Notation.Dot "y" := {
      Notation.dot x := let* x := M.read x in Pure x.(y) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_AF_y : Notation.DoubleColon t "y" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(y) : M _;
    }.
    Admitted.
  End Point.
End Point.
Definition Point `{ℋ : State.Trait} : Set := M.val Point.t.

Module Impl_associated_functions_and_methods_Point.
  Section Impl_associated_functions_and_methods_Point.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := associated_functions_and_methods.Point.
    
    Parameter origin : M associated_functions_and_methods.Point.
    
    Global Instance AssociatedFunction_origin :
      Notation.DoubleColon Self "origin" := {
      Notation.double_colon := origin;
    }.
    
    Parameter new : f64 -> f64 -> M associated_functions_and_methods.Point.
    
    Global Instance AssociatedFunction_new :
      Notation.DoubleColon Self "new" := {
      Notation.double_colon := new;
    }.
  End Impl_associated_functions_and_methods_Point.
End Impl_associated_functions_and_methods_Point.

Module Rectangle.
  Section Rectangle.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Record t : Set := {
      p1 : associated_functions_and_methods.Point;
      p2 : associated_functions_and_methods.Point;
    }.
    Global Set Primitive Projections.
    
    #[refine] Global Instance Get_p1 : Notation.Dot "p1" := {
      Notation.dot x := let* x := M.read x in Pure x.(p1) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_AF_p1 : Notation.DoubleColon t "p1" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(p1) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_p2 : Notation.Dot "p2" := {
      Notation.dot x := let* x := M.read x in Pure x.(p2) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_AF_p2 : Notation.DoubleColon t "p2" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(p2) : M _;
    }.
    Admitted.
  End Rectangle.
End Rectangle.
Definition Rectangle `{ℋ : State.Trait} : Set := M.val Rectangle.t.

Module Impl_associated_functions_and_methods_Rectangle.
  Section Impl_associated_functions_and_methods_Rectangle.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := associated_functions_and_methods.Rectangle.
    
    Parameter get_p1 : (ref Self) -> M associated_functions_and_methods.Point.
    
    Global Instance AssociatedFunction_get_p1 :
      Notation.DoubleColon Self "get_p1" := {
      Notation.double_colon := get_p1;
    }.
    
    Parameter area : (ref Self) -> M f64.
    
    Global Instance AssociatedFunction_area :
      Notation.DoubleColon Self "area" := {
      Notation.double_colon := area;
    }.
    
    Parameter perimeter : (ref Self) -> M f64.
    
    Global Instance AssociatedFunction_perimeter :
      Notation.DoubleColon Self "perimeter" := {
      Notation.double_colon := perimeter;
    }.
    
    Parameter translate : (mut_ref Self) -> f64 -> f64 -> M unit.
    
    Global Instance AssociatedFunction_translate :
      Notation.DoubleColon Self "translate" := {
      Notation.double_colon := translate;
    }.
  End Impl_associated_functions_and_methods_Rectangle.
End Impl_associated_functions_and_methods_Rectangle.

Module Pair.
  Section Pair.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Record t : Set := {
      x0 : alloc.boxed.Box i32 alloc.boxed.Box.Default.A;
      x1 : alloc.boxed.Box i32 alloc.boxed.Box.Default.A;
    }.
    Global Set Primitive Projections.
    
    #[refine] Global Instance Get_0 : Notation.Dot "0" := {
      Notation.dot x := let* x := M.read x in Pure x.(x0) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_1 : Notation.Dot "1" := {
      Notation.dot x := let* x := M.read x in Pure x.(x1) : M _;
    }.
    Admitted.
  End Pair.
End Pair.
Definition Pair `{ℋ : State.Trait} : Set := M.val Pair.t.

Module Impl_associated_functions_and_methods_Pair.
  Section Impl_associated_functions_and_methods_Pair.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := associated_functions_and_methods.Pair.
    
    Parameter destroy : Self -> M unit.
    
    Global Instance AssociatedFunction_destroy :
      Notation.DoubleColon Self "destroy" := {
      Notation.double_colon := destroy;
    }.
  End Impl_associated_functions_and_methods_Pair.
End Impl_associated_functions_and_methods_Pair.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{ℋ : State.Trait}, M unit.
