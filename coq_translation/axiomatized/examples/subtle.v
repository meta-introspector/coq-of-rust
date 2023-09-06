(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Choice.
  Unset Primitive Projections.
  Record t : Set := {
    _ : u8;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_0 : Notation.Dot 0 := {
    Notation.dot '(Build_t x0) := x0;
  }.
End Choice.
Definition Choice := @Choice.t.

Module ConstantTimeEq.
  Class Trait (Self : Set) : Type := {
    ct_eq
      `{H' : State.Trait}
      :
      (ref Self) -> (ref Self) -> (M (H := H') subtle.Choice);
  }.
  
  Global Instance Method_ct_eq `{H' : State.Trait} `(Trait)
    : Notation.Dot "ct_eq" := {
    Notation.dot := ct_eq;
  }.
  Global Instance Method_ct_ne `{H' : State.Trait} `(Trait)
    : Notation.Dot "ct_ne" := {
    Notation.dot (self : ref Self) (other : ref Self)
      :=
      (axiom : M (H := H') subtle.Choice);
  }.
End ConstantTimeEq.

Module ConditionallySelectable.
  Class Trait (Self : Set) `{core.marker.Copy.Trait Self} : Type := {
    conditional_select
      `{H' : State.Trait}
      :
      (ref Self) -> (ref Self) -> subtle.Choice -> (M (H := H') Self);
  }.
  
  Global Instance Method_conditional_select `{H' : State.Trait} `(Trait)
    : Notation.Dot "conditional_select" := {
    Notation.dot := conditional_select;
  }.
  Global Instance Method_conditional_assign `{H' : State.Trait} `(Trait)
    : Notation.Dot "conditional_assign" := {
    Notation.dot
      (self : mut_ref Self)
      (other : ref Self)
      (choice : subtle.Choice)
      :=
      (axiom : M (H := H') unit);
  }.
  Global Instance Method_conditional_swap `{H' : State.Trait} `(Trait)
    : Notation.Dot "conditional_swap" := {
    Notation.dot (a : mut_ref Self) (b : mut_ref Self) (choice : subtle.Choice)
      :=
      (axiom : M (H := H') unit);
  }.
End ConditionallySelectable.

Module ConditionallyNegatable.
  Class Trait (Self : Set) : Type := {
    conditional_negate
      `{H' : State.Trait}
      :
      (mut_ref Self) -> subtle.Choice -> (M (H := H') unit);
  }.
  
  Global Instance Method_conditional_negate `{H' : State.Trait} `(Trait)
    : Notation.Dot "conditional_negate" := {
    Notation.dot := conditional_negate;
  }.
End ConditionallyNegatable.

Module CtOption.
  Section CtOption.
    Context {T : Set}.
    Unset Primitive Projections.
    Record t : Set := {
      value : T;
      is_some : subtle.Choice;
    }.
    Global Set Primitive Projections.
    
    Global Instance Get_value : Notation.Dot "value" := {
      Notation.dot '(Build_t x0 _) := x0;
    }.
    Global Instance Get_is_some : Notation.Dot "is_some" := {
      Notation.dot '(Build_t _ x1) := x1;
    }.
  End CtOption.
End CtOption.
Definition CtOption (T : Set) : Set := CtOption.t (T := T).

Module ConstantTimeGreater.
  Class Trait (Self : Set) : Type := {
    ct_gt
      `{H' : State.Trait}
      :
      (ref Self) -> (ref Self) -> (M (H := H') subtle.Choice);
  }.
  
  Global Instance Method_ct_gt `{H' : State.Trait} `(Trait)
    : Notation.Dot "ct_gt" := {
    Notation.dot := ct_gt;
  }.
End ConstantTimeGreater.

Module ConstantTimeLess.
  Class Trait
      (Self : Set)
        `{subtle.ConstantTimeEq.Trait Self}
        `{subtle.ConstantTimeGreater.Trait Self} :
      Type := {
  }.
  
  Global Instance Method_ct_lt `{H' : State.Trait} `(Trait)
    : Notation.Dot "ct_lt" := {
    Notation.dot (self : ref Self) (other : ref Self)
      :=
      (axiom : M (H := H') subtle.Choice);
  }.
End ConstantTimeLess.
