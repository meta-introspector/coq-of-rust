(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition Result : Set :=
  core.result.Result T defining_an_error_type.DoubleError.

Module DoubleError.
  Inductive t : Set := Build.
End DoubleError.
Definition DoubleError := DoubleError.t.

Module Impl_core_fmt_Debug_for_defining_an_error_type_DoubleError.
  Definition Self := defining_an_error_type.DoubleError.
  
  Parameter fmt : ref Self-> mut_ref core.fmt.Formatter -> M core.fmt.Result.
  
  Global Instance Method_fmt : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_defining_an_error_type_DoubleError.

Module Impl_core_clone_Clone_for_defining_an_error_type_DoubleError.
  Definition Self := defining_an_error_type.DoubleError.
  
  Parameter clone : ref Self -> M defining_an_error_type.DoubleError.
  
  Global Instance Method_clone : Notation.Dot "clone" := {
    Notation.dot := clone;
  }.
  
  Global Instance I : core.clone.Clone.Trait Self := {
    core.clone.Clone.clone := clone;
  }.
End Impl_core_clone_Clone_for_defining_an_error_type_DoubleError.

Module Impl_core_fmt_Display_for_defining_an_error_type_DoubleError.
  Definition Self := defining_an_error_type.DoubleError.
  
  Parameter fmt : ref Self-> mut_ref core.fmt.Formatter -> M core.fmt.Result.
  
  Global Instance Method_fmt : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : core.fmt.Display.Trait Self := {
    core.fmt.Display.fmt := fmt;
  }.
End Impl_core_fmt_Display_for_defining_an_error_type_DoubleError.

Parameter double_first : alloc.vec.Vec (ref str)
    -> M (defining_an_error_type.Result i32).

Parameter print : defining_an_error_type.Result i32 -> M unit.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : unit -> M unit.