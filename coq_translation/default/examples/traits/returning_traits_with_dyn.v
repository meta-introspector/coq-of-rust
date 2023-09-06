(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Sheep.
  Unset Primitive Projections.
  Record t : Set := { }.
  Global Set Primitive Projections.
End Sheep.
Definition Sheep := @Sheep.t.

Module Cow.
  Unset Primitive Projections.
  Record t : Set := { }.
  Global Set Primitive Projections.
End Cow.
Definition Cow := @Cow.t.

Module Animal.
  Class Trait (Self : Set) : Type := {
    noise `{H' : State.Trait} : (ref Self) -> (M (H := H') (ref str));
  }.
  
  Global Instance Method_noise `{H' : State.Trait} `(Trait)
    : Notation.Dot "noise" := {
    Notation.dot := noise;
  }.
End Animal.

Module
  Impl_returning_traits_with_dyn_Animal_for_returning_traits_with_dyn_Sheep.
  Definition Self := returning_traits_with_dyn.Sheep.
  
  Definition noise
      `{H' : State.Trait}
      (self : ref Self)
      : M (H := H') (ref str) :=
    Pure "baaaaah!".
  
  Global Instance Method_noise `{H' : State.Trait} : Notation.Dot "noise" := {
    Notation.dot := noise;
  }.
  
  Global Instance I : returning_traits_with_dyn.Animal.Trait Self := {
    returning_traits_with_dyn.Animal.noise `{H' : State.Trait} := noise;
  }.
  Global Hint Resolve I : core.
End Impl_returning_traits_with_dyn_Animal_for_returning_traits_with_dyn_Sheep.

Module Impl_returning_traits_with_dyn_Animal_for_returning_traits_with_dyn_Cow.
  Definition Self := returning_traits_with_dyn.Cow.
  
  Definition noise
      `{H' : State.Trait}
      (self : ref Self)
      : M (H := H') (ref str) :=
    Pure "moooooo!".
  
  Global Instance Method_noise `{H' : State.Trait} : Notation.Dot "noise" := {
    Notation.dot := noise;
  }.
  
  Global Instance I : returning_traits_with_dyn.Animal.Trait Self := {
    returning_traits_with_dyn.Animal.noise `{H' : State.Trait} := noise;
  }.
  Global Hint Resolve I : core.
End Impl_returning_traits_with_dyn_Animal_for_returning_traits_with_dyn_Cow.

Definition random_animal
    `{H' : State.Trait}
    (random_number : f64)
    : M (H := H') (alloc.boxed.Box TraitObject) :=
  let* α0 := random_number.["lt"] 1 (* 0.5 *) in
  if (α0 : bool) then
    alloc.boxed.Box::["new"] {|  |}
  else
    alloc.boxed.Box::["new"] {|  |}.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H' : State.Trait} : M (H := H') unit :=
  let random_number := 0 (* 0.234 *) in
  let* animal := returning_traits_with_dyn.random_animal random_number in
  let* _ :=
    let* _ :=
      let* α0 := animal.["noise"] in
      let* α1 := format_argument::["new_display"] (addr_of α0) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ "You've randomly chosen an animal, and it says "; "
" ])
          (addr_of [ α1 ]) in
      std.io.stdio._print α2 in
    Pure tt in
  Pure tt.
