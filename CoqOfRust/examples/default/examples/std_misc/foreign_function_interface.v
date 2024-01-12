(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Error ForeignMod.

(*
fn cos(z: Complex) -> Complex {
    unsafe { ccosf(z) }
}
*)
Definition cos
    (z : foreign_function_interface.Complex.t)
    : M foreign_function_interface.Complex.t :=
  let* z := M.alloc z in
  let* α0 : foreign_function_interface.Complex.t := M.read z in
  M.call (foreign_function_interface.ccosf α0).

(*
fn main() {
    // z = -1 + 0i
    let z = Complex { re: -1., im: 0. };

    // calling a foreign function is an unsafe operation
    let z_sqrt = unsafe { csqrtf(z) };

    println!("the square root of {:?} is {:?}", z, z_sqrt);

    // calling safe API wrapped around unsafe operation
    println!("cos({:?}) = {:?}", z, cos(z));
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* z : M.Val foreign_function_interface.Complex.t :=
    let* α0 : f32.t := M.read (UnsupportedLiteral : M.Val f32.t) in
    let* α1 : f32.t := M.read (UnsupportedLiteral : M.Val f32.t) in
    M.alloc
      {|
        foreign_function_interface.Complex.re := α0;
        foreign_function_interface.Complex.im := α1;
      |} in
  let* z_sqrt : M.Val foreign_function_interface.Complex.t :=
    let* α0 : foreign_function_interface.Complex.t := M.read z in
    let* α1 : foreign_function_interface.Complex.t :=
      M.call (foreign_function_interface.csqrtf α0) in
    M.alloc α1 in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "the square root of ") in
      let* α1 : ref str.t := M.read (mk_str " is ") in
      let* α2 : ref str.t := M.read (mk_str "
") in
      let* α3 : M.Val (array (ref str.t)) := M.alloc [ α0; α1; α2 ] in
      let* α4 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α3) in
      let* α5 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α4) in
      let* α6 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow z)) in
      let* α7 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow z_sqrt)) in
      let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α6; α7 ] in
      let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α8) in
      let* α10 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α9) in
      let* α11 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α5 α10) in
      let* α12 : unit := M.call (std.io.stdio._print α11) in
      M.alloc α12 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "cos(") in
      let* α1 : ref str.t := M.read (mk_str ") = ") in
      let* α2 : ref str.t := M.read (mk_str "
") in
      let* α3 : M.Val (array (ref str.t)) := M.alloc [ α0; α1; α2 ] in
      let* α4 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α3) in
      let* α5 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α4) in
      let* α6 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow z)) in
      let* α7 : foreign_function_interface.Complex.t := M.read z in
      let* α8 : foreign_function_interface.Complex.t :=
        M.call (foreign_function_interface.cos α7) in
      let* α9 : M.Val foreign_function_interface.Complex.t := M.alloc α8 in
      let* α10 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow α9)) in
      let* α11 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α6; α10 ] in
      let* α12 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α11) in
      let* α13 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α12) in
      let* α14 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α5 α13) in
      let* α15 : unit := M.call (std.io.stdio._print α14) in
      M.alloc α15 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

Module  Complex.
Section Complex.
  Record t : Set := {
    re : f32.t;
    im : f32.t;
  }.
  
  Definition Get_re :=
    Ref.map (fun α => Some α.(re)) (fun β α => Some (α <| re := β |>)).
  Definition Get_im :=
    Ref.map (fun α => Some α.(im)) (fun β α => Some (α <| im := β |>)).
End Complex.
End Complex.

Module  Impl_core_clone_Clone_for_foreign_function_interface_Complex_t.
Section Impl_core_clone_Clone_for_foreign_function_interface_Complex_t.
  Definition Self : Set := foreign_function_interface.Complex.t.
  
  (*
  Clone
  *)
  Definition clone (self : ref Self) : M foreign_function_interface.Complex.t :=
    let* self := M.alloc self in
    let* α0 : M.Val foreign_function_interface.Complex.t :=
      match_operator
        (DeclaredButUndefinedVariable
          (A := core.clone.AssertParamIsClone.t f32.t))
        [
          fun γ =>
            (let* α0 : ref foreign_function_interface.Complex.t :=
              M.read self in
            M.pure (deref α0)) :
            M (M.Val foreign_function_interface.Complex.t)
        ] in
    M.read α0.
  
  Global Instance AssociatedFunction_clone :
    Notations.DoubleColon Self "clone" := {
    Notations.double_colon := clone;
  }.
  
  Global Instance ℐ : core.clone.Clone.Required.Trait Self := {
    core.clone.Clone.clone := clone;
    core.clone.Clone.clone_from := Datatypes.None;
  }.
End Impl_core_clone_Clone_for_foreign_function_interface_Complex_t.
End Impl_core_clone_Clone_for_foreign_function_interface_Complex_t.

