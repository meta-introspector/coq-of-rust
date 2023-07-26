(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Container.
  Unset Primitive Projections.
  Record t : Set := {
    _ : i32;
    _ : i32;
  }.
  Global Set Primitive Projections.
  
    Global Instance Get_0 : Notation.Dot 0 := {
      Notation.dot '(Build_t x0 _) := x0;
    }.
    Global Instance Get_1 : Notation.Dot 1 := {
      Notation.dot '(Build_t _ x1) := x1;
    }.
End Container.
Definition Container := Container.t.

Module Contains.
  Class Trait (Self : Set) {A : Set} {B : Set} : Set := {
    A := A;
    B := B;
    contains
      `{H : State.Trait}
      :
      (ref Self) -> (ref ImplSelf.A) -> (ref ImplSelf.B) -> (M (H := H) bool);
    first `{H : State.Trait} : (ref Self) -> (M (H := H) i32);
    last `{H : State.Trait} : (ref Self) -> (M (H := H) i32);
  }.
  
  Global Instance Method_A `{H : State.Trait} `(Trait)
    : Notation.DoubleColonType Self "A" := {
    Notation.double_colon_type := A;
  }.
  Global Instance Method_B `{H : State.Trait} `(Trait)
    : Notation.DoubleColonType Self "B" := {
    Notation.double_colon_type := B;
  }.
  Global Instance Method_contains `{H : State.Trait} `(Trait)
    : Notation.Dot "contains" := {
    Notation.dot := contains;
  }.
  Global Instance Method_first `{H : State.Trait} `(Trait)
    : Notation.Dot "first" := {
    Notation.dot := first;
  }.
  Global Instance Method_last `{H : State.Trait} `(Trait)
    : Notation.Dot "last" := {
    Notation.dot := last;
  }.
End Contains.

Module
  Impl_generics_associated_types_solution_Contains_for_generics_associated_types_solution_Container.
  Definition Self := generics_associated_types_solution.Container.
  
  Definition A : Set := i32.
  
  Definition B : Set := i32.
  
  Definition contains
      `{H : State.Trait}
      (self : ref Self)
      (number_1 : ref i32)
      (number_2 : ref i32)
      : M (H := H) bool :=
    let* α0 := (addr_of (self.[0])).["eq"] number_1 in
    let* α1 := (addr_of (self.[1])).["eq"] number_2 in
    α0.["andb"] α1.
  
  Global Instance Method_contains `{H : State.Trait} :
    Notation.Dot "contains" := {
    Notation.dot := contains;
  }.
  
  Definition first `{H : State.Trait} (self : ref Self) : M (H := H) i32 :=
    Pure (self.[0]).
  
  Global Instance Method_first `{H : State.Trait} : Notation.Dot "first" := {
    Notation.dot := first;
  }.
  
  Definition last `{H : State.Trait} (self : ref Self) : M (H := H) i32 :=
    Pure (self.[1]).
  
  Global Instance Method_last `{H : State.Trait} : Notation.Dot "last" := {
    Notation.dot := last;
  }.
  
  Global Instance I :
      generics_associated_types_solution.Contains.Trait Self := {
    generics_associated_types_solution.Contains.contains
      `{H : State.Trait}
      :=
      contains;
    generics_associated_types_solution.Contains.first
      `{H : State.Trait}
      :=
      first;
    generics_associated_types_solution.Contains.last `{H : State.Trait} := last;
  }.
End
  Impl_generics_associated_types_solution_Contains_for_generics_associated_types_solution_Container.

Definition difference
    `{H : State.Trait}
    {C : Set}
    `{generics_associated_types_solution.Contains.Trait C}
    (container : ref C)
    : M (H := H) i32 :=
  let* α0 := container.["last"] in
  let* α1 := container.["first"] in
  α0.["sub"] α1.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H : State.Trait} : M (H := H) unit :=
  let number_1 := 3 in
  let number_2 := 10 in
  let container :=
    generics_associated_types_solution.Container.Build_t number_1 number_2 in
  let* _ :=
    let* _ :=
      let* α0 :=
        format_argument::["new_display"] (addr_of (addr_of number_1)) in
      let* α1 :=
        format_argument::["new_display"] (addr_of (addr_of number_2)) in
      let* α2 := container.["contains"] (addr_of number_1) (addr_of number_2) in
      let* α3 := format_argument::["new_display"] (addr_of α2) in
      let* α4 :=
        format_arguments::["new_v1"]
          (addr_of [ "Does container contain "; " and "; ": "; "
" ])
          (addr_of [ α0; α1; α3 ]) in
      std.io.stdio._print α4 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := container.["first"] in
      let* α1 := format_argument::["new_display"] (addr_of α0) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ "First number: "; "
" ])
          (addr_of [ α1 ]) in
      std.io.stdio._print α2 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := container.["last"] in
      let* α1 := format_argument::["new_display"] (addr_of α0) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ "Last number: "; "
" ])
          (addr_of [ α1 ]) in
      std.io.stdio._print α2 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        generics_associated_types_solution.difference (addr_of container) in
      let* α1 := format_argument::["new_display"] (addr_of α0) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ "The difference is: "; "
" ])
          (addr_of [ α1 ]) in
      std.io.stdio._print α2 in
    Pure tt in
  Pure tt.
