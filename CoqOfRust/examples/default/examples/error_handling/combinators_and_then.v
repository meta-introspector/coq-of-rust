(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Food.
  Inductive t : Set :=
  | CordonBleu
  | Steak
  | Sushi.
End Food.

Module  Impl_core_fmt_Debug_for_combinators_and_then_Food_t.
Section Impl_core_fmt_Debug_for_combinators_and_then_Food_t.
  Definition Self : Set := combinators_and_then.Food.t.
  
  (*
  Debug
  *)
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter.t)
      : M ltac:(core.fmt.Result) :=
    let* self := M.alloc self in
    let* f := M.alloc f in
    let* α0 : mut_ref core.fmt.Formatter.t := M.read f in
    let* α1 : M.Val (ref str.t) :=
      match_operator
        self
        [
          fun γ =>
            (let* γ :=
              let* α0 := M.read γ in
              M.pure (deref α0) in
            let* α0 := M.read γ in
            match α0 with
            | combinators_and_then.Food.CordonBleu =>
              let* α0 : ref str.t := M.read (mk_str "CordonBleu") in
              M.alloc α0
            | _ => M.break_match
            end) :
            M (M.Val (ref str.t));
          fun γ =>
            (let* γ :=
              let* α0 := M.read γ in
              M.pure (deref α0) in
            let* α0 := M.read γ in
            match α0 with
            | combinators_and_then.Food.Steak =>
              let* α0 : ref str.t := M.read (mk_str "Steak") in
              M.alloc α0
            | _ => M.break_match
            end) :
            M (M.Val (ref str.t));
          fun γ =>
            (let* γ :=
              let* α0 := M.read γ in
              M.pure (deref α0) in
            let* α0 := M.read γ in
            match α0 with
            | combinators_and_then.Food.Sushi =>
              let* α0 : ref str.t := M.read (mk_str "Sushi") in
              M.alloc α0
            | _ => M.break_match
            end) :
            M (M.Val (ref str.t))
        ] in
    let* α2 : ref str.t := M.read α1 in
    M.call (core.fmt.Formatter.t::["write_str"] α0 α2).
  
  Global Instance AssociatedFunction_fmt : Notations.DoubleColon Self "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_combinators_and_then_Food_t.
End Impl_core_fmt_Debug_for_combinators_and_then_Food_t.

Module Day.
  Inductive t : Set :=
  | Monday
  | Tuesday
  | Wednesday.
End Day.

Module  Impl_core_fmt_Debug_for_combinators_and_then_Day_t.
Section Impl_core_fmt_Debug_for_combinators_and_then_Day_t.
  Definition Self : Set := combinators_and_then.Day.t.
  
  (*
  Debug
  *)
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter.t)
      : M ltac:(core.fmt.Result) :=
    let* self := M.alloc self in
    let* f := M.alloc f in
    let* α0 : mut_ref core.fmt.Formatter.t := M.read f in
    let* α1 : M.Val (ref str.t) :=
      match_operator
        self
        [
          fun γ =>
            (let* γ :=
              let* α0 := M.read γ in
              M.pure (deref α0) in
            let* α0 := M.read γ in
            match α0 with
            | combinators_and_then.Day.Monday =>
              let* α0 : ref str.t := M.read (mk_str "Monday") in
              M.alloc α0
            | _ => M.break_match
            end) :
            M (M.Val (ref str.t));
          fun γ =>
            (let* γ :=
              let* α0 := M.read γ in
              M.pure (deref α0) in
            let* α0 := M.read γ in
            match α0 with
            | combinators_and_then.Day.Tuesday =>
              let* α0 : ref str.t := M.read (mk_str "Tuesday") in
              M.alloc α0
            | _ => M.break_match
            end) :
            M (M.Val (ref str.t));
          fun γ =>
            (let* γ :=
              let* α0 := M.read γ in
              M.pure (deref α0) in
            let* α0 := M.read γ in
            match α0 with
            | combinators_and_then.Day.Wednesday =>
              let* α0 : ref str.t := M.read (mk_str "Wednesday") in
              M.alloc α0
            | _ => M.break_match
            end) :
            M (M.Val (ref str.t))
        ] in
    let* α2 : ref str.t := M.read α1 in
    M.call (core.fmt.Formatter.t::["write_str"] α0 α2).
  
  Global Instance AssociatedFunction_fmt : Notations.DoubleColon Self "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_combinators_and_then_Day_t.
End Impl_core_fmt_Debug_for_combinators_and_then_Day_t.

(*
fn have_ingredients(food: Food) -> Option<Food> {
    match food {
        Food::Sushi => None,
        _ => Some(food),
    }
}
*)
Definition have_ingredients
    (food : combinators_and_then.Food.t)
    : M (core.option.Option.t combinators_and_then.Food.t) :=
  let* food := M.alloc food in
  let* α0 : M.Val (core.option.Option.t combinators_and_then.Food.t) :=
    match_operator
      food
      [
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | combinators_and_then.Food.Sushi => M.alloc core.option.Option.None
          | _ => M.break_match
          end) :
          M (M.Val (core.option.Option.t combinators_and_then.Food.t));
        fun γ =>
          (let* α0 : combinators_and_then.Food.t := M.read food in
          M.alloc (core.option.Option.Some α0)) :
          M (M.Val (core.option.Option.t combinators_and_then.Food.t))
      ] in
  M.read α0.

