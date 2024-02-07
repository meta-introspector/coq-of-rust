(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Borrowed.
Section Borrowed.
  Record t : Set := {
    x0 : ref i32.t;
  }.
  
  Definition Get_0 :=
    Ref.map (fun α => Some α.(x0)) (fun β α => Some (α <| x0 := β |>)).
End Borrowed.
End Borrowed.

Module  Impl_core_fmt_Debug_for_scoping_rules_lifetimes_structs_Borrowed_t.
Section Impl_core_fmt_Debug_for_scoping_rules_lifetimes_structs_Borrowed_t.
  Definition Self : Set := scoping_rules_lifetimes_structs.Borrowed.t.
  
  Parameter fmt :
      (ref Self) -> (mut_ref core.fmt.Formatter.t) -> M ltac:(core.fmt.Result).
  
  Global Instance AssociatedFunction_fmt : Notations.DoubleColon Self "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_scoping_rules_lifetimes_structs_Borrowed_t.
End Impl_core_fmt_Debug_for_scoping_rules_lifetimes_structs_Borrowed_t.

Module  NamedBorrowed.
Section NamedBorrowed.
  Record t : Set := {
    x : ref i32.t;
    y : ref i32.t;
  }.
  
  Definition Get_x :=
    Ref.map (fun α => Some α.(x)) (fun β α => Some (α <| x := β |>)).
  Definition Get_y :=
    Ref.map (fun α => Some α.(y)) (fun β α => Some (α <| y := β |>)).
End NamedBorrowed.
End NamedBorrowed.

Module  Impl_core_fmt_Debug_for_scoping_rules_lifetimes_structs_NamedBorrowed_t.
Section Impl_core_fmt_Debug_for_scoping_rules_lifetimes_structs_NamedBorrowed_t.
  Definition Self : Set := scoping_rules_lifetimes_structs.NamedBorrowed.t.
  
  Parameter fmt :
      (ref Self) -> (mut_ref core.fmt.Formatter.t) -> M ltac:(core.fmt.Result).
  
  Global Instance AssociatedFunction_fmt : Notations.DoubleColon Self "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_scoping_rules_lifetimes_structs_NamedBorrowed_t.
End Impl_core_fmt_Debug_for_scoping_rules_lifetimes_structs_NamedBorrowed_t.

Module Either.
  Inductive t : Set :=
  | Num (_ : i32.t)
  | Ref (_ : ref i32.t).
  
  Definition Get_Num_0 :=
    Ref.map
      (fun α => match α with | Num α0 => Some α0 | _ => None end)
      (fun β α => match α with | Num _ => Some (Num β) | _ => None end).
  
  Definition Get_Ref_0 :=
    Ref.map
      (fun α => match α with | Ref α0 => Some α0 | _ => None end)
      (fun β α => match α with | Ref _ => Some (Ref β) | _ => None end).
End Either.

Module  Impl_core_fmt_Debug_for_scoping_rules_lifetimes_structs_Either_t.
Section Impl_core_fmt_Debug_for_scoping_rules_lifetimes_structs_Either_t.
  Definition Self : Set := scoping_rules_lifetimes_structs.Either.t.
  
  Parameter fmt :
      (ref Self) -> (mut_ref core.fmt.Formatter.t) -> M ltac:(core.fmt.Result).
  
  Global Instance AssociatedFunction_fmt : Notations.DoubleColon Self "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_scoping_rules_lifetimes_structs_Either_t.
End Impl_core_fmt_Debug_for_scoping_rules_lifetimes_structs_Either_t.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.
