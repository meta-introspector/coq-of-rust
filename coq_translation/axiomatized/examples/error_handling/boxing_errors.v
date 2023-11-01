(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Ltac Result T :=
  refine
    (core.result.Result
      T
      (alloc.boxed.Box _ (* OpaqueTy *) alloc.boxed.Box.Default.A)).

Module EmptyVec.
  Section EmptyVec.
    Context `{ℋ : State.Trait}.
    
    Inductive t : Set := Build.
  End EmptyVec.
End EmptyVec.
Definition EmptyVec := @EmptyVec.t.

Module Impl_core_fmt_Debug_for_boxing_errors_EmptyVec.
  Section Impl_core_fmt_Debug_for_boxing_errors_EmptyVec.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := boxing_errors.EmptyVec.
    
    Parameter fmt :
        (ref Self) -> (mut_ref core.fmt.Formatter) -> M ltac:(core.fmt.Result).
    
    Global Instance AssociatedFunction_fmt :
      Notation.DoubleColon Self "fmt" := {
      Notation.double_colon := fmt;
    }.
    
    Global Instance ℐ : core.fmt.Debug.Trait Self := {
      core.fmt.Debug.fmt := fmt;
    }.
  End Impl_core_fmt_Debug_for_boxing_errors_EmptyVec.
End Impl_core_fmt_Debug_for_boxing_errors_EmptyVec.

Module Impl_core_clone_Clone_for_boxing_errors_EmptyVec.
  Section Impl_core_clone_Clone_for_boxing_errors_EmptyVec.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := boxing_errors.EmptyVec.
    
    Parameter clone : (ref Self) -> M boxing_errors.EmptyVec.
    
    Global Instance AssociatedFunction_clone :
      Notation.DoubleColon Self "clone" := {
      Notation.double_colon := clone;
    }.
    
    Global Instance ℐ : core.clone.Clone.Trait Self := {
      core.clone.Clone.clone := clone;
    }.
  End Impl_core_clone_Clone_for_boxing_errors_EmptyVec.
End Impl_core_clone_Clone_for_boxing_errors_EmptyVec.

Module Impl_core_fmt_Display_for_boxing_errors_EmptyVec.
  Section Impl_core_fmt_Display_for_boxing_errors_EmptyVec.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := boxing_errors.EmptyVec.
    
    Parameter fmt :
        (ref Self) -> (mut_ref core.fmt.Formatter) -> M ltac:(core.fmt.Result).
    
    Global Instance AssociatedFunction_fmt :
      Notation.DoubleColon Self "fmt" := {
      Notation.double_colon := fmt;
    }.
    
    Global Instance ℐ : core.fmt.Display.Trait Self := {
      core.fmt.Display.fmt := fmt;
    }.
  End Impl_core_fmt_Display_for_boxing_errors_EmptyVec.
End Impl_core_fmt_Display_for_boxing_errors_EmptyVec.

Module Impl_core_error_Error_for_boxing_errors_EmptyVec.
  Section Impl_core_error_Error_for_boxing_errors_EmptyVec.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := boxing_errors.EmptyVec.
    
    Global Instance ℐ : core.error.Error.Trait Self := {
    }.
  End Impl_core_error_Error_for_boxing_errors_EmptyVec.
End Impl_core_error_Error_for_boxing_errors_EmptyVec.

Parameter double_first :
    forall `{ℋ : State.Trait},
    (alloc.vec.Vec (ref str) alloc.vec.Vec.Default.A) ->
      M ltac:(boxing_errors.Result constr:(i32)).

Parameter print :
    forall `{ℋ : State.Trait},
    ltac:(boxing_errors.Result constr:(i32)) -> M unit.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{ℋ : State.Trait}, M unit.