(*
fn have_recipe(food: Food) -> Option<Food> {
    match food {
        Food::CordonBleu => None,
        _ => Some(food),
    }
}
*)
Definition have_recipe
    (food : combinators_and_then.Food.t)
    : M (core.option.Option.t combinators_and_then.Food.t) :=
  let* food := M.alloc food in
  let* α0 : M.Val (core.option.Option.t combinators_and_then.Food.t) :=
    match_operator
      food
      [
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | combinators_and_then.Food.CordonBleu =>
            M.alloc core.option.Option.None
          | _ => M.break_match
          end) :
          M (M.Val (core.option.Option.t combinators_and_then.Food.t));
        fun γ =>
          (let* α0 : combinators_and_then.Food.t := M.read food in
          M.alloc (core.option.Option.Some α0)) :
          M (M.Val (core.option.Option.t combinators_and_then.Food.t))
      ] in
  M.read α0.

(*
fn cookable_v1(food: Food) -> Option<Food> {
    match have_recipe(food) {
        None => None,
        Some(food) => match have_ingredients(food) {
            None => None,
            Some(food) => Some(food),
        },
    }
}
*)
Definition cookable_v1
    (food : combinators_and_then.Food.t)
    : M (core.option.Option.t combinators_and_then.Food.t) :=
  let* food := M.alloc food in
  let* α0 : combinators_and_then.Food.t := M.read food in
  let* α1 : core.option.Option.t combinators_and_then.Food.t :=
    M.call (combinators_and_then.have_recipe α0) in
  let* α2 : M.Val (core.option.Option.t combinators_and_then.Food.t) :=
    M.alloc α1 in
  let* α3 : M.Val (core.option.Option.t combinators_and_then.Food.t) :=
    match_operator
      α2
      [
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | core.option.Option.None => M.alloc core.option.Option.None
          | _ => M.break_match
          end) :
          M (M.Val (core.option.Option.t combinators_and_then.Food.t));
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | core.option.Option.Some _ =>
            let γ0 := γ.["Some.0"] in
            let* food := M.copy γ0 in
            let* α0 : combinators_and_then.Food.t := M.read food in
            let* α1 : core.option.Option.t combinators_and_then.Food.t :=
              M.call (combinators_and_then.have_ingredients α0) in
            let* α2 :
                M.Val (core.option.Option.t combinators_and_then.Food.t) :=
              M.alloc α1 in
            match_operator
              α2
              [
                fun γ =>
                  (let* α0 := M.read γ in
                  match α0 with
                  | core.option.Option.None => M.alloc core.option.Option.None
                  | _ => M.break_match
                  end) :
                  M (M.Val (core.option.Option.t combinators_and_then.Food.t));
                fun γ =>
                  (let* α0 := M.read γ in
                  match α0 with
                  | core.option.Option.Some _ =>
                    let γ0 := γ.["Some.0"] in
                    let* food := M.copy γ0 in
                    let* α0 : combinators_and_then.Food.t := M.read food in
                    M.alloc (core.option.Option.Some α0)
                  | _ => M.break_match
                  end) :
                  M (M.Val (core.option.Option.t combinators_and_then.Food.t))
              ]
          | _ => M.break_match
          end) :
          M (M.Val (core.option.Option.t combinators_and_then.Food.t))
      ] in
  M.read α3.

(*
fn cookable_v2(food: Food) -> Option<Food> {
    have_recipe(food).and_then(have_ingredients)
}
*)
Definition cookable_v2
    (food : combinators_and_then.Food.t)
    : M (core.option.Option.t combinators_and_then.Food.t) :=
  let* food := M.alloc food in
  let* α0 : combinators_and_then.Food.t := M.read food in
  let* α1 : core.option.Option.t combinators_and_then.Food.t :=
    M.call (combinators_and_then.have_recipe α0) in
  M.call
    ((core.option.Option.t combinators_and_then.Food.t)::["and_then"]
      α1
      combinators_and_then.have_ingredients).

