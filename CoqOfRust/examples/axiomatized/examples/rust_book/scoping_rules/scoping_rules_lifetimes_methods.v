(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Owner.
Section Owner.
  Record t : Set := {
    x0 : i32.t;
  }.
  
  Definition Get_0 :=
    Ref.map (fun α => Some α.(x0)) (fun β α => Some (α <| x0 := β |>)).
End Owner.
End Owner.

Module  Impl_scoping_rules_lifetimes_methods_Owner_t.
Section Impl_scoping_rules_lifetimes_methods_Owner_t.
  Definition Self : Set := scoping_rules_lifetimes_methods.Owner.t.
  
  (*
      fn add_one<'a>(&'a mut self) {
          self.0 += 1;
      }
  *)
  Parameter add_one : (mut_ref Self) -> M unit.
  
  Global Instance AssociatedFunction_add_one :
    Notations.DoubleColon Self "add_one" := {
    Notations.double_colon := add_one;
  }.
  
  (*
      fn print<'a>(&'a self) {
          println!("`print`: {}", self.0);
      }
  *)
  Parameter print : (ref Self) -> M unit.
  
  Global Instance AssociatedFunction_print :
    Notations.DoubleColon Self "print" := {
    Notations.double_colon := print;
  }.
End Impl_scoping_rules_lifetimes_methods_Owner_t.
End Impl_scoping_rules_lifetimes_methods_Owner_t.

(*
fn main() {
    let mut owner = Owner(18);

    owner.add_one();
    owner.print();
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.