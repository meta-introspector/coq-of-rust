(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Flip.
Section Flip.
  Class Trait (Self : Set) : Type := {
    flip : (mut_ref Self) -> M unit;
    get : (ref Self) -> M bool.t;
  }.
  
End Flip.
End Flip.

Module  Flipper.
Section Flipper.
  Record t : Set := {
    value : bool.t;
  }.
  
  Definition Get_value :=
    Ref.map (fun α => Some α.(value)) (fun β α => Some (α <| value := β |>)).
End Flipper.
End Flipper.

Module  Impl_trait_flipper_Flipper_t.
Section Impl_trait_flipper_Flipper_t.
  Definition Self : Set := trait_flipper.Flipper.t.
  
  (*
      pub fn new() -> Self {
          Self {
              value: Default::default(),
          }
      }
  *)
  Parameter new : M Self.
  
  Axiom new_is_impl : impl Self "new" = new.
End Impl_trait_flipper_Flipper_t.
End Impl_trait_flipper_Flipper_t.

Module  Impl_trait_flipper_Flip_for_trait_flipper_Flipper_t.
Section Impl_trait_flipper_Flip_for_trait_flipper_Flipper_t.
  Definition Self : Set := trait_flipper.Flipper.t.
  
  (*
      fn flip(&mut self) {
          self.value = !self.value;
      }
  *)
  Parameter flip : (mut_ref Self) -> M unit.
  
  Axiom flip_is_impl : impl Self "flip" = flip.
  
  (*
      fn get(&self) -> bool {
          self.value
      }
  *)
  Parameter get : (ref Self) -> M bool.t.
  
  Axiom get_is_impl : impl Self "get" = get.
  
  Global Instance ℐ : trait_flipper.Flip.Trait Self := {
    trait_flipper.Flip.flip := flip;
    trait_flipper.Flip.get := get;
  }.
End Impl_trait_flipper_Flip_for_trait_flipper_Flipper_t.
End Impl_trait_flipper_Flip_for_trait_flipper_Flipper_t.
