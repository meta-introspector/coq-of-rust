(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Years.
Section Years.
  Record t : Set := {
    x0 : i64.t;
  }.
  
  Global Instance Get_0 : Notations.Dot "0" := {
    Notations.dot := Ref.map (fun x => x.(x0)) (fun v x => x <| x0 := v |>);
  }.
End Years.
End Years.

Module  Days.
Section Days.
  Record t : Set := {
    x0 : i64.t;
  }.
  
  Global Instance Get_0 : Notations.Dot "0" := {
    Notations.dot := Ref.map (fun x => x.(x0)) (fun v x => x <| x0 := v |>);
  }.
End Days.
End Days.

Module  Impl_generics_new_type_idiom_Years_t.
Section Impl_generics_new_type_idiom_Years_t.
  Ltac Self := exact generics_new_type_idiom.Years.t.
  
  (*
      pub fn to_days(&self) -> Days {
          Days(self.0 * 365)
      }
  *)
  Definition to_days
      (self : M.Val (ref ltac:(Self)))
      : M (M.Val generics_new_type_idiom.Days.t) :=
    M.function_body
      (let* α0 : ltac:(refine (M.Val generics_new_type_idiom.Years.t)) :=
        deref self in
      let* α1 : ltac:(refine (M.Val i64.t)) := M.alloc 365 in
      let* α2 : ltac:(refine (M.Val i64.t)) := BinOp.mul α0.["0"] α1 in
      let* α3 := M.read α2 in
      M.alloc (generics_new_type_idiom.Days.Build_t α3)).
  
  Global Instance AssociatedFunction_to_days :
    Notations.DoubleColon ltac:(Self) "to_days" := {
    Notations.double_colon := to_days;
  }.
End Impl_generics_new_type_idiom_Years_t.
End Impl_generics_new_type_idiom_Years_t.

Module  Impl_generics_new_type_idiom_Days_t.
Section Impl_generics_new_type_idiom_Days_t.
  Ltac Self := exact generics_new_type_idiom.Days.t.
  
  (*
      pub fn to_years(&self) -> Years {
          Years(self.0 / 365)
      }
  *)
  Definition to_years
      (self : M.Val (ref ltac:(Self)))
      : M (M.Val generics_new_type_idiom.Years.t) :=
    M.function_body
      (let* α0 : ltac:(refine (M.Val generics_new_type_idiom.Days.t)) :=
        deref self in
      let* α1 : ltac:(refine (M.Val i64.t)) := M.alloc 365 in
      let* α2 : ltac:(refine (M.Val i64.t)) := BinOp.div α0.["0"] α1 in
      let* α3 := M.read α2 in
      M.alloc (generics_new_type_idiom.Years.Build_t α3)).
  
  Global Instance AssociatedFunction_to_years :
    Notations.DoubleColon ltac:(Self) "to_years" := {
    Notations.double_colon := to_years;
  }.
End Impl_generics_new_type_idiom_Days_t.
End Impl_generics_new_type_idiom_Days_t.

(*
fn old_enough(age: &Years) -> bool {
    age.0 >= 18
}
*)
Definition old_enough
    (age : M.Val (ref generics_new_type_idiom.Years.t))
    : M (M.Val bool.t) :=
  M.function_body
    (let* α0 : ltac:(refine (M.Val generics_new_type_idiom.Years.t)) :=
      deref age in
    let* α1 : ltac:(refine (M.Val i64.t)) := M.alloc 18 in
    BinOp.ge α0.["0"] α1).

(*
fn main() {
    let age = Years(5);
    let age_days = age.to_days();
    println!("Old enough {}", old_enough(&age));
    println!("Old enough {}", old_enough(&age_days.to_years()));
    // println!("Old enough {}", old_enough(&age_days));
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M (M.Val unit) :=
  M.function_body
    (let* age : ltac:(refine (M.Val generics_new_type_idiom.Years.t)) :=
      let* α0 : ltac:(refine (M.Val i64.t)) := M.alloc 5 in
      let* α1 := M.read α0 in
      M.alloc (generics_new_type_idiom.Years.Build_t α1) in
    let* age_days : ltac:(refine (M.Val generics_new_type_idiom.Days.t)) :=
      let* α0 : ltac:(refine (M.Val (ref generics_new_type_idiom.Years.t))) :=
        borrow age in
      generics_new_type_idiom.Years.t::["to_days"] α0 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "Old enough "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref generics_new_type_idiom.Years.t))) :=
          borrow age in
        let* α4 : ltac:(refine (M.Val bool.t)) :=
          generics_new_type_idiom.old_enough α3 in
        let* α5 : ltac:(refine (M.Val (ref bool.t))) := borrow α4 in
        let* α6 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α5 in
        let* α7 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α6 ] in
        let* α8 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α7 in
        let* α9 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α8 in
        let* α10 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α9 in
        std.io.stdio._print α10 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "Old enough "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref generics_new_type_idiom.Days.t))) :=
          borrow age_days in
        let* α4 : ltac:(refine (M.Val generics_new_type_idiom.Years.t)) :=
          generics_new_type_idiom.Days.t::["to_years"] α3 in
        let* α5 : ltac:(refine (M.Val (ref generics_new_type_idiom.Years.t))) :=
          borrow α4 in
        let* α6 : ltac:(refine (M.Val bool.t)) :=
          generics_new_type_idiom.old_enough α5 in
        let* α7 : ltac:(refine (M.Val (ref bool.t))) := borrow α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α7 in
        let* α9 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α8 ] in
        let* α10 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α9 in
        let* α11 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α10 in
        let* α12 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α11 in
        std.io.stdio._print α12 in
      M.alloc tt in
    M.alloc tt).
