(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Container.
Section Container.
  Record t : Set := {
    x0 : i32.t;
    x1 : i32.t;
  }.
  
  Global Instance Get_0 : Notations.Dot "0" := {
    Notations.dot := Ref.map (fun x => x.(x0)) (fun v x => x <| x0 := v |>);
  }.
  Global Instance Get_1 : Notations.Dot "1" := {
    Notations.dot := Ref.map (fun x => x.(x1)) (fun v x => x <| x1 := v |>);
  }.
End Container.
End Container.

Module  Contains.
Section Contains.
  Class Trait (Self : Set) {A B : Set} : Type := {
    contains : (ref ltac:(Self)) -> (ref A) -> (ref B) -> M bool.t;
    first : (ref ltac:(Self)) -> M i32.t;
    last : (ref ltac:(Self)) -> M i32.t;
  }.
  
End Contains.
End Contains.

Module  Impl_generics_associated_types_problem_Contains_i32_t_i32_t_for_generics_associated_types_problem_Container_t.
Section Impl_generics_associated_types_problem_Contains_i32_t_i32_t_for_generics_associated_types_problem_Container_t.
  Ltac Self := exact generics_associated_types_problem.Container.t.
  
  (*
      fn contains(&self, number_1: &i32, number_2: &i32) -> bool {
          (&self.0 == number_1) && (&self.1 == number_2)
      }
  *)
  Definition contains
      (self : M.Val (ref ltac:(Self)))
      (number_1 : M.Val (ref i32.t))
      (number_2 : M.Val (ref i32.t))
      : M bool.t :=
    M.function_body
      (let* α0 : M.Val generics_associated_types_problem.Container.t :=
        deref self in
      let* α1 : M.Val (ref i32.t) := borrow α0.["0"] in
      let* α2 : M.Val (ref (ref i32.t)) := borrow α1 in
      let* α3 : M.Val (ref (ref i32.t)) := borrow number_1 in
      let* α4 :=
        (core.cmp.PartialEq.eq (Self := ref i32.t) (Trait := ltac:(refine _)))
          α2
          α3 in
      let* α5 : M.Val bool.t := M.alloc α4 in
      let* α6 : M.Val generics_associated_types_problem.Container.t :=
        deref self in
      let* α7 : M.Val (ref i32.t) := borrow α6.["1"] in
      let* α8 : M.Val (ref (ref i32.t)) := borrow α7 in
      let* α9 : M.Val (ref (ref i32.t)) := borrow number_2 in
      let* α10 :=
        (core.cmp.PartialEq.eq (Self := ref i32.t) (Trait := ltac:(refine _)))
          α8
          α9 in
      let* α11 : M.Val bool.t := M.alloc α10 in
      BinOp.and α5 α11).
  
  Global Instance AssociatedFunction_contains :
    Notations.DoubleColon ltac:(Self) "contains" := {
    Notations.double_colon := contains;
  }.
  
  (*
      fn first(&self) -> i32 {
          self.0
      }
  *)
  Definition first (self : M.Val (ref ltac:(Self))) : M i32.t :=
    M.function_body
      (let* α0 : M.Val generics_associated_types_problem.Container.t :=
        deref self in
      M.pure α0.["0"]).
  
  Global Instance AssociatedFunction_first :
    Notations.DoubleColon ltac:(Self) "first" := {
    Notations.double_colon := first;
  }.
  
  (*
      fn last(&self) -> i32 {
          self.1
      }
  *)
  Definition last (self : M.Val (ref ltac:(Self))) : M i32.t :=
    M.function_body
      (let* α0 : M.Val generics_associated_types_problem.Container.t :=
        deref self in
      M.pure α0.["1"]).
  
  Global Instance AssociatedFunction_last :
    Notations.DoubleColon ltac:(Self) "last" := {
    Notations.double_colon := last;
  }.
  
  Global Instance ℐ :
    generics_associated_types_problem.Contains.Trait ltac:(Self)
      (A := i32.t)
      (B := i32.t) := {
    generics_associated_types_problem.Contains.contains := contains;
    generics_associated_types_problem.Contains.first := first;
    generics_associated_types_problem.Contains.last := last;
  }.
End Impl_generics_associated_types_problem_Contains_i32_t_i32_t_for_generics_associated_types_problem_Container_t.
End Impl_generics_associated_types_problem_Contains_i32_t_i32_t_for_generics_associated_types_problem_Container_t.

(*
fn difference<A, B, C>(container: &C) -> i32
where
    C: Contains<A, B>,
{
    container.last() - container.first()
}
*)
Definition difference
    {A B C : Set}
    {ℋ_0 : generics_associated_types_problem.Contains.Trait C (A := A) (B := B)}
    (container : M.Val (ref C))
    : M i32.t :=
  M.function_body
    (let* α0 : M.Val C := deref container in
    let* α1 : M.Val (ref C) := borrow α0 in
    let* α2 :=
      (generics_associated_types_problem.Contains.last
          (Self := C)
          (Trait := ltac:(refine _)))
        α1 in
    let* α3 : M.Val i32.t := M.alloc α2 in
    let* α4 : M.Val C := deref container in
    let* α5 : M.Val (ref C) := borrow α4 in
    let* α6 :=
      (generics_associated_types_problem.Contains.first
          (Self := C)
          (Trait := ltac:(refine _)))
        α5 in
    let* α7 : M.Val i32.t := M.alloc α6 in
    BinOp.sub α3 α7).

(*
fn main() {
    let number_1 = 3;
    let number_2 = 10;

    let container = Container(number_1, number_2);

    println!(
        "Does container contain {} and {}: {}",
        &number_1,
        &number_2,
        container.contains(&number_1, &number_2)
    );
    println!("First number: {}", container.first());
    println!("Last number: {}", container.last());

    println!("The difference is: {}", difference(&container));
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* number_1 : M.Val i32.t :=
      let* α0 : M.Val i32.t := M.alloc 3 in
      M.copy α0 in
    let* number_2 : M.Val i32.t :=
      let* α0 : M.Val i32.t := M.alloc 10 in
      M.copy α0 in
    let* container : M.Val generics_associated_types_problem.Container.t :=
      let* α0 := M.read number_1 in
      let* α1 := M.read number_2 in
      M.alloc (generics_associated_types_problem.Container.Build_t α0 α1) in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc
            [
              mk_str "Does container contain ";
              mk_str " and ";
              mk_str ": ";
              mk_str "
"
            ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : M.Val (ref i32.t) := borrow number_1 in
        let* α4 : M.Val (ref (ref i32.t)) := borrow α3 in
        let* α5 := core.fmt.rt.Argument.t::["new_display"] α4 in
        let* α6 : M.Val core.fmt.rt.Argument.t := M.alloc α5 in
        let* α7 : M.Val (ref i32.t) := borrow number_2 in
        let* α8 : M.Val (ref (ref i32.t)) := borrow α7 in
        let* α9 := core.fmt.rt.Argument.t::["new_display"] α8 in
        let* α10 : M.Val core.fmt.rt.Argument.t := M.alloc α9 in
        let* α11 : M.Val (ref generics_associated_types_problem.Container.t) :=
          borrow container in
        let* α12 : M.Val (ref i32.t) := borrow number_1 in
        let* α13 : M.Val (ref i32.t) := borrow number_2 in
        let* α14 :=
          (generics_associated_types_problem.Contains.contains
              (Self := generics_associated_types_problem.Container.t)
              (Trait := ltac:(refine _)))
            α11
            α12
            α13 in
        let* α15 : M.Val bool.t := M.alloc α14 in
        let* α16 : M.Val (ref bool.t) := borrow α15 in
        let* α17 := core.fmt.rt.Argument.t::["new_display"] α16 in
        let* α18 : M.Val core.fmt.rt.Argument.t := M.alloc α17 in
        let* α19 : M.Val (array core.fmt.rt.Argument.t) :=
          M.alloc [ α6; α10; α18 ] in
        let* α20 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α19 in
        let* α21 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α20 in
        let* α22 := core.fmt.Arguments.t::["new_v1"] α2 α21 in
        let* α23 : M.Val core.fmt.Arguments.t := M.alloc α22 in
        let* α24 := std.io.stdio._print α23 in
        M.alloc α24 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "First number: "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : M.Val (ref generics_associated_types_problem.Container.t) :=
          borrow container in
        let* α4 :=
          (generics_associated_types_problem.Contains.first
              (Self := generics_associated_types_problem.Container.t)
              (Trait := ltac:(refine _)))
            α3 in
        let* α5 : M.Val i32.t := M.alloc α4 in
        let* α6 : M.Val (ref i32.t) := borrow α5 in
        let* α7 := core.fmt.rt.Argument.t::["new_display"] α6 in
        let* α8 : M.Val core.fmt.rt.Argument.t := M.alloc α7 in
        let* α9 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α8 ] in
        let* α10 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α9 in
        let* α11 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments.t::["new_v1"] α2 α11 in
        let* α13 : M.Val core.fmt.Arguments.t := M.alloc α12 in
        let* α14 := std.io.stdio._print α13 in
        M.alloc α14 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Last number: "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : M.Val (ref generics_associated_types_problem.Container.t) :=
          borrow container in
        let* α4 :=
          (generics_associated_types_problem.Contains.last
              (Self := generics_associated_types_problem.Container.t)
              (Trait := ltac:(refine _)))
            α3 in
        let* α5 : M.Val i32.t := M.alloc α4 in
        let* α6 : M.Val (ref i32.t) := borrow α5 in
        let* α7 := core.fmt.rt.Argument.t::["new_display"] α6 in
        let* α8 : M.Val core.fmt.rt.Argument.t := M.alloc α7 in
        let* α9 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α8 ] in
        let* α10 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α9 in
        let* α11 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments.t::["new_v1"] α2 α11 in
        let* α13 : M.Val core.fmt.Arguments.t := M.alloc α12 in
        let* α14 := std.io.stdio._print α13 in
        M.alloc α14 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "The difference is: "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : M.Val (ref generics_associated_types_problem.Container.t) :=
          borrow container in
        let* α4 := generics_associated_types_problem.difference α3 in
        let* α5 : M.Val i32.t := M.alloc α4 in
        let* α6 : M.Val (ref i32.t) := borrow α5 in
        let* α7 := core.fmt.rt.Argument.t::["new_display"] α6 in
        let* α8 : M.Val core.fmt.rt.Argument.t := M.alloc α7 in
        let* α9 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α8 ] in
        let* α10 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α9 in
        let* α11 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments.t::["new_v1"] α2 α11 in
        let* α13 : M.Val core.fmt.Arguments.t := M.alloc α12 in
        let* α14 := std.io.stdio._print α13 in
        M.alloc α14 in
      M.alloc tt in
    M.alloc tt).
