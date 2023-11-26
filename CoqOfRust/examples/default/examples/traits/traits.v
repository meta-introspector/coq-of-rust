(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Sheep.
Section Sheep.
  Record t : Set := {
    naked : bool.t;
    name : ref str.t;
  }.
  
  Global Instance Get_naked : Notations.Dot "naked" := {
    Notations.dot :=
      Ref.map (fun x => x.(naked)) (fun v x => x <| naked := v |>);
  }.
  Global Instance Get_AF_naked : Notations.DoubleColon t "naked" := {
    Notations.double_colon (x : M.Val t) := x.["naked"];
  }.
  Global Instance Get_name : Notations.Dot "name" := {
    Notations.dot := Ref.map (fun x => x.(name)) (fun v x => x <| name := v |>);
  }.
  Global Instance Get_AF_name : Notations.DoubleColon t "name" := {
    Notations.double_colon (x : M.Val t) := x.["name"];
  }.
End Sheep.
End Sheep.

Module  Animal.
Section Animal.
  Class Trait (Self : Set) : Type := {
    new : (ref str.t) -> M ltac:(Self);
    name : (ref ltac:(Self)) -> M (ref str.t);
    noise : (ref ltac:(Self)) -> M (ref str.t);
  }.
  
End Animal.
End Animal.

Module  Impl_traits_Sheep_t.
Section Impl_traits_Sheep_t.
  Ltac Self := exact traits.Sheep.t.
  
  (*
      fn is_naked(&self) -> bool {
          self.naked
      }
  *)
  Definition is_naked (self : ref ltac:(Self)) : M bool.t :=
    let* self := M.alloc self in
    M.function_body
      (let* α0 : M.Val traits.Sheep.t := deref self in
      M.pure α0.["naked"]).
  
  Global Instance AssociatedFunction_is_naked :
    Notations.DoubleColon ltac:(Self) "is_naked" := {
    Notations.double_colon := is_naked;
  }.
End Impl_traits_Sheep_t.
End Impl_traits_Sheep_t.

Module  Impl_traits_Animal_for_traits_Sheep_t.
Section Impl_traits_Animal_for_traits_Sheep_t.
  Ltac Self := exact traits.Sheep.t.
  
  (*
      fn new(name: &'static str) -> Sheep {
          Sheep {
              name: name,
              naked: false,
          }
      }
  *)
  Definition new (name : ref str.t) : M traits.Sheep.t :=
    let* name := M.alloc name in
    M.function_body
      (let* α0 := M.read name in
      let* α1 : M.Val bool.t := M.alloc false in
      let* α2 := M.read α1 in
      M.alloc {| traits.Sheep.name := α0; traits.Sheep.naked := α2; |}).
  
  Global Instance AssociatedFunction_new :
    Notations.DoubleColon ltac:(Self) "new" := {
    Notations.double_colon := new;
  }.
  
  (*
      fn name(&self) -> &'static str {
          self.name
      }
  *)
  Definition name (self : ref ltac:(Self)) : M (ref str.t) :=
    let* self := M.alloc self in
    M.function_body
      (let* α0 : M.Val traits.Sheep.t := deref self in
      M.pure α0.["name"]).
  
  Global Instance AssociatedFunction_name :
    Notations.DoubleColon ltac:(Self) "name" := {
    Notations.double_colon := name;
  }.
  
  (*
      fn noise(&self) -> &'static str {
          if self.is_naked() {
              "baaaaah?"
          } else {
              "baaaaah!"
          }
      }
  *)
  Definition noise (self : ref ltac:(Self)) : M (ref str.t) :=
    let* self := M.alloc self in
    M.function_body
      (let* α0 : M.Val traits.Sheep.t := deref self in
      let* α1 : M.Val (ref traits.Sheep.t) := borrow α0 in
      let* α2 := M.read α1 in
      let* α3 := traits.Sheep.t::["is_naked"] α2 in
      let* α4 : M.Val bool.t := M.alloc α3 in
      let* α5 : M.Val bool.t := use α4 in
      let* α6 := M.read α5 in
      if (α6 : bool) then
        M.pure (mk_str "baaaaah?")
      else
        M.pure (mk_str "baaaaah!")).
  
  Global Instance AssociatedFunction_noise :
    Notations.DoubleColon ltac:(Self) "noise" := {
    Notations.double_colon := noise;
  }.
  
  (*
      fn talk(&self) {
          // For example, we can add some quiet contemplation.
          println!("{} pauses briefly... {}", self.name, self.noise());
      }
  *)
  Definition talk (self : ref ltac:(Self)) : M unit :=
    let* self := M.alloc self in
    M.function_body
      (let* _ : M.Val unit :=
        let* _ : M.Val unit :=
          let* α0 : M.Val (array (ref str.t)) :=
            M.alloc [ mk_str ""; mk_str " pauses briefly... "; mk_str "
" ] in
          let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
          let* α2 : M.Val (ref (slice (ref str.t))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 := M.read α2 in
          let* α4 : M.Val traits.Sheep.t := deref self in
          let* α5 : M.Val (ref (ref str.t)) := borrow α4.["name"] in
          let* α6 := M.read α5 in
          let* α7 := core.fmt.rt.Argument.t::["new_display"] α6 in
          let* α8 : M.Val core.fmt.rt.Argument.t := M.alloc α7 in
          let* α9 : M.Val traits.Sheep.t := deref self in
          let* α10 : M.Val (ref traits.Sheep.t) := borrow α9 in
          let* α11 := M.read α10 in
          let* α12 :=
            (traits.Animal.noise
                (Self := traits.Sheep.t)
                (Trait := ltac:(refine _)))
              α11 in
          let* α13 : M.Val (ref str.t) := M.alloc α12 in
          let* α14 : M.Val (ref (ref str.t)) := borrow α13 in
          let* α15 := M.read α14 in
          let* α16 := core.fmt.rt.Argument.t::["new_display"] α15 in
          let* α17 : M.Val core.fmt.rt.Argument.t := M.alloc α16 in
          let* α18 : M.Val (array core.fmt.rt.Argument.t) :=
            M.alloc [ α8; α17 ] in
          let* α19 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α18 in
          let* α20 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
            pointer_coercion "Unsize" α19 in
          let* α21 := M.read α20 in
          let* α22 := core.fmt.Arguments.t::["new_v1"] α3 α21 in
          let* α23 := std.io.stdio._print α22 in
          M.alloc α23 in
        M.alloc tt in
      M.alloc tt).
  
  Global Instance AssociatedFunction_talk :
    Notations.DoubleColon ltac:(Self) "talk" := {
    Notations.double_colon := talk;
  }.
  
  Global Instance ℐ : traits.Animal.Required.Trait ltac:(Self) := {
    traits.Animal.new := new;
    traits.Animal.name := name;
    traits.Animal.noise := noise;
    traits.Animal.talk := Datatypes.Some talk;
  }.
End Impl_traits_Animal_for_traits_Sheep_t.
End Impl_traits_Animal_for_traits_Sheep_t.

Module  Impl_traits_Sheep_t_2.
Section Impl_traits_Sheep_t_2.
  Ltac Self := exact traits.Sheep.t.
  
  (*
      fn shear(&mut self) {
          if self.is_naked() {
              // Implementor methods can use the implementor's trait methods.
              println!("{} is already naked...", self.name());
          } else {
              println!("{} gets a haircut!", self.name);
  
              self.naked = true;
          }
      }
  *)
  Definition shear (self : mut_ref ltac:(Self)) : M unit :=
    let* self := M.alloc self in
    M.function_body
      (let* α0 : M.Val traits.Sheep.t := deref self in
      let* α1 : M.Val (ref traits.Sheep.t) := borrow α0 in
      let* α2 := M.read α1 in
      let* α3 := traits.Sheep.t::["is_naked"] α2 in
      let* α4 : M.Val bool.t := M.alloc α3 in
      let* α5 : M.Val bool.t := use α4 in
      let* α6 := M.read α5 in
      if (α6 : bool) then
        let* _ : M.Val unit :=
          let* _ : M.Val unit :=
            let* α0 : M.Val (array (ref str.t)) :=
              M.alloc [ mk_str ""; mk_str " is already naked...
" ] in
            let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
            let* α2 : M.Val (ref (slice (ref str.t))) :=
              pointer_coercion "Unsize" α1 in
            let* α3 := M.read α2 in
            let* α4 : M.Val traits.Sheep.t := deref self in
            let* α5 : M.Val (ref traits.Sheep.t) := borrow α4 in
            let* α6 := M.read α5 in
            let* α7 :=
              (traits.Animal.name
                  (Self := traits.Sheep.t)
                  (Trait := ltac:(refine _)))
                α6 in
            let* α8 : M.Val (ref str.t) := M.alloc α7 in
            let* α9 : M.Val (ref (ref str.t)) := borrow α8 in
            let* α10 := M.read α9 in
            let* α11 := core.fmt.rt.Argument.t::["new_display"] α10 in
            let* α12 : M.Val core.fmt.rt.Argument.t := M.alloc α11 in
            let* α13 : M.Val (array core.fmt.rt.Argument.t) :=
              M.alloc [ α12 ] in
            let* α14 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
              borrow α13 in
            let* α15 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
              pointer_coercion "Unsize" α14 in
            let* α16 := M.read α15 in
            let* α17 := core.fmt.Arguments.t::["new_v1"] α3 α16 in
            let* α18 := std.io.stdio._print α17 in
            M.alloc α18 in
          M.alloc tt in
        M.alloc tt
      else
        let* _ : M.Val unit :=
          let* _ : M.Val unit :=
            let* α0 : M.Val (array (ref str.t)) :=
              M.alloc [ mk_str ""; mk_str " gets a haircut!
" ] in
            let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
            let* α2 : M.Val (ref (slice (ref str.t))) :=
              pointer_coercion "Unsize" α1 in
            let* α3 := M.read α2 in
            let* α4 : M.Val traits.Sheep.t := deref self in
            let* α5 : M.Val (ref (ref str.t)) := borrow α4.["name"] in
            let* α6 := M.read α5 in
            let* α7 := core.fmt.rt.Argument.t::["new_display"] α6 in
            let* α8 : M.Val core.fmt.rt.Argument.t := M.alloc α7 in
            let* α9 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α8 ] in
            let* α10 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
              borrow α9 in
            let* α11 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
              pointer_coercion "Unsize" α10 in
            let* α12 := M.read α11 in
            let* α13 := core.fmt.Arguments.t::["new_v1"] α3 α12 in
            let* α14 := std.io.stdio._print α13 in
            M.alloc α14 in
          M.alloc tt in
        let* _ : M.Val unit :=
          let* α0 : M.Val traits.Sheep.t := deref self in
          let* α1 : M.Val bool.t := M.alloc true in
          let* α2 := M.read α1 in
          assign α0.["naked"] α2 in
        M.alloc tt).
  
  Global Instance AssociatedFunction_shear :
    Notations.DoubleColon ltac:(Self) "shear" := {
    Notations.double_colon := shear;
  }.
End Impl_traits_Sheep_t_2.
End Impl_traits_Sheep_t_2.

(*
fn main() {
    // Type annotation is necessary in this case.
    let mut dolly: Sheep = Animal::new("Dolly");
    // TODO ^ Try removing the type annotations.

    dolly.talk();
    dolly.shear();
    dolly.talk();
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* dolly : M.Val traits.Sheep.t :=
      let* α0 := M.read (mk_str "Dolly") in
      let* α1 :=
        (traits.Animal.new (Self := traits.Sheep.t) (Trait := ltac:(refine _)))
          α0 in
      M.alloc α1 in
    let* _ : M.Val unit :=
      let* α0 : M.Val (ref traits.Sheep.t) := borrow dolly in
      let* α1 := M.read α0 in
      let* α2 :=
        (traits.Animal.talk (Self := traits.Sheep.t) (Trait := ltac:(refine _)))
          α1 in
      M.alloc α2 in
    let* _ : M.Val unit :=
      let* α0 : M.Val (mut_ref traits.Sheep.t) := borrow_mut dolly in
      let* α1 := M.read α0 in
      let* α2 := traits.Sheep.t::["shear"] α1 in
      M.alloc α2 in
    let* _ : M.Val unit :=
      let* α0 : M.Val (ref traits.Sheep.t) := borrow dolly in
      let* α1 := M.read α0 in
      let* α2 :=
        (traits.Animal.talk (Self := traits.Sheep.t) (Trait := ltac:(refine _)))
          α1 in
      M.alloc α2 in
    M.alloc tt).
