(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Flipper.
Section Flipper.
  Record t : Set := {
    value : bool.t;
  }.
  
  Definition Get_value :=
    Ref.map (fun α => Some α.(value)) (fun β α => Some (α <| value := β |>)).
End Flipper.
End Flipper.

Module  Impl_flipper_Flipper_t.
Section Impl_flipper_Flipper_t.
  Definition Self : Set := flipper.Flipper.t.
  
  (*
      pub fn new(init_value: bool) -> Self {
          Self { value: init_value }
      }
  *)
  Parameter new : bool.t -> M Self.
  
  Axiom new_is_impl : impl Self "new" = new.
  
  (*
      pub fn new_default() -> Self {
          Self::new(Default::default())
      }
  *)
  Parameter new_default : M Self.
  
  Axiom new_default_is_impl : impl Self "new_default" = new_default.
  
  (*
      pub fn flip(&mut self) {
          self.value = !self.value;
      }
  *)
  Parameter flip : (mut_ref Self) -> M unit.
  
  Axiom flip_is_impl : impl Self "flip" = flip.
  
  (*
      pub fn get(&self) -> bool {
          self.value
      }
  *)
  Parameter get : (ref Self) -> M bool.t.
  
  Axiom get_is_impl : impl Self "get" = get.
End Impl_flipper_Flipper_t.
End Impl_flipper_Flipper_t.
