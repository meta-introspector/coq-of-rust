(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  SomeType.
Section SomeType.
  Record t : Set := {
    x0 : u32.t;
  }.
  
  Global Instance Get_0 : Notations.Dot "0" := {
    Notations.dot := Ref.map (fun x => x.(x0)) (fun v x => x <| x0 := v |>);
  }.
End SomeType.
End SomeType.

Module  OtherType.
Section OtherType.
  Record t : Set := {
    x0 : bool.t;
  }.
  
  Global Instance Get_0 : Notations.Dot "0" := {
    Notations.dot := Ref.map (fun x => x.(x0)) (fun v x => x <| x0 := v |>);
  }.
End OtherType.
End OtherType.

Module  Impl_functions_order_SomeType_t.
Section Impl_functions_order_SomeType_t.
  Ltac Self := exact functions_order.SomeType.t.
  
  (*
      fn meth2(self) {}
  *)
  Definition meth2 (self : ltac:(Self)) : M unit :=
    let* self : M.Val ltac:(Self) := M.alloc self in
    M.pure tt.
  
  Global Instance AssociatedFunction_meth2 :
    Notations.DoubleColon ltac:(Self) "meth2" := {
    Notations.double_colon := meth2;
  }.
  
  (*
      pub fn meth1(self) {
          self.meth2();
      }
  *)
  Definition meth1 (self : ltac:(Self)) : M unit :=
    let* self : M.Val ltac:(Self) := M.alloc self in
    let* _ : M.Val unit :=
      let* α0 : functions_order.SomeType.t := M.read self in
      let* α1 : unit := functions_order.SomeType.t::["meth2"] α0 in
      M.alloc α1 in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
  
  Global Instance AssociatedFunction_meth1 :
    Notations.DoubleColon ltac:(Self) "meth1" := {
    Notations.double_colon := meth1;
  }.
End Impl_functions_order_SomeType_t.
End Impl_functions_order_SomeType_t.

Module  SomeTrait.
Section SomeTrait.
  Class Trait (Self : Set) : Type := {
    some_trait_foo : (ref ltac:(Self)) -> M unit;
    some_trait_bar : (ref ltac:(Self)) -> M unit;
  }.
  
End SomeTrait.
End SomeTrait.

Module  Impl_functions_order_SomeTrait_for_functions_order_SomeType_t.
Section Impl_functions_order_SomeTrait_for_functions_order_SomeType_t.
  Ltac Self := exact functions_order.SomeType.t.
  
  (*
      fn some_trait_bar(&self) {}
  *)
  Definition some_trait_bar (self : ref ltac:(Self)) : M unit :=
    let* self : M.Val (ref ltac:(Self)) := M.alloc self in
    M.pure tt.
  
  Global Instance AssociatedFunction_some_trait_bar :
    Notations.DoubleColon ltac:(Self) "some_trait_bar" := {
    Notations.double_colon := some_trait_bar;
  }.
  
  (*
      fn some_trait_foo(&self) {
          self.some_trait_bar()
      }
  *)
  Definition some_trait_foo (self : ref ltac:(Self)) : M unit :=
    let* self : M.Val (ref ltac:(Self)) := M.alloc self in
    let* α0 : ref functions_order.SomeType.t := M.read self in
    (functions_order.SomeTrait.some_trait_bar
        (Self := functions_order.SomeType.t)
        (Trait := ltac:(refine _)))
      α0.
  
  Global Instance AssociatedFunction_some_trait_foo :
    Notations.DoubleColon ltac:(Self) "some_trait_foo" := {
    Notations.double_colon := some_trait_foo;
  }.
  
  Global Instance ℐ : functions_order.SomeTrait.Trait ltac:(Self) := {
    functions_order.SomeTrait.some_trait_bar := some_trait_bar;
    functions_order.SomeTrait.some_trait_foo := some_trait_foo;
  }.
End Impl_functions_order_SomeTrait_for_functions_order_SomeType_t.
End Impl_functions_order_SomeTrait_for_functions_order_SomeType_t.

Module  Impl_functions_order_SomeTrait_for_functions_order_OtherType_t.
Section Impl_functions_order_SomeTrait_for_functions_order_OtherType_t.
  Ltac Self := exact functions_order.OtherType.t.
  
  (*
      fn some_trait_foo(&self) {}
  *)
  Definition some_trait_foo (self : ref ltac:(Self)) : M unit :=
    let* self : M.Val (ref ltac:(Self)) := M.alloc self in
    M.pure tt.
  
  Global Instance AssociatedFunction_some_trait_foo :
    Notations.DoubleColon ltac:(Self) "some_trait_foo" := {
    Notations.double_colon := some_trait_foo;
  }.
  
  (*
      fn some_trait_bar(&self) {}
  *)
  Definition some_trait_bar (self : ref ltac:(Self)) : M unit :=
    let* self : M.Val (ref ltac:(Self)) := M.alloc self in
    M.pure tt.
  
  Global Instance AssociatedFunction_some_trait_bar :
    Notations.DoubleColon ltac:(Self) "some_trait_bar" := {
    Notations.double_colon := some_trait_bar;
  }.
  
  Global Instance ℐ : functions_order.SomeTrait.Trait ltac:(Self) := {
    functions_order.SomeTrait.some_trait_foo := some_trait_foo;
    functions_order.SomeTrait.some_trait_bar := some_trait_bar;
  }.
End Impl_functions_order_SomeTrait_for_functions_order_OtherType_t.
End Impl_functions_order_SomeTrait_for_functions_order_OtherType_t.

(*
fn depends_on_trait_impl(u: u32, b: bool) {
    OtherType(b).some_trait_foo();
    SomeType(u).some_trait_foo();
}
*)
Definition depends_on_trait_impl (u : u32.t) (b : bool.t) : M unit :=
  let* u : M.Val u32.t := M.alloc u in
  let* b : M.Val bool.t := M.alloc b in
  let* _ : M.Val unit :=
    let* α0 : bool.t := M.read b in
    let* α1 : M.Val functions_order.OtherType.t :=
      M.alloc (functions_order.OtherType.Build_t α0) in
    let* α2 : unit :=
      (functions_order.SomeTrait.some_trait_foo
          (Self := functions_order.OtherType.t)
          (Trait := ltac:(refine _)))
        (borrow α1) in
    M.alloc α2 in
  let* _ : M.Val unit :=
    let* α0 : u32.t := M.read u in
    let* α1 : M.Val functions_order.SomeType.t :=
      M.alloc (functions_order.SomeType.Build_t α0) in
    let* α2 : unit :=
      (functions_order.SomeTrait.some_trait_foo
          (Self := functions_order.SomeType.t)
          (Trait := ltac:(refine _)))
        (borrow α1) in
    M.alloc α2 in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

Module inner_mod.
  (*
      fn tar() {}
  *)
  Definition tar : M unit := M.pure tt.
  
  (*
      pub fn bar() {
          // functions_order::inner_mod::bar
          tar();
      }
  *)
  Definition bar : M unit :=
    let* _ : M.Val unit :=
      let* α0 : unit := functions_order.inner_mod.tar in
      M.alloc α0 in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
  
  Module nested_mod.
    (*
            fn tack() {}
    *)
    Definition tack : M unit := M.pure tt.
    
    (*
            pub fn tick() {
                tack();
            }
    *)
    Definition tick : M unit :=
      let* _ : M.Val unit :=
        let* α0 : unit := functions_order.inner_mod.nested_mod.tack in
        M.alloc α0 in
      let* α0 : M.Val unit := M.alloc tt in
      M.read α0.
  End nested_mod.
End inner_mod.

(*
    pub fn bar() {
        // functions_order::inner_mod::bar
        tar();
    }
*)
Definition bar : M unit :=
  let* _ : M.Val unit :=
    let* α0 : unit := functions_order.inner_mod.tar in
    M.alloc α0 in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

(*
    fn tar() {}
*)
Definition tar : M unit := M.pure tt.

Module nested_mod.
  (*
          fn tack() {}
  *)
  Definition tack : M unit := M.pure tt.
  
  (*
          pub fn tick() {
              tack();
          }
  *)
  Definition tick : M unit :=
    let* _ : M.Val unit :=
      let* α0 : unit := functions_order.inner_mod.nested_mod.tack in
      M.alloc α0 in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
End nested_mod.

(*
        pub fn tick() {
            tack();
        }
*)
Definition tick : M unit :=
  let* _ : M.Val unit :=
    let* α0 : unit := functions_order.inner_mod.nested_mod.tack in
    M.alloc α0 in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

(*
        fn tack() {}
*)
Definition tack : M unit := M.pure tt.

(*
fn foo() {}
*)
Definition foo : M unit := M.pure tt.

(*
fn main() {
    // functions_order::main
    foo();
    inner_mod::bar();
    SomeType(0).meth1();
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* _ : M.Val unit :=
    let* α0 : unit := functions_order.foo in
    M.alloc α0 in
  let* _ : M.Val unit :=
    let* α0 : unit := functions_order.inner_mod.bar in
    M.alloc α0 in
  let* _ : M.Val unit :=
    let* α0 : unit :=
      functions_order.SomeType.t::["meth1"]
        (functions_order.SomeType.Build_t (Integer.of_Z 0)) in
    M.alloc α0 in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
