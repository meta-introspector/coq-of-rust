(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Foo.
  Unset Primitive Projections.
  Record t : Set := {
    test : bool;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_test : Notation.Dot "test" := {
    Notation.dot '(Build_t x0) := x0;
  }.
End Foo.
Definition Foo := @Foo.t.

Module Bar.
  Unset Primitive Projections.
  Record t : Set := {
    test : alloc.string.String;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_test : Notation.Dot "test" := {
    Notation.dot '(Build_t x0) := x0;
  }.
End Bar.
Definition Bar := @Bar.t.

Module BarTrait.
  Class Trait (Self : Set) : Type := {
    show `{H' : State.Trait} : Self -> (M (H := H') alloc.string.String);
  }.
  
  Global Instance Method_show `{H' : State.Trait} `(Trait)
    : Notation.Dot "show" := {
    Notation.dot := show;
  }.
End BarTrait.

Module
  Impl_const_underscore_expression_BarTrait_for_const_underscore_expression_Bar.
  Definition Self := const_underscore_expression.Bar.
  
  Definition show
      `{H' : State.Trait}
      (self : Self)
      : M (H := H') alloc.string.String :=
    Pure self.["test"].
  
  Global Instance Method_show `{H' : State.Trait} : Notation.Dot "show" := {
    Notation.dot := show;
  }.
  
  Global Instance I : const_underscore_expression.BarTrait.Trait Self := {
    const_underscore_expression.BarTrait.show `{H' : State.Trait} := show;
  }.
  Global Hint Resolve I : core.
End
  Impl_const_underscore_expression_BarTrait_for_const_underscore_expression_Bar.
