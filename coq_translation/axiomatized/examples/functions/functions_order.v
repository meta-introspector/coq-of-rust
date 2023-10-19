(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module SomeType.
  Unset Primitive Projections.
  Record t `{State.Trait} : Set := {
    x0 : u32;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_0 `{State.Trait} : Notation.Dot "0" := {
    Notation.dot x := let* x := M.read x in Pure x.(x0) : M _;
  }.
End SomeType.
Definition SomeType `{State.Trait} : Set := M.val SomeType.t.

Module OtherType.
  Unset Primitive Projections.
  Record t `{State.Trait} : Set := {
    x0 : bool;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_0 `{State.Trait} : Notation.Dot "0" := {
    Notation.dot x := let* x := M.read x in Pure x.(x0) : M _;
  }.
End OtherType.
Definition OtherType `{State.Trait} : Set := M.val OtherType.t.

Module Impl_functions_order_SomeType.
  Definition Self := functions_order.SomeType.
  
  Parameter meth2 : forall `{State.Trait}, Self -> M unit.
  
  Global Instance Method_meth2 `{State.Trait} : Notation.Dot "meth2" := {
    Notation.dot := meth2;
  }.
  
  Parameter meth1 : forall `{State.Trait}, Self -> M unit.
  
  Global Instance Method_meth1 `{State.Trait} : Notation.Dot "meth1" := {
    Notation.dot := meth1;
  }.
End Impl_functions_order_SomeType.

Module SomeTrait.
  Class Trait (Self : Set) : Type := {
    some_trait_foo `{State.Trait} : (ref Self) -> M unit;
    some_trait_bar `{State.Trait} : (ref Self) -> M unit;
  }.
  
  Global Instance Method_some_trait_foo `{State.Trait} `(Trait)
    : Notation.Dot "some_trait_foo" := {
    Notation.dot := some_trait_foo;
  }.
  Global Instance Method_some_trait_bar `{State.Trait} `(Trait)
    : Notation.Dot "some_trait_bar" := {
    Notation.dot := some_trait_bar;
  }.
End SomeTrait.

Module Impl_functions_order_SomeTrait_for_functions_order_SomeType.
  Definition Self `{State.Trait} := functions_order.SomeType.
  
  Parameter some_trait_bar : forall `{State.Trait}, (ref Self) -> M unit.
  
  Global Instance Method_some_trait_bar `{State.Trait} :
    Notation.Dot "some_trait_bar" := {
    Notation.dot := some_trait_bar;
  }.
  
  Parameter some_trait_foo : forall `{State.Trait}, (ref Self) -> M unit.
  
  Global Instance Method_some_trait_foo `{State.Trait} :
    Notation.Dot "some_trait_foo" := {
    Notation.dot := some_trait_foo;
  }.
  
  Global Instance I `{State.Trait} : functions_order.SomeTrait.Trait Self := {
    functions_order.SomeTrait.some_trait_bar := some_trait_bar;
    functions_order.SomeTrait.some_trait_foo := some_trait_foo;
  }.
  Global Hint Resolve I : core.
End Impl_functions_order_SomeTrait_for_functions_order_SomeType.

Module Impl_functions_order_SomeTrait_for_functions_order_OtherType.
  Definition Self `{State.Trait} := functions_order.OtherType.
  
  Parameter some_trait_foo : forall `{State.Trait}, (ref Self) -> M unit.
  
  Global Instance Method_some_trait_foo `{State.Trait} :
    Notation.Dot "some_trait_foo" := {
    Notation.dot := some_trait_foo;
  }.
  
  Parameter some_trait_bar : forall `{State.Trait}, (ref Self) -> M unit.
  
  Global Instance Method_some_trait_bar `{State.Trait} :
    Notation.Dot "some_trait_bar" := {
    Notation.dot := some_trait_bar;
  }.
  
  Global Instance I `{State.Trait} : functions_order.SomeTrait.Trait Self := {
    functions_order.SomeTrait.some_trait_foo := some_trait_foo;
    functions_order.SomeTrait.some_trait_bar := some_trait_bar;
  }.
  Global Hint Resolve I : core.
End Impl_functions_order_SomeTrait_for_functions_order_OtherType.

Parameter depends_on_trait_impl : forall `{State.Trait}, u32 -> bool -> M unit.

Module inner_mod.
  Parameter tar : forall `{State.Trait}, M unit.
  
  Parameter bar : forall `{State.Trait}, M unit.
  
  Module nested_mod.
    Parameter tack : forall `{State.Trait}, M unit.
    
    Parameter tick : forall `{State.Trait}, M unit.
  End nested_mod.
End inner_mod.

Parameter bar : forall `{State.Trait}, M unit.

Parameter tar : forall `{State.Trait}, M unit.

Module nested_mod.
  Parameter tack : forall `{State.Trait}, M unit.
  
  Parameter tick : forall `{State.Trait}, M unit.
End nested_mod.

Parameter tick : forall `{State.Trait}, M unit.

Parameter tack : forall `{State.Trait}, M unit.

Parameter foo : forall `{State.Trait}, M unit.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{State.Trait}, M unit.