(*
fn eat(food: Food, day: Day) {
    match cookable_v2(food) {
        Some(food) => println!("Yay! On {:?} we get to eat {:?}.", day, food),
        None => println!("Oh no. We don't get to eat on {:?}?", day),
    }
}
*)
Definition eat
    (food : combinators_and_then.Food.t)
    (day : combinators_and_then.Day.t)
    : M unit :=
  let* food := M.alloc food in
  let* day := M.alloc day in
  let* α0 : combinators_and_then.Food.t := M.read food in
  let* α1 : core.option.Option.t combinators_and_then.Food.t :=
    M.call (combinators_and_then.cookable_v2 α0) in
  let* α2 : M.Val (core.option.Option.t combinators_and_then.Food.t) :=
    M.alloc α1 in
  let* α3 : M.Val unit :=
    match_operator
      α2
      [
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | core.option.Option.Some _ =>
            let γ0 := γ.["Some.0"] in
            let* food := M.copy γ0 in
            let* _ : M.Val unit :=
              let* α0 : ref str.t := M.read (mk_str "Yay! On ") in
              let* α1 : ref str.t := M.read (mk_str " we get to eat ") in
              let* α2 : ref str.t := M.read (mk_str ".
") in
              let* α3 : M.Val (array (ref str.t)) := M.alloc [ α0; α1; α2 ] in
              let* α4 : M.Val (ref (array (ref str.t))) :=
                M.alloc (borrow α3) in
              let* α5 : ref (slice (ref str.t)) :=
                M.read (pointer_coercion "Unsize" α4) in
              let* α6 : core.fmt.rt.Argument.t :=
                M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow day)) in
              let* α7 : core.fmt.rt.Argument.t :=
                M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow food)) in
              let* α8 : M.Val (array core.fmt.rt.Argument.t) :=
                M.alloc [ α6; α7 ] in
              let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
                M.alloc (borrow α8) in
              let* α10 : ref (slice core.fmt.rt.Argument.t) :=
                M.read (pointer_coercion "Unsize" α9) in
              let* α11 : core.fmt.Arguments.t :=
                M.call (core.fmt.Arguments.t::["new_v1"] α5 α10) in
              let* α12 : unit := M.call (std.io.stdio._print α11) in
              M.alloc α12 in
            M.alloc tt
          | _ => M.break_match
          end) :
          M (M.Val unit);
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | core.option.Option.None =>
            let* _ : M.Val unit :=
              let* α0 : ref str.t :=
                M.read (mk_str "Oh no. We don't get to eat on ") in
              let* α1 : ref str.t := M.read (mk_str "?
") in
              let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
              let* α3 : M.Val (ref (array (ref str.t))) :=
                M.alloc (borrow α2) in
              let* α4 : ref (slice (ref str.t)) :=
                M.read (pointer_coercion "Unsize" α3) in
              let* α5 : core.fmt.rt.Argument.t :=
                M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow day)) in
              let* α6 : M.Val (array core.fmt.rt.Argument.t) :=
                M.alloc [ α5 ] in
              let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
                M.alloc (borrow α6) in
              let* α8 : ref (slice core.fmt.rt.Argument.t) :=
                M.read (pointer_coercion "Unsize" α7) in
              let* α9 : core.fmt.Arguments.t :=
                M.call (core.fmt.Arguments.t::["new_v1"] α4 α8) in
              let* α10 : unit := M.call (std.io.stdio._print α9) in
              M.alloc α10 in
            M.alloc tt
          | _ => M.break_match
          end) :
          M (M.Val unit)
      ] in
  M.read α3.

(*
fn main() {
    let (cordon_bleu, steak, sushi) = (Food::CordonBleu, Food::Steak, Food::Sushi);

    eat(cordon_bleu, Day::Monday);
    eat(steak, Day::Tuesday);
    eat(sushi, Day::Wednesday);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* α0 :
      M.Val
        ((combinators_and_then.Food.t * combinators_and_then.Food.t)
        *
        combinators_and_then.Food.t) :=
    M.alloc
      (combinators_and_then.Food.CordonBleu,
        combinators_and_then.Food.Steak,
        combinators_and_then.Food.Sushi) in
  let* α1 : M.Val unit :=
    match_operator
      α0
      [
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | (_, _, _) =>
            let γ0 := Tuple.Access.left (Tuple.Access.left γ) in
            let γ1 := Tuple.Access.right (Tuple.Access.left γ) in
            let γ2 := Tuple.Access.right γ in
            let* cordon_bleu := M.copy γ0 in
            let* steak := M.copy γ1 in
            let* sushi := M.copy γ2 in
            let* _ : M.Val unit :=
              let* α0 : combinators_and_then.Food.t := M.read cordon_bleu in
              let* α1 : unit :=
                M.call
                  (combinators_and_then.eat
                    α0
                    combinators_and_then.Day.Monday) in
              M.alloc α1 in
            let* _ : M.Val unit :=
              let* α0 : combinators_and_then.Food.t := M.read steak in
              let* α1 : unit :=
                M.call
                  (combinators_and_then.eat
                    α0
                    combinators_and_then.Day.Tuesday) in
              M.alloc α1 in
            let* _ : M.Val unit :=
              let* α0 : combinators_and_then.Food.t := M.read sushi in
              let* α1 : unit :=
                M.call
                  (combinators_and_then.eat
                    α0
                    combinators_and_then.Day.Wednesday) in
              M.alloc α1 in
            M.alloc tt
          end) :
          M (M.Val unit)
      ] in
  M.read α1.
