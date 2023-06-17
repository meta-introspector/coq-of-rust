(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Container.
  Record t : Set := { _ : i32; _ : i32;}.
  
  Global Instance Get_0 : Notation.Dot 0 := {
    Notation.dot '(Build_t x0 _) := x0;
  }.
  Global Instance Get_1 : Notation.Dot 1 := {
    Notation.dot '(Build_t _ x1) := x1;
  }.
End Container.
Definition Container := Container.t.

Module Contains.
  Class Trait (Self : Set) : Set := {
    A : Set;
    B : Set;
    contains : (ref Self) -> (ref ImplSelf.A) -> (ref ImplSelf.B) -> (M bool);
    first : (ref Self) -> (M i32);
    last : (ref Self) -> (M i32);
  }.
  
  Global Instance Method_A `(Trait) : Notation.Dot "A" := {
    Notation.dot := A;
  }.
  Global Instance Method_B `(Trait) : Notation.Dot "B" := {
    Notation.dot := B;
  }.
  Global Instance Method_contains `(Trait) : Notation.Dot "contains" := {
    Notation.dot := contains;
  }.
  Global Instance Method_first `(Trait) : Notation.Dot "first" := {
    Notation.dot := first;
  }.
  Global Instance Method_last `(Trait) : Notation.Dot "last" := {
    Notation.dot := last;
  }.
End Contains.

Module
    Impl_generics_associated_types_solution_Contains_for_generics_associated_types_solution_Container.
  Definition Self := generics_associated_types_solution.Container.
  
  Definition A : Set := i32.
  
  Definition B : Set := i32.
  
  Definition contains
      (self : ref Self)
      (number_1 : ref i32)
      (number_2 : ref i32)
      : M bool :=
    let* α0 := (addr_of (self.[0])).["eq"] number_1 in
    let* α1 := (addr_of (self.[1])).["eq"] number_2 in
    α0.["andb"] α1.
  
  Global Instance Method_contains : Notation.Dot "contains" := {
    Notation.dot := contains;
  }.
  
  Definition first (self : ref Self) : M i32 := Pure (self.[0]).
  
  Global Instance Method_first : Notation.Dot "first" := {
    Notation.dot := first;
  }.
  
  Definition last (self : ref Self) : M i32 := Pure (self.[1]).
  
  Global Instance Method_last : Notation.Dot "last" := {
    Notation.dot := last;
  }.
  
  Global Instance I : generics_associated_types_solution.Contains.Trait Self :=
    {
    generics_associated_types_solution.Contains.contains := contains;
    generics_associated_types_solution.Contains.first := first;
    generics_associated_types_solution.Contains.last := last;
  }.
End
  Impl_generics_associated_types_solution_Contains_for_generics_associated_types_solution_Container.

Definition difference
    {C : Set}
    `{generics_associated_types_solution.Contains.Trait
      generics_associated_types_solution.difference.C}
    (container : ref generics_associated_types_solution.difference.C)
    : M i32 :=
  let* α0 := container.["last"] in
  let* α1 := container.["first"] in
  α0.["sub"] α1.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
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
