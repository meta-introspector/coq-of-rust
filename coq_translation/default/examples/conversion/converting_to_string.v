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
  Definition fmt
      (self : M.Val (ref ltac:(Self)))
      (f : M.Val (mut_ref core.fmt.Formatter.t))
      : M (M.Val ltac:(core.fmt.Result)) :=
    M.function_body
      (let* α0 : ltac:(refine (M.Val core.fmt.Formatter.t)) := deref f in
      let* α1 : ltac:(refine (M.Val (mut_ref core.fmt.Formatter.t))) :=
        borrow_mut α0 in
      let* α2 : ltac:(refine (M.Val (array (ref str.t)))) :=
        M.alloc [ mk_str "Circle of radius " ] in
      let* α3 : ltac:(refine (M.Val (ref (array (ref str.t))))) := borrow α2 in
      let* α4 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
        pointer_coercion "Unsize" α3 in
      let* α5 : ltac:(refine (M.Val converting_to_string.Circle.t)) :=
        deref self in
      let* α6 : ltac:(refine (M.Val (ref i32.t))) := borrow α5.["radius"] in
      let* α7 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
        core.fmt.rt.Argument.t::["new_display"] α6 in
      let* α8 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
        M.alloc [ α7 ] in
      let* α9 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
        borrow α8 in
      let* α10 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
        pointer_coercion "Unsize" α9 in
      let* α11 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
        core.fmt.Arguments.t::["new_v1"] α4 α10 in
      core.fmt.Formatter.t::["write_fmt"] α1 α11).
  
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
Definition main : M (M.Val unit) :=
  M.function_body
    (let* circle : ltac:(refine (M.Val converting_to_string.Circle.t)) :=
      let* α0 : ltac:(refine (M.Val i32.t)) := M.alloc 6 in
      let* α1 := M.read α0 in
      M.alloc {| converting_to_string.Circle.radius := α1; |} in
    let* _ : ltac:(refine (M.Val alloc.string.String.t)) :=
      let* α0 : ltac:(refine (M.Val (ref converting_to_string.Circle.t))) :=
        borrow circle in
      (alloc.string.ToString.to_string
          (Self := converting_to_string.Circle.t)
          (Trait := ltac:(refine _)))
        α0 in
    M.alloc tt).
