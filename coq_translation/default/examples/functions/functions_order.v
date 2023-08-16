(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module SomeType.
  Unset Primitive Projections.
  Record t : Set := {
    _ : u32;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_0 : Notation.Dot 0 := {
    Notation.dot '(Build_t x0) := x0;
  }.
End SomeType.
Definition SomeType := @SomeType.t.

Module OtherType.
  Unset Primitive Projections.
  Record t : Set := {
    _ : bool;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_0 : Notation.Dot 0 := {
    Notation.dot '(Build_t x0) := x0;
  }.
End OtherType.
Definition OtherType := @OtherType.t.

Module Impl_functions_order_SomeType.
  Definition Self := functions_order.SomeType.
  
  Definition meth2 `{H : State.Trait} (self : Self) : M (H := H) unit :=
    Pure tt.
  
  Global Instance Method_meth2 `{H : State.Trait} : Notation.Dot "meth2" := {
    Notation.dot := meth2;
  }.
  
  Definition meth1 `{H : State.Trait} (self : Self) : M (H := H) unit :=
    let* _ := self.["meth2"] in
    Pure tt.
  
  Global Instance Method_meth1 `{H : State.Trait} : Notation.Dot "meth1" := {
    Notation.dot := meth1;
  }.
End Impl_functions_order_SomeType.

Module SomeTrait.
  Class Trait (Self : Set) : Set := {
    some_trait_foo `{H : State.Trait} : (ref Self) -> (M (H := H) unit);
    some_trait_bar `{H : State.Trait} : (ref Self) -> (M (H := H) unit);
  }.
  
  Global Instance Method_some_trait_foo `{H : State.Trait} `(Trait)
    : Notation.Dot "some_trait_foo" := {
    Notation.dot := some_trait_foo;
  }.
  Global Instance Method_some_trait_bar `{H : State.Trait} `(Trait)
    : Notation.Dot "some_trait_bar" := {
    Notation.dot := some_trait_bar;
  }.
End SomeTrait.

Module Impl_functions_order_SomeTrait_for_functions_order_SomeType.
  Definition Self := functions_order.SomeType.
  
  Definition some_trait_bar
      `{H : State.Trait}
      (self : ref Self)
      : M (H := H) unit :=
    Pure tt.
  
  Global Instance Method_some_trait_bar `{H : State.Trait} :
    Notation.Dot "some_trait_bar" := {
    Notation.dot := some_trait_bar;
  }.
  
  Definition some_trait_foo
      `{H : State.Trait}
      (self : ref Self)
      : M (H := H) unit :=
    self.["some_trait_bar"].
  
  Global Instance Method_some_trait_foo `{H : State.Trait} :
    Notation.Dot "some_trait_foo" := {
    Notation.dot := some_trait_foo;
  }.
  
  Global Instance I : functions_order.SomeTrait.Trait Self := {
    functions_order.SomeTrait.some_trait_foo
      `{H : State.Trait}
      :=
      some_trait_foo;
    functions_order.SomeTrait.some_trait_bar
      `{H : State.Trait}
      :=
      some_trait_bar;
  }.
End Impl_functions_order_SomeTrait_for_functions_order_SomeType.

Module Impl_functions_order_SomeTrait_for_functions_order_OtherType.
  Definition Self := functions_order.OtherType.
  
  Definition some_trait_foo
      `{H : State.Trait}
      (self : ref Self)
      : M (H := H) unit :=
    Pure tt.
  
  Global Instance Method_some_trait_foo `{H : State.Trait} :
    Notation.Dot "some_trait_foo" := {
    Notation.dot := some_trait_foo;
  }.
  
  Definition some_trait_bar
      `{H : State.Trait}
      (self : ref Self)
      : M (H := H) unit :=
    Pure tt.
  
  Global Instance Method_some_trait_bar `{H : State.Trait} :
    Notation.Dot "some_trait_bar" := {
    Notation.dot := some_trait_bar;
  }.
  
  Global Instance I : functions_order.SomeTrait.Trait Self := {
    functions_order.SomeTrait.some_trait_foo
      `{H : State.Trait}
      :=
      some_trait_foo;
    functions_order.SomeTrait.some_trait_bar
      `{H : State.Trait}
      :=
      some_trait_bar;
  }.
End Impl_functions_order_SomeTrait_for_functions_order_OtherType.

Definition depends_on_trait_impl
    `{H : State.Trait}
    (u : u32)
    (b : bool)
    : M (H := H) unit :=
  let* _ := (functions_order.OtherType.Build_t b).["some_trait_foo"] in
  let* _ := (functions_order.SomeType.Build_t u).["some_trait_foo"] in
  Pure tt.

Module inner_mod.
  Definition tar `{H : State.Trait} : M (H := H) unit := Pure tt.
  
  Definition bar `{H : State.Trait} : M (H := H) unit :=
    let* _ := functions_order.inner_mod.tar in
    Pure tt.
  
  Module nested_mod.
    Definition tack `{H : State.Trait} : M (H := H) unit := Pure tt.
    
    Definition tick `{H : State.Trait} : M (H := H) unit :=
      let* _ := functions_order.inner_mod.nested_mod.tack in
      Pure tt.
  End nested_mod.
End inner_mod.

Definition bar `{H : State.Trait} : M (H := H) unit :=
  let* _ := functions_order.inner_mod.tar in
  Pure tt.

Definition tar `{H : State.Trait} : M (H := H) unit := Pure tt.

Module nested_mod.
  Definition tack `{H : State.Trait} : M (H := H) unit := Pure tt.
  
  Definition tick `{H : State.Trait} : M (H := H) unit :=
    let* _ := functions_order.inner_mod.nested_mod.tack in
    Pure tt.
End nested_mod.

Definition tick `{H : State.Trait} : M (H := H) unit :=
  let* _ := functions_order.inner_mod.nested_mod.tack in
  Pure tt.

Definition tack `{H : State.Trait} : M (H := H) unit := Pure tt.

Definition foo `{H : State.Trait} : M (H := H) unit := Pure tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H : State.Trait} : M (H := H) unit :=
  let* _ := functions_order.foo in
  let* _ := functions_order.inner_mod.bar in
  let* _ := (functions_order.SomeType.Build_t 0).["meth1"] in
  Pure tt.
