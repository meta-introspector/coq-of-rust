(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Foo.
  Section Foo.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Record t : Set := {
      test : bool;
    }.
    Global Set Primitive Projections.
    
    #[refine] Global Instance Get_test : Notation.Dot "test" := {
      Notation.dot x := let* x := M.read x in Pure x.(test) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_AF_test : Notation.DoubleColon t "test" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(test) : M _;
    }.
    Admitted.
  End Foo.
End Foo.
Definition Foo `{ℋ : State.Trait} : Set := M.val Foo.t.

Module Bar.
  Section Bar.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Record t : Set := {
      test : alloc.string.String;
    }.
    Global Set Primitive Projections.
    
    #[refine] Global Instance Get_test : Notation.Dot "test" := {
      Notation.dot x := let* x := M.read x in Pure x.(test) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_AF_test : Notation.DoubleColon t "test" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(test) : M _;
    }.
    Admitted.
  End Bar.
End Bar.
Definition Bar `{ℋ : State.Trait} : Set := M.val Bar.t.

Module BarTrait.
  Section BarTrait.
    Context `{ℋ : State.Trait}.
    
    Class Trait (Self : Set) : Type := {
      show : Self -> M alloc.string.String;
    }.
    
  End BarTrait.
End BarTrait.

Module
  Impl_const_underscore_expression_BarTrait_for_const_underscore_expression_Bar.
  Section
    Impl_const_underscore_expression_BarTrait_for_const_underscore_expression_Bar.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := const_underscore_expression.Bar.
    
    Definition show (self : Self) : M alloc.string.String := self.["test"].
    
    Global Instance AssociatedFunction_show :
      Notation.DoubleColon Self "show" := {
      Notation.double_colon := show;
    }.
    
    #[refine] Global Instance ℐ :
      const_underscore_expression.BarTrait.Trait Self := {
      const_underscore_expression.BarTrait.show := show;
    }.
    Admitted.
  End
    Impl_const_underscore_expression_BarTrait_for_const_underscore_expression_Bar.
  Global Hint Resolve ℐ : core.
End
  Impl_const_underscore_expression_BarTrait_for_const_underscore_expression_Bar.
