(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Ref.
Section Ref.
  Context {T : Set}.
  
  Record t : Set := {
    x0 : ref T;
  }.
  
  Global Instance Get_0 : Notations.Dot "0" := {
    Notations.dot := Ref.map (fun x => x.(x0)) (fun v x => x <| x0 := v |>);
  }.
End Ref.
End Ref.

Module  Impl_core_fmt_Debug_for_scoping_rules_lifetimes_bounds_Ref_t_T.
Section Impl_core_fmt_Debug_for_scoping_rules_lifetimes_bounds_Ref_t_T.
  Context {T : Set}.
  
  Context {ℋ_0 : core.fmt.Debug.Trait T}.
  
  Ltac Self := exact (scoping_rules_lifetimes_bounds.Ref.t T).
  
  (*
  Debug
  *)
  Parameter fmt :
      (ref ltac:(Self)) ->
        (mut_ref core.fmt.Formatter.t) ->
        M ltac:(core.fmt.Result).
  
  Global Instance AssociatedFunction_fmt :
    Notations.DoubleColon ltac:(Self) "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait ltac:(Self) := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_scoping_rules_lifetimes_bounds_Ref_t_T.
End Impl_core_fmt_Debug_for_scoping_rules_lifetimes_bounds_Ref_t_T.

(*
fn print<T>(t: T)
where
    T: Debug,
{
    println!("`print`: t is {:?}", t);
}
*)
Parameter print : forall {T : Set} {ℋ_0 : core.fmt.Debug.Trait T}, T -> M unit.

(*
fn print_ref<'a, T>(t: &'a T)
where
    T: Debug + 'a,
{
    println!("`print_ref`: t is {:?}", t);
}
*)
Parameter print_ref :
    forall {T : Set} {ℋ_0 : core.fmt.Debug.Trait T},
    (ref T) -> M unit.

(*
fn main() {
    let x = 7;
    let ref_x = Ref(&x);

    print_ref(&ref_x);
    print(ref_x);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.
