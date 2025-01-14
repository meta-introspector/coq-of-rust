(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Error ForeignMod.

(*
fn cos(z: Complex) -> Complex {
    unsafe { ccosf(z) }
}
*)
Parameter cos :
    foreign_function_interface.Complex.t ->
      M foreign_function_interface.Complex.t.

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
Parameter main : M unit.

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
  Parameter clone : (ref Self) -> M foreign_function_interface.Complex.t.
  
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
  Parameter fmt :
      (ref Self) -> (mut_ref core.fmt.Formatter.t) -> M ltac:(core.fmt.Result).
  
  Global Instance AssociatedFunction_fmt : Notations.DoubleColon Self "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_foreign_function_interface_Complex_t.
End Impl_core_fmt_Debug_for_foreign_function_interface_Complex_t.
