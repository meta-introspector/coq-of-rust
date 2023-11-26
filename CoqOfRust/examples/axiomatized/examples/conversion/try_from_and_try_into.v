(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  EvenNumber.
Section EvenNumber.
  Record t : Set := {
    x0 : i32.t;
  }.
  
  Global Instance Get_0 : Notations.Dot "0" := {
    Notations.dot := Ref.map (fun x => x.(x0)) (fun v x => x <| x0 := v |>);
  }.
End EvenNumber.
End EvenNumber.

Module  Impl_core_fmt_Debug_for_try_from_and_try_into_EvenNumber_t.
Section Impl_core_fmt_Debug_for_try_from_and_try_into_EvenNumber_t.
  Ltac Self := exact try_from_and_try_into.EvenNumber.t.
  
  (*
  Debug
  *)
  Parameter fmt :
      (M.Val (ref ltac:(Self))) ->
        (M.Val (mut_ref core.fmt.Formatter.t)) ->
        M ltac:(core.fmt.Result).
  
  Global Instance AssociatedFunction_fmt :
    Notations.DoubleColon ltac:(Self) "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait ltac:(Self) := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_try_from_and_try_into_EvenNumber_t.
End Impl_core_fmt_Debug_for_try_from_and_try_into_EvenNumber_t.

Module  Impl_core_marker_StructuralPartialEq_for_try_from_and_try_into_EvenNumber_t.
Section Impl_core_marker_StructuralPartialEq_for_try_from_and_try_into_EvenNumber_t.
  Ltac Self := exact try_from_and_try_into.EvenNumber.t.
  
  Global Instance ℐ : core.marker.StructuralPartialEq.Trait ltac:(Self) := {
  }.
End Impl_core_marker_StructuralPartialEq_for_try_from_and_try_into_EvenNumber_t.
End Impl_core_marker_StructuralPartialEq_for_try_from_and_try_into_EvenNumber_t.

Module  Impl_core_cmp_PartialEq_for_try_from_and_try_into_EvenNumber_t.
Section Impl_core_cmp_PartialEq_for_try_from_and_try_into_EvenNumber_t.
  Ltac Self := exact try_from_and_try_into.EvenNumber.t.
  
  (*
  PartialEq
  *)
  Parameter eq :
      (M.Val (ref ltac:(Self))) ->
        (M.Val (ref try_from_and_try_into.EvenNumber.t)) ->
        M bool.t.
  
  Global Instance AssociatedFunction_eq :
    Notations.DoubleColon ltac:(Self) "eq" := {
    Notations.double_colon := eq;
  }.
  
  Global Instance ℐ :
    core.cmp.PartialEq.Required.Trait ltac:(Self)
      (Rhs := core.cmp.PartialEq.Default.Rhs ltac:(Self)) := {
    core.cmp.PartialEq.eq := eq;
    core.cmp.PartialEq.ne := Datatypes.None;
  }.
End Impl_core_cmp_PartialEq_for_try_from_and_try_into_EvenNumber_t.
End Impl_core_cmp_PartialEq_for_try_from_and_try_into_EvenNumber_t.

Module  Impl_core_convert_TryFrom_i32_t_for_try_from_and_try_into_EvenNumber_t.
Section Impl_core_convert_TryFrom_i32_t_for_try_from_and_try_into_EvenNumber_t.
  Ltac Self := exact try_from_and_try_into.EvenNumber.t.
  
  (*
      type Error = ();
  *)
  Definition Error : Set := unit.
  
  (*
      fn try_from(value: i32) -> Result<Self, Self::Error> {
          if value % 2 == 0 {
              Ok(EvenNumber(value))
          } else {
              Err(())
          }
      }
  *)
  Parameter try_from :
      (M.Val i32.t) -> M (core.result.Result.t ltac:(Self) Error.t).
  
  Global Instance AssociatedFunction_try_from :
    Notations.DoubleColon ltac:(Self) "try_from" := {
    Notations.double_colon := try_from;
  }.
  
  Global Instance ℐ : core.convert.TryFrom.Trait ltac:(Self) (T := i32.t) := {
    core.convert.TryFrom.Error := Error;
    core.convert.TryFrom.try_from := try_from;
  }.
End Impl_core_convert_TryFrom_i32_t_for_try_from_and_try_into_EvenNumber_t.
End Impl_core_convert_TryFrom_i32_t_for_try_from_and_try_into_EvenNumber_t.

(*
fn main() {
    // TryFrom

    assert_eq!(EvenNumber::try_from(8), Ok(EvenNumber(8)));
    assert_eq!(EvenNumber::try_from(5), Err(()));

    // TryInto

    let result: Result<EvenNumber, ()> = 8i32.try_into();
    assert_eq!(result, Ok(EvenNumber(8)));
    let result: Result<EvenNumber, ()> = 5i32.try_into();
    assert_eq!(result, Err(()));
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.
