(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Circle.
Section Circle.
  Record t : Set := {
    radius : i32.t;
  }.
  
  Definition Get_radius :=
    Ref.map (fun α => Some α.(radius)) (fun β α => Some (α <| radius := β |>)).
End Circle.
End Circle.

Module  Impl_core_fmt_Display_for_converting_to_string_Circle_t.
Section Impl_core_fmt_Display_for_converting_to_string_Circle_t.
  Definition Self : Set := converting_to_string.Circle.t.
  
  Parameter fmt :
      (ref Self) -> (mut_ref core.fmt.Formatter.t) -> M ltac:(core.fmt.Result).
  
  Global Instance AssociatedFunction_fmt : Notations.DoubleColon Self "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Display.Trait Self := {
    core.fmt.Display.fmt := fmt;
  }.
End Impl_core_fmt_Display_for_converting_to_string_Circle_t.
End Impl_core_fmt_Display_for_converting_to_string_Circle_t.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.
