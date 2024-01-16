(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Val.
Section Val.
  Record t : Set := {
    val : f64.t;
  }.
  
  Definition Get_val :=
    Ref.map (fun α => Some α.(val)) (fun β α => Some (α <| val := β |>)).
End Val.
End Val.

Module  GenVal.
Section GenVal.
  Context (T : Set).
  
  Record t : Set := {
    gen_val : T;
  }.
  
  Definition Get_gen_val :=
    Ref.map
      (fun α => Some α.(gen_val))
      (fun β α => Some (α <| gen_val := β |>)).
End GenVal.
End GenVal.

Module  Impl_generics_implementation_Val_t.
Section Impl_generics_implementation_Val_t.
  Definition Self : Set := generics_implementation.Val.t.
  
  (*
      fn value(&self) -> &f64 {
          &self.val
      }
  *)
  Definition value (self : ref Self) : M (ref f64.t) :=
    let* self := M.alloc self in
    let* α0 : ref generics_implementation.Val.t := M.read self in
    M.pure (borrow (generics_implementation.Val.Get_val (deref α0))).
  
  Global Instance AssociatedFunction_value :
    Notations.DoubleColon Self "value" := {
    Notations.double_colon := value;
  }.
End Impl_generics_implementation_Val_t.
End Impl_generics_implementation_Val_t.

Module  Impl_generics_implementation_GenVal_t_T.
Section Impl_generics_implementation_GenVal_t_T.
  Context {T : Set}.
  
  Definition Self : Set := generics_implementation.GenVal.t T.
  
  (*
      fn value(&self) -> &T {
          &self.gen_val
      }
  *)
  Definition value (self : ref Self) : M (ref T) :=
    let* self := M.alloc self in
    let* α0 : ref (generics_implementation.GenVal.t T) := M.read self in
    M.pure (borrow (generics_implementation.GenVal.Get_gen_val (deref α0))).
  
  Global Instance AssociatedFunction_value :
    Notations.DoubleColon Self "value" := {
    Notations.double_colon := value;
  }.
End Impl_generics_implementation_GenVal_t_T.
End Impl_generics_implementation_GenVal_t_T.

(*
fn main() {
    let x = Val { val: 3.0 };
    let y = GenVal { gen_val: 3i32 };

    println!("{}, {}", x.value(), y.value());
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* x : M.Val generics_implementation.Val.t :=
    let* α0 : f64.t := M.read (UnsupportedLiteral : M.Val f64.t) in
    M.alloc {| generics_implementation.Val.val := α0; |} in
  let* y : M.Val (generics_implementation.GenVal.t i32.t) :=
    M.alloc
      {| generics_implementation.GenVal.gen_val := (Integer.of_Z 3) : i32.t;
      |} in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "") in
      let* α1 : ref str.t := M.read (mk_str ", ") in
      let* α2 : ref str.t := M.read (mk_str "
") in
      let* α3 : M.Val (array (ref str.t)) := M.alloc [ α0; α1; α2 ] in
      let* α4 : ref f64.t :=
        M.call (generics_implementation.Val.t::["value"] (borrow x)) in
      let* α5 : M.Val (ref f64.t) := M.alloc α4 in
      let* α6 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α5)) in
      let* α7 : ref i32.t :=
        M.call
          ((generics_implementation.GenVal.t i32.t)::["value"] (borrow y)) in
      let* α8 : M.Val (ref i32.t) := M.alloc α7 in
      let* α9 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α8)) in
      let* α10 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α6; α9 ] in
      let* α11 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α3))
            (pointer_coercion "Unsize" (borrow α10))) in
      let* α12 : unit := M.call (std.io.stdio._print α11) in
      M.alloc α12 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