Module  Impl_core_marker_Copy_for_foreign_function_interface_Complex_t.
Section Impl_core_marker_Copy_for_foreign_function_interface_Complex_t.
  Definition Self : Set := foreign_function_interface.Complex.t.
  
  Global Instance ℐ : core.marker.Copy.Trait Self := {
  }.
End Impl_core_marker_Copy_for_foreign_function_interface_Complex_t.
End Impl_core_marker_Copy_for_foreign_function_interface_Complex_t.

Module  Impl_core_fmt_Debug_for_foreign_function_interface_Complex_t.
Section Impl_core_fmt_Debug_for_foreign_function_interface_Complex_t.
  Definition Self : Set := foreign_function_interface.Complex.t.
  
  (*
      fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
          if self.im < 0. {
              write!(f, "{}-{}i", self.re, -self.im)
          } else {
              write!(f, "{}+{}i", self.re, self.im)
          }
      }
  *)
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter.t)
      : M ltac:(core.fmt.Result) :=
    let* self := M.alloc self in
    let* f := M.alloc f in
    let* α0 : ref foreign_function_interface.Complex.t := M.read self in
    let* α1 : f32.t :=
      M.read (foreign_function_interface.Complex.Get_im (deref α0)) in
    let* α2 : f32.t := M.read (UnsupportedLiteral : M.Val f32.t) in
    let* α3 : M.Val bool.t := M.alloc (BinOp.Pure.lt α1 α2) in
    let* α4 : bool.t := M.read (use α3) in
    let* α5 : M.Val (core.result.Result.t unit core.fmt.Error.t) :=
      if α4 then
        let* α0 : mut_ref core.fmt.Formatter.t := M.read f in
        let* α1 : ref str.t := M.read (mk_str "") in
        let* α2 : ref str.t := M.read (mk_str "-") in
        let* α3 : ref str.t := M.read (mk_str "i") in
        let* α4 : M.Val (array (ref str.t)) := M.alloc [ α1; α2; α3 ] in
        let* α5 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α4) in
        let* α6 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α5) in
        let* α7 : ref foreign_function_interface.Complex.t := M.read self in
        let* α8 : core.fmt.rt.Argument.t :=
          M.call
            (core.fmt.rt.Argument.t::["new_display"]
              (borrow
                (foreign_function_interface.Complex.Get_re (deref α7)))) in
        let* α9 : ref foreign_function_interface.Complex.t := M.read self in
        let* α10 : f32.t :=
          M.read (foreign_function_interface.Complex.Get_im (deref α9)) in
        let* α11 : f32.t := UnOp.neg α10 in
        let* α12 : M.Val f32.t := M.alloc α11 in
        let* α13 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α12)) in
        let* α14 : M.Val (array core.fmt.rt.Argument.t) :=
          M.alloc [ α8; α13 ] in
        let* α15 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α14) in
        let* α16 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α15) in
        let* α17 : core.fmt.Arguments.t :=
          M.call (core.fmt.Arguments.t::["new_v1"] α6 α16) in
        let* α18 : core.result.Result.t unit core.fmt.Error.t :=
          M.call (core.fmt.Formatter.t::["write_fmt"] α0 α17) in
        M.alloc α18
      else
        let* α0 : mut_ref core.fmt.Formatter.t := M.read f in
        let* α1 : ref str.t := M.read (mk_str "") in
        let* α2 : ref str.t := M.read (mk_str "+") in
        let* α3 : ref str.t := M.read (mk_str "i") in
        let* α4 : M.Val (array (ref str.t)) := M.alloc [ α1; α2; α3 ] in
        let* α5 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α4) in
        let* α6 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α5) in
        let* α7 : ref foreign_function_interface.Complex.t := M.read self in
        let* α8 : core.fmt.rt.Argument.t :=
          M.call
            (core.fmt.rt.Argument.t::["new_display"]
              (borrow
                (foreign_function_interface.Complex.Get_re (deref α7)))) in
        let* α9 : ref foreign_function_interface.Complex.t := M.read self in
        let* α10 : core.fmt.rt.Argument.t :=
          M.call
            (core.fmt.rt.Argument.t::["new_display"]
              (borrow
                (foreign_function_interface.Complex.Get_im (deref α9)))) in
        let* α11 : M.Val (array core.fmt.rt.Argument.t) :=
          M.alloc [ α8; α10 ] in
        let* α12 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α11) in
        let* α13 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α12) in
        let* α14 : core.fmt.Arguments.t :=
          M.call (core.fmt.Arguments.t::["new_v1"] α6 α13) in
        let* α15 : core.result.Result.t unit core.fmt.Error.t :=
          M.call (core.fmt.Formatter.t::["write_fmt"] α0 α14) in
        M.alloc α15 in
    M.read α5.
  
  Global Instance AssociatedFunction_fmt : Notations.DoubleColon Self "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_foreign_function_interface_Complex_t.
End Impl_core_fmt_Debug_for_foreign_function_interface_Complex_t.
