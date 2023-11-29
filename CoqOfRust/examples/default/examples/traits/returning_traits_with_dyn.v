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
  Definition noise (self : ref ltac:(Self)) : M (ref str.t) :=
    let* self : M.Val (ref ltac:(Self)) := M.alloc self in
    M.read (mk_str "baaaaah!").
  
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
  Definition noise (self : ref ltac:(Self)) : M (ref str.t) :=
    let* self : M.Val (ref ltac:(Self)) := M.alloc self in
    M.read (mk_str "moooooo!").
  
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
Definition random_animal
    (random_number : f64.t)
    : M (alloc.boxed.Box.t _ (* dyn *) alloc.boxed.Box.Default.A) :=
  let* random_number : M.Val f64.t := M.alloc random_number in
  let* α0 : f64.t := M.read random_number in
  let* α1 : f64.t := M.read UnsupportedLiteral in
  let* α2 :
      M.Val (alloc.boxed.Box.t type not implemented alloc.alloc.Global.t) :=
    if (use (BinOp.Pure.lt α0 α1) : bool) then
      let* α0 :
          alloc.boxed.Box.t
            returning_traits_with_dyn.Sheep.t
            alloc.alloc.Global.t :=
        (alloc.boxed.Box.t
              returning_traits_with_dyn.Sheep.t
              alloc.alloc.Global.t)::["new"]
          returning_traits_with_dyn.Sheep.Build_t in
      let* α1 :
          M.Val
            (alloc.boxed.Box.t
              returning_traits_with_dyn.Sheep.t
              alloc.alloc.Global.t) :=
        M.alloc α0 in
      M.pure (pointer_coercion "Unsize" (pointer_coercion "Unsize" α1))
    else
      let* α0 :
          alloc.boxed.Box.t
            returning_traits_with_dyn.Cow.t
            alloc.alloc.Global.t :=
        (alloc.boxed.Box.t
              returning_traits_with_dyn.Cow.t
              alloc.alloc.Global.t)::["new"]
          returning_traits_with_dyn.Cow.Build_t in
      let* α1 :
          M.Val
            (alloc.boxed.Box.t
              returning_traits_with_dyn.Cow.t
              alloc.alloc.Global.t) :=
        M.alloc α0 in
      M.pure (pointer_coercion "Unsize" α1) in
  M.read (pointer_coercion "Unsize" (pointer_coercion "Unsize" α2)).

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
Definition main : M unit :=
  let* random_number : M.Val f64.t := M.copy UnsupportedLiteral in
  let* animal :
      M.Val (alloc.boxed.Box.t type not implemented alloc.alloc.Global.t) :=
    let* α0 : f64.t := M.read random_number in
    let* α1 : alloc.boxed.Box.t type not implemented alloc.alloc.Global.t :=
      returning_traits_with_dyn.random_animal α0 in
    M.alloc α1 in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc
          [ mk_str "You've randomly chosen an animal, and it says "; mk_str "
"
          ] in
      let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
      let* α2 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α1) in
      let* α3 : alloc.boxed.Box.t type not implemented alloc.alloc.Global.t :=
        M.read animal in
      let* α4 : ref str.t :=
        (returning_traits_with_dyn.Animal.noise
            (Self := type not implemented)
            (Trait := ltac:(refine _)))
          (borrow (deref α3)) in
      let* α5 : M.Val (ref str.t) := M.alloc α4 in
      let* α6 : core.fmt.rt.Argument.t :=
        core.fmt.rt.Argument.t::["new_display"] (borrow α5) in
      let* α7 : M.Val core.fmt.rt.Argument.t := M.alloc α6 in
      let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
      let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α8) in
      let* α10 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α9) in
      let* α11 : core.fmt.Arguments.t :=
        core.fmt.Arguments.t::["new_v1"] α2 α10 in
      let* α12 : unit := std.io.stdio._print α11 in
      M.alloc α12 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
