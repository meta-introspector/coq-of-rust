(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Sheep.
Section Sheep.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := { }.
  Global Set Primitive Projections.
End Sheep.
End Sheep.
Definition Sheep `{ℋ : State.Trait} : Set := M.Val Sheep.t.

Module  Cow.
Section Cow.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := { }.
  Global Set Primitive Projections.
End Cow.
End Cow.
Definition Cow `{ℋ : State.Trait} : Set := M.Val Cow.t.

Module  Animal.
Section Animal.
  Context `{ℋ : State.Trait}.
  
  Class Trait (Self : Set) : Type := {
    noise : (ref Self) -> M (ref str);
  }.
  
End Animal.
End Animal.

Module  Impl_returning_traits_with_dyn_Animal_for_returning_traits_with_dyn_Sheep.
Section Impl_returning_traits_with_dyn_Animal_for_returning_traits_with_dyn_Sheep.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := returning_traits_with_dyn.Sheep.
  
  Definition noise (self : ref Self) : M (ref str) :=
    M.function_body (M.pure (mk_str "baaaaah!")).
  
  Global Instance AssociatedFunction_noise :
    Notation.DoubleColon Self "noise" := {
    Notation.double_colon := noise;
  }.
  
  Global Instance ℐ : returning_traits_with_dyn.Animal.Trait Self := {
    returning_traits_with_dyn.Animal.noise := noise;
  }.
End Impl_returning_traits_with_dyn_Animal_for_returning_traits_with_dyn_Sheep.
End Impl_returning_traits_with_dyn_Animal_for_returning_traits_with_dyn_Sheep.

Module  Impl_returning_traits_with_dyn_Animal_for_returning_traits_with_dyn_Cow.
Section Impl_returning_traits_with_dyn_Animal_for_returning_traits_with_dyn_Cow.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := returning_traits_with_dyn.Cow.
  
  Definition noise (self : ref Self) : M (ref str) :=
    M.function_body (M.pure (mk_str "moooooo!")).
  
  Global Instance AssociatedFunction_noise :
    Notation.DoubleColon Self "noise" := {
    Notation.double_colon := noise;
  }.
  
  Global Instance ℐ : returning_traits_with_dyn.Animal.Trait Self := {
    returning_traits_with_dyn.Animal.noise := noise;
  }.
End Impl_returning_traits_with_dyn_Animal_for_returning_traits_with_dyn_Cow.
End Impl_returning_traits_with_dyn_Animal_for_returning_traits_with_dyn_Cow.

Definition random_animal
    `{ℋ : State.Trait}
    (random_number : f64)
    : M (alloc.boxed.Box _ (* dyn *) alloc.boxed.Box.Default.A) :=
  M.function_body
    (let* α0 : ltac:(refine f64) := M.alloc 1 (* 0.5 *) in
    let* α1 : ltac:(refine bool) := BinOp.lt random_number α0 in
    let* α2 : ltac:(refine bool) := use α1 in
    let*
        α3 :
        ltac:(refine
          (alloc.boxed.Box type not implemented alloc.alloc.Global)) :=
      if (α2 : bool) then
        let* α0 : ltac:(refine returning_traits_with_dyn.Sheep) :=
          M.alloc returning_traits_with_dyn.Sheep.Build_t in
        let*
            α1 :
            ltac:(refine
              (alloc.boxed.Box
                returning_traits_with_dyn.Sheep
                alloc.alloc.Global)) :=
          (alloc.boxed.Box
                returning_traits_with_dyn.Sheep
                alloc.alloc.Global)::["new"]
            α0 in
        let*
            α0 :
            ltac:(refine
              (alloc.boxed.Box type not implemented alloc.alloc.Global)) :=
          pointer_coercion "Unsize" α1 in
        pointer_coercion "Unsize" α0
      else
        let* α0 : ltac:(refine returning_traits_with_dyn.Cow) :=
          M.alloc returning_traits_with_dyn.Cow.Build_t in
        let*
            α1 :
            ltac:(refine
              (alloc.boxed.Box
                returning_traits_with_dyn.Cow
                alloc.alloc.Global)) :=
          (alloc.boxed.Box
                returning_traits_with_dyn.Cow
                alloc.alloc.Global)::["new"]
            α0 in
        pointer_coercion "Unsize" α1 in
    let*
        α0 :
        ltac:(refine
          (alloc.boxed.Box type not implemented alloc.alloc.Global)) :=
      pointer_coercion "Unsize" α3 in
    pointer_coercion "Unsize" α0).

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* random_number : ltac:(refine f64) := M.alloc 0 (* 0.234 *) in
    let*
        animal :
        ltac:(refine
          (alloc.boxed.Box type not implemented alloc.alloc.Global)) :=
      returning_traits_with_dyn.random_animal random_number in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc
            [
              mk_str "You've randomly chosen an animal, and it says ";
              mk_str "
"
            ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine type not implemented) := deref animal in
        let* α6 : ltac:(refine (ref type not implemented)) := borrow α5 in
        let* α7 : ltac:(refine (ref str)) :=
          (returning_traits_with_dyn.Animal.noise
              (Self := type not implemented)
              (Trait := ltac:(refine _)))
            α6 in
        let* α8 : ltac:(refine (ref (ref str))) := borrow α7 in
        let* α9 : ltac:(refine (ref str)) := deref α8 in
        let* α10 : ltac:(refine (ref (ref str))) := borrow α9 in
        let* α11 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_display"] α10 in
        let* α12 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α11 ] in
        let* α13 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α12 in
        let* α14 : ltac:(refine (array core.fmt.rt.Argument)) := deref α13 in
        let* α15 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α14 in
        let* α16 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α15 in
        let* α17 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α4 α16 in
        std.io.stdio._print α17 in
      M.alloc tt in
    M.alloc tt).
