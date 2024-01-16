(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Years.
Section Years.
  Record t : Set := {
    x0 : i64.t;
  }.
  
  Definition Get_0 :=
    Ref.map (fun α => Some α.(x0)) (fun β α => Some (α <| x0 := β |>)).
End Years.
End Years.

Module  Days.
Section Days.
  Record t : Set := {
    x0 : i64.t;
  }.
  
  Definition Get_0 :=
    Ref.map (fun α => Some α.(x0)) (fun β α => Some (α <| x0 := β |>)).
End Days.
End Days.

Module  Impl_generics_new_type_idiom_Years_t.
Section Impl_generics_new_type_idiom_Years_t.
  Definition Self : Set := generics_new_type_idiom.Years.t.
  
  (*
      pub fn to_days(&self) -> Days {
          Days(self.0 * 365)
      }
  *)
  Definition to_days (self : ref Self) : M generics_new_type_idiom.Days.t :=
    let* self := M.alloc self in
    let* α0 : ref generics_new_type_idiom.Years.t := M.read self in
    let* α1 : i64.t :=
      M.read (generics_new_type_idiom.Years.Get_0 (deref α0)) in
    let* α2 : i64.t := BinOp.Panic.mul α1 ((Integer.of_Z 365) : i64.t) in
    M.pure (generics_new_type_idiom.Days.Build_t α2).
  
  Axiom to_days_is_impl : impl Self "to_days" = to_days.
End Impl_generics_new_type_idiom_Years_t.
End Impl_generics_new_type_idiom_Years_t.

Module  Impl_generics_new_type_idiom_Days_t.
Section Impl_generics_new_type_idiom_Days_t.
  Definition Self : Set := generics_new_type_idiom.Days.t.
  
  (*
      pub fn to_years(&self) -> Years {
          Years(self.0 / 365)
      }
  *)
  Definition to_years (self : ref Self) : M generics_new_type_idiom.Years.t :=
    let* self := M.alloc self in
    let* α0 : ref generics_new_type_idiom.Days.t := M.read self in
    let* α1 : i64.t := M.read (generics_new_type_idiom.Days.Get_0 (deref α0)) in
    let* α2 : i64.t := BinOp.Panic.div α1 ((Integer.of_Z 365) : i64.t) in
    M.pure (generics_new_type_idiom.Years.Build_t α2).
  
  Axiom to_years_is_impl : impl Self "to_years" = to_years.
End Impl_generics_new_type_idiom_Days_t.
End Impl_generics_new_type_idiom_Days_t.

(*
fn old_enough(age: &Years) -> bool {
    age.0 >= 18
}
*)
Definition old_enough (age : ref generics_new_type_idiom.Years.t) : M bool.t :=
  let* age := M.alloc age in
  let* α0 : ref generics_new_type_idiom.Years.t := M.read age in
  let* α1 : i64.t := M.read (generics_new_type_idiom.Years.Get_0 (deref α0)) in
  M.pure (BinOp.Pure.ge α1 ((Integer.of_Z 18) : i64.t)).

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
Definition main : M unit :=
  let* age : M.Val generics_new_type_idiom.Years.t :=
    M.alloc
      (generics_new_type_idiom.Years.Build_t ((Integer.of_Z 5) : i64.t)) in
  let* age_days : M.Val generics_new_type_idiom.Days.t :=
    let* α0 : generics_new_type_idiom.Days.t :=
      M.call (impl generics_new_type_idiom.Years.t "to_days" (borrow age)) in
    M.alloc α0 in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "Old enough ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : bool.t :=
        M.call (generics_new_type_idiom.old_enough (borrow age)) in
      let* α6 : M.Val bool.t := M.alloc α5 in
      let* α7 : core.fmt.rt.Argument.t :=
        M.call (impl core.fmt.rt.Argument.t "new_display" (borrow α6)) in
      let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
      let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α8) in
      let* α10 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α9) in
      let* α11 : core.fmt.Arguments.t :=
        M.call (impl core.fmt.Arguments.t "new_v1" α4 α10) in
      let* α12 : unit := M.call (std.io.stdio._print α11) in
      M.alloc α12 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "Old enough ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : generics_new_type_idiom.Years.t :=
        M.call
          (impl generics_new_type_idiom.Days.t "to_years" (borrow age_days)) in
      let* α6 : M.Val generics_new_type_idiom.Years.t := M.alloc α5 in
      let* α7 : bool.t :=
        M.call (generics_new_type_idiom.old_enough (borrow α6)) in
      let* α8 : M.Val bool.t := M.alloc α7 in
      let* α9 : core.fmt.rt.Argument.t :=
        M.call (impl core.fmt.rt.Argument.t "new_display" (borrow α8)) in
      let* α10 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α9 ] in
      let* α11 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α10) in
      let* α12 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α11) in
      let* α13 : core.fmt.Arguments.t :=
        M.call (impl core.fmt.Arguments.t "new_v1" α4 α12) in
      let* α14 : unit := M.call (std.io.stdio._print α13) in
      M.alloc α14 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
