(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Circle.
Section Circle.
  Record t : Set := {
    radius : i32.t;
  }.
  
  Global Instance Get_radius : Notations.Dot "radius" := {
    Notations.dot :=
      Ref.map (fun x => x.(radius)) (fun v x => x <| radius := v |>);
  }.
  Global Instance Get_AF_radius : Notations.DoubleColon t "radius" := {
    Notations.double_colon (x : M.Val t) := x.["radius"];
  }.
End Circle.
End Circle.

Module  Impl_core_fmt_Display_for_converting_to_string_Circle_t.
Section Impl_core_fmt_Display_for_converting_to_string_Circle_t.
  Ltac Self := exact converting_to_string.Circle.t.
  
  (*
      fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
          write!(f, "Circle of radius {}", self.radius)
      }
  *)
  Parameter fmt :
      (M.Val (ref ltac:(Self))) ->
        (M.Val (mut_ref core.fmt.Formatter.t)) ->
        M ltac:(core.fmt.Result).
  
  Global Instance AssociatedFunction_fmt :
    Notations.DoubleColon ltac:(Self) "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Display.Trait ltac:(Self) := {
    core.fmt.Display.fmt := fmt;
  }.
End Impl_core_fmt_Display_for_converting_to_string_Circle_t.
End Impl_core_fmt_Display_for_converting_to_string_Circle_t.

(*
fn main() {
    let circle = Circle { radius: 6 };
    circle.to_string();
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.
