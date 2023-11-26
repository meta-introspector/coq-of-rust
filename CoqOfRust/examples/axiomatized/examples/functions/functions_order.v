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
  Parameter meth2 : (M.Val ltac:(Self)) -> M unit.
  
  Global Instance AssociatedFunction_meth2 :
    Notations.DoubleColon ltac:(Self) "meth2" := {
    Notations.double_colon := meth2;
  }.
  
  (*
      pub fn meth1(self) {
          self.meth2();
      }
  *)
  Parameter meth1 : (M.Val ltac:(Self)) -> M unit.
  
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
  Parameter some_trait_bar : (M.Val (ref ltac:(Self))) -> M unit.
  
  Global Instance AssociatedFunction_some_trait_bar :
    Notations.DoubleColon ltac:(Self) "some_trait_bar" := {
    Notations.double_colon := some_trait_bar;
  }.
  
  (*
      fn some_trait_foo(&self) {
          self.some_trait_bar()
      }
  *)
  Parameter some_trait_foo : (M.Val (ref ltac:(Self))) -> M unit.
  
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
  Parameter some_trait_foo : (M.Val (ref ltac:(Self))) -> M unit.
  
  Global Instance AssociatedFunction_some_trait_foo :
    Notations.DoubleColon ltac:(Self) "some_trait_foo" := {
    Notations.double_colon := some_trait_foo;
  }.
  
  (*
      fn some_trait_bar(&self) {}
  *)
  Parameter some_trait_bar : (M.Val (ref ltac:(Self))) -> M unit.
  
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
Parameter depends_on_trait_impl : (M.Val u32.t) -> (M.Val bool.t) -> M unit.

Module inner_mod.
  (*
      fn tar() {}
  *)
  Parameter tar : M unit.
  
  (*
      pub fn bar() {
          // functions_order::inner_mod::bar
          tar();
      }
  *)
  Parameter bar : M unit.
  
  Module nested_mod.
    (*
            fn tack() {}
    *)
    Parameter tack : M unit.
    
    (*
            pub fn tick() {
                tack();
            }
    *)
    Parameter tick : M unit.
  End nested_mod.
End inner_mod.

(*
    pub fn bar() {
        // functions_order::inner_mod::bar
        tar();
    }
*)
Parameter bar : M unit.

(*
    fn tar() {}
*)
Parameter tar : M unit.

Module nested_mod.
  (*
          fn tack() {}
  *)
  Parameter tack : M unit.
  
  (*
          pub fn tick() {
              tack();
          }
  *)
  Parameter tick : M unit.
End nested_mod.

(*
        pub fn tick() {
            tack();
        }
*)
Parameter tick : M unit.

(*
        fn tack() {}
*)
Parameter tack : M unit.

(*
fn foo() {}
*)
Parameter foo : M unit.

(*
fn main() {
    // functions_order::main
    foo();
    inner_mod::bar();
    SomeType(0).meth1();
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.
