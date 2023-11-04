(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Number.
Section Number.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    value : i32;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_value : Notation.Dot "value" := {
    Notation.dot x := let* x := M.read x in Pure x.(value) : M _;
  }.
  Global Instance Get_AF_value : Notation.DoubleColon t "value" := {
    Notation.double_colon x := let* x := M.read x in Pure x.(value) : M _;
  }.
End Number.
End Number.
Definition Number `{ℋ : State.Trait} : Set := M.val Number.t.

Module  Impl_core_convert_From_i32_for_into_Number.
Section Impl_core_convert_From_i32_for_into_Number.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := into.Number.
  
  Parameter from : i32 -> M Self.
  
  Global Instance AssociatedFunction_from :
    Notation.DoubleColon Self "from" := {
    Notation.double_colon := from;
  }.
  
  Global Instance ℐ : core.convert.From.Trait Self (T := i32) := {
    core.convert.From.from := from;
  }.
End Impl_core_convert_From_i32_for_into_Number.
End Impl_core_convert_From_i32_for_into_Number.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{ℋ : State.Trait}, M unit.
