(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Sheep.
Section Sheep.
  Record t : Set := { }.
End Sheep.
End Sheep.

Module  Cow.
Section Cow.
  Record t : Set := { }.
End Cow.
End Cow.

Module  Animal.
Section Animal.
  Class Trait (Self : Set) : Type := {
    noise : (ref ltac:(Self)) -> M (ref str.t);
  }.
  
End Animal.
End Animal.

Module  Impl_returning_traits_with_dyn_Animal_for_returning_traits_with_dyn_Sheep_t.
Section Impl_returning_traits_with_dyn_Animal_for_returning_traits_with_dyn_Sheep_t.
  Ltac Self := exact returning_traits_with_dyn.Sheep.t.
  
  (*
      fn noise(&self) -> &'static str {
          "baaaaah!"
      }
  *)
  Parameter noise : (ref ltac:(Self)) -> M (ref str.t).
  
  Global Instance AssociatedFunction_noise :
    Notations.DoubleColon ltac:(Self) "noise" := {
    Notations.double_colon := noise;
  }.
  
  Global Instance ℐ : returning_traits_with_dyn.Animal.Trait ltac:(Self) := {
    returning_traits_with_dyn.Animal.noise := noise;
  }.
End Impl_returning_traits_with_dyn_Animal_for_returning_traits_with_dyn_Sheep_t.
End Impl_returning_traits_with_dyn_Animal_for_returning_traits_with_dyn_Sheep_t.

Module  Impl_returning_traits_with_dyn_Animal_for_returning_traits_with_dyn_Cow_t.
Section Impl_returning_traits_with_dyn_Animal_for_returning_traits_with_dyn_Cow_t.
  Ltac Self := exact returning_traits_with_dyn.Cow.t.
  
  (*
      fn noise(&self) -> &'static str {
          "moooooo!"
      }
  *)
  Parameter noise : (ref ltac:(Self)) -> M (ref str.t).
  
  Global Instance AssociatedFunction_noise :
    Notations.DoubleColon ltac:(Self) "noise" := {
    Notations.double_colon := noise;
  }.
  
  Global Instance ℐ : returning_traits_with_dyn.Animal.Trait ltac:(Self) := {
    returning_traits_with_dyn.Animal.noise := noise;
  }.
End Impl_returning_traits_with_dyn_Animal_for_returning_traits_with_dyn_Cow_t.
End Impl_returning_traits_with_dyn_Animal_for_returning_traits_with_dyn_Cow_t.

(*
fn random_animal(random_number: f64) -> Box<dyn Animal> {
    if random_number < 0.5 {
        Box::new(Sheep {})
    } else {
        Box::new(Cow {})
    }
}
*)
Parameter random_animal :
    f64.t -> M (alloc.boxed.Box.t _ (* dyn *) alloc.boxed.Box.Default.A).

(*
fn main() {
    let random_number = 0.234;
    let animal = random_animal(random_number);
    println!(
        "You've randomly chosen an animal, and it says {}",
        animal.noise()
    );
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.
