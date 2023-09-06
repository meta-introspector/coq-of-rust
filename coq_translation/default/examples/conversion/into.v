(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Number.
  Unset Primitive Projections.
  Record t : Set := {
    value : i32;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_value : Notation.Dot "value" := {
    Notation.dot '(Build_t x0) := x0;
  }.
End Number.
Definition Number := @Number.t.

Module Impl_core_convert_From_for_into_Number.
  Definition Self := into.Number.
  
  Definition from `{H' : State.Trait} (item : i32) : M (H := H') Self :=
    Pure {| into.Number.value := item; |}.
  
  Global Instance AssociatedFunction_from `{H' : State.Trait} :
    Notation.DoubleColon Self "from" := {
    Notation.double_colon := from;
  }.
  
  Global Instance I : core.convert.From.Trait Self (T := i32) := {
    core.convert.From.from `{H' : State.Trait} := from;
  }.
  Global Hint Resolve I : core.
End Impl_core_convert_From_for_into_Number.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H' : State.Trait} : M (H := H') unit :=
  let* _ := 5.["into"] : M into.Number in
  Pure tt.
