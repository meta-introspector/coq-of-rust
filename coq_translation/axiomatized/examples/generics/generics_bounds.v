(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module HasArea.
  Class Trait (Self : Set) `{State.Trait} : Type := {
    area : (ref Self) -> M f64;
  }.
  
  Global Instance Method_area `{State.Trait} `(Trait) : Notation.Dot "area" := {
    Notation.dot := area;
  }.
End HasArea.

Module Impl_generics_bounds_HasArea_for_generics_bounds_Rectangle.
  Definition Self `{State.Trait} := generics_bounds.Rectangle.
  
  Parameter area : forall `{State.Trait}, (ref Self) -> M f64.
  
  Global Instance Method_area `{State.Trait} : Notation.Dot "area" := {
    Notation.dot := area;
  }.
  
  Global Instance I `{State.Trait} : generics_bounds.HasArea.Trait Self := {
    generics_bounds.HasArea.area := area;
  }.
  Global Hint Resolve I : core.
End Impl_generics_bounds_HasArea_for_generics_bounds_Rectangle.

Module Rectangle.
  Unset Primitive Projections.
  Record t `{State.Trait} : Set := {
    length : f64;
    height : f64;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_length `{State.Trait} : Notation.Dot "length" := {
    Notation.dot x := let* x := M.read x in Pure x.(length) : M _;
  }.
  Global Instance Get_AF_length `{State.Trait}
    : Notation.DoubleColon t "length" := {
    Notation.double_colon x := let* x := M.read x in Pure x.(length) : M _;
  }.
  Global Instance Get_height `{State.Trait} : Notation.Dot "height" := {
    Notation.dot x := let* x := M.read x in Pure x.(height) : M _;
  }.
  Global Instance Get_AF_height `{State.Trait}
    : Notation.DoubleColon t "height" := {
    Notation.double_colon x := let* x := M.read x in Pure x.(height) : M _;
  }.
End Rectangle.
Definition Rectangle `{State.Trait} : Set := M.val (Rectangle.t).

Module Impl_core_fmt_Debug_for_generics_bounds_Rectangle.
  Definition Self `{State.Trait} := generics_bounds.Rectangle.
  
  Parameter fmt :
      forall `{State.Trait},
      (ref Self) -> (mut_ref core.fmt.Formatter) -> M core.fmt.Result.
  
  Global Instance Method_fmt `{State.Trait} : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I `{State.Trait} : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
  Global Hint Resolve I : core.
End Impl_core_fmt_Debug_for_generics_bounds_Rectangle.

(* #[allow(dead_code)] - struct was ignored by the compiler *)
Module Triangle.
  Unset Primitive Projections.
  Record t `{State.Trait} : Set := {
    length : f64;
    height : f64;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_length `{State.Trait} : Notation.Dot "length" := {
    Notation.dot x := let* x := M.read x in Pure x.(length) : M _;
  }.
  Global Instance Get_AF_length `{State.Trait}
    : Notation.DoubleColon t "length" := {
    Notation.double_colon x := let* x := M.read x in Pure x.(length) : M _;
  }.
  Global Instance Get_height `{State.Trait} : Notation.Dot "height" := {
    Notation.dot x := let* x := M.read x in Pure x.(height) : M _;
  }.
  Global Instance Get_AF_height `{State.Trait}
    : Notation.DoubleColon t "height" := {
    Notation.double_colon x := let* x := M.read x in Pure x.(height) : M _;
  }.
End Triangle.
Definition Triangle `{State.Trait} : Set := M.val (Triangle.t).

Parameter print_debug :
    forall `{State.Trait} {T : Set} `{core.fmt.Debug.Trait T},
    (ref T) -> M unit.

Parameter area :
    forall `{State.Trait} {T : Set} `{generics_bounds.HasArea.Trait T},
    (ref T) -> M f64.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{State.Trait}, M unit.
