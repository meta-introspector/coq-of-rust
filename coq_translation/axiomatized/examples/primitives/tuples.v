(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Parameter reverse : forall `{H : State.Trait},
    i32 * bool ->
    M (H := H) (bool * i32).

Module Matrix.
  Unset Primitive Projections.
  Record t : Set := {
    _ : f32;
    _ : f32;
    _ : f32;
    _ : f32;
  }.
  Global Set Primitive Projections.
  
    Global Instance Get_0 : Notation.Dot 0 := {
      Notation.dot '(Build_t x0 _ _ _) := x0;
    }.
    Global Instance Get_1 : Notation.Dot 1 := {
      Notation.dot '(Build_t _ x1 _ _) := x1;
    }.
    Global Instance Get_2 : Notation.Dot 2 := {
      Notation.dot '(Build_t _ _ x2 _) := x2;
    }.
    Global Instance Get_3 : Notation.Dot 3 := {
      Notation.dot '(Build_t _ _ _ x3) := x3;
    }.
End Matrix.
Definition Matrix := Matrix.t.

Module Impl_core_fmt_Debug_for_tuples_Matrix.
  Definition Self := tuples.Matrix.
  
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
End Impl_core_fmt_Debug_for_tuples_Matrix.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{H : State.Trait}, M (H := H) unit.
