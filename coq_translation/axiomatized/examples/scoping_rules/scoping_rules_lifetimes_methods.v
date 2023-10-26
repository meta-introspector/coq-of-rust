(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Owner.
  Section Owner.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Record t : Set := {
      x0 : i32;
    }.
    Global Set Primitive Projections.
    
    #[refine] Global Instance Get_0 : Notation.Dot "0" := {
      Notation.dot x := let* x := M.read x in Pure x.(x0) : M _;
    }.
    Admitted.
  End Owner.
End Owner.
Definition Owner `{ℋ : State.Trait} : Set := M.val Owner.t.

Module Impl_scoping_rules_lifetimes_methods_Owner.
  Section Impl_scoping_rules_lifetimes_methods_Owner.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := scoping_rules_lifetimes_methods.Owner.
    
    Parameter add_one : (mut_ref Self) -> M unit.
    
    Global Instance AssociatedFunction_add_one :
      Notation.DoubleColon Self "add_one" := {
      Notation.double_colon := add_one;
    }.
    
    Parameter print : (ref Self) -> M unit.
    
    Global Instance AssociatedFunction_print :
      Notation.DoubleColon Self "print" := {
      Notation.double_colon := print;
    }.
  End Impl_scoping_rules_lifetimes_methods_Owner.
End Impl_scoping_rules_lifetimes_methods_Owner.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{ℋ : State.Trait}, M unit.
