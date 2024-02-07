(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Ref.
Section Ref.
  Context {T : Set}.
  
  Record t : Set := {
    x0 : ref T;
  }.
  
  Definition Get_0 :=
    Ref.map (fun α => Some α.(x0)) (fun β α => Some (α <| x0 := β |>)).
End Ref.
End Ref.

Module  Impl_core_fmt_Debug_for_scoping_rules_lifetimes_bounds_Ref_t_T.
Section Impl_core_fmt_Debug_for_scoping_rules_lifetimes_bounds_Ref_t_T.
  Context {T : Set}.
  
  Context {ℋ_0 : core.fmt.Debug.Trait T}.
  
  Definition Self : Set := scoping_rules_lifetimes_bounds.Ref.t T.
  
  Parameter fmt :
      (ref Self) -> (mut_ref core.fmt.Formatter.t) -> M ltac:(core.fmt.Result).
  
  Global Instance AssociatedFunction_fmt : Notations.DoubleColon Self "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_scoping_rules_lifetimes_bounds_Ref_t_T.
End Impl_core_fmt_Debug_for_scoping_rules_lifetimes_bounds_Ref_t_T.

Parameter print : forall {T : Set} {ℋ_0 : core.fmt.Debug.Trait T}, T -> M unit.

Parameter print_ref :
    forall {T : Set} {ℋ_0 : core.fmt.Debug.Trait T},
    (ref T) -> M unit.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.
