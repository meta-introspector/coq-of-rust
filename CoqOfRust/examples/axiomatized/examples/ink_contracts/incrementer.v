(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Incrementer.
Section Incrementer.
  Record t : Set := {
    value : i32.t;
  }.
  
  Definition Get_value :=
    Ref.map (fun α => Some α.(value)) (fun β α => Some (α <| value := β |>)).
End Incrementer.
End Incrementer.

Module  Impl_incrementer_Incrementer_t.
Section Impl_incrementer_Incrementer_t.
  Definition Self : Set := incrementer.Incrementer.t.
  
  (*
      pub fn new(init_value: i32) -> Self {
          Self { value: init_value }
      }
  *)
  Parameter new : i32.t -> M Self.
  
  Global Instance AssociatedFunction_new : Notations.DoubleColon Self "new" := {
    Notations.double_colon := new;
  }.
  
  (*
      pub fn new_default() -> Self {
          Self::new(Default::default())
      }
  *)
  Parameter new_default : M Self.
  
  Global Instance AssociatedFunction_new_default :
    Notations.DoubleColon Self "new_default" := {
    Notations.double_colon := new_default;
  }.
  
  (*
      pub fn inc(&mut self, by: i32) {
          self.value += by;
      }
  *)
  Parameter inc : (mut_ref Self) -> i32.t -> M unit.
  
  Global Instance AssociatedFunction_inc : Notations.DoubleColon Self "inc" := {
    Notations.double_colon := inc;
  }.
  
  (*
      pub fn get(&self) -> i32 {
          self.value
      }
  *)
  Parameter get : (ref Self) -> M i32.t.
  
  Global Instance AssociatedFunction_get : Notations.DoubleColon Self "get" := {
    Notations.double_colon := get;
  }.
End Impl_incrementer_Incrementer_t.
End Impl_incrementer_Incrementer_t.
