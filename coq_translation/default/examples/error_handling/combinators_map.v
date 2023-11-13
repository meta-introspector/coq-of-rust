(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Food.
  Inductive t : Set :=
  | Apple
  | Carrot
  | Potato.
End Food.

Module  Impl_core_fmt_Debug_for_combinators_map_Food_t.
Section Impl_core_fmt_Debug_for_combinators_map_Food_t.
  Ltac Self := exact combinators_map.Food.t.
  
  (*
  Debug
  *)
  Definition fmt
      (self : M.Val (ref ltac:(Self)))
      (f : M.Val (mut_ref core.fmt.Formatter.t))
      : M (M.Val ltac:(core.fmt.Result)) :=
    M.function_body
      (let* α0 : ltac:(refine (M.Val core.fmt.Formatter.t)) := deref f in
      let* α1 : ltac:(refine (M.Val (mut_ref core.fmt.Formatter.t))) :=
        borrow_mut α0 in
      let* α2 := M.read self in
      let* α3 : ltac:(refine (M.Val (ref str.t))) :=
        match α2 with
        | combinators_map.Food.Apple  =>
          let* α0 : ltac:(refine (M.Val str.t)) := deref (mk_str "Apple") in
          borrow α0
        | combinators_map.Food.Carrot  =>
          let* α0 : ltac:(refine (M.Val str.t)) := deref (mk_str "Carrot") in
          borrow α0
        | combinators_map.Food.Potato  =>
          let* α0 : ltac:(refine (M.Val str.t)) := deref (mk_str "Potato") in
          borrow α0
        end in
      core.fmt.Formatter.t::["write_str"] α1 α3).
  
  Global Instance AssociatedFunction_fmt :
    Notation.DoubleColon ltac:(Self) "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait ltac:(Self) := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_combinators_map_Food_t.
End Impl_core_fmt_Debug_for_combinators_map_Food_t.

Module  Peeled.
Section Peeled.
  Record t : Set := {
    x0 : combinators_map.Food.t;
  }.
  
  Global Instance Get_0 : Notation.Dot "0" := {
    Notation.dot x := let* x := M.read x in M.alloc x.(x0) : M _;
  }.
End Peeled.
End Peeled.

Module  Impl_core_fmt_Debug_for_combinators_map_Peeled_t.
Section Impl_core_fmt_Debug_for_combinators_map_Peeled_t.
  Ltac Self := exact combinators_map.Peeled.t.
  
  (*
  Debug
  *)
  Definition fmt
      (self : M.Val (ref ltac:(Self)))
      (f : M.Val (mut_ref core.fmt.Formatter.t))
      : M (M.Val ltac:(core.fmt.Result)) :=
    M.function_body
      (let* α0 : ltac:(refine (M.Val core.fmt.Formatter.t)) := deref f in
      let* α1 : ltac:(refine (M.Val (mut_ref core.fmt.Formatter.t))) :=
        borrow_mut α0 in
      let* α2 : ltac:(refine (M.Val str.t)) := deref (mk_str "Peeled") in
      let* α3 : ltac:(refine (M.Val (ref str.t))) := borrow α2 in
      let* α4 : ltac:(refine (M.Val combinators_map.Peeled.t)) := deref self in
      let* α5 : ltac:(refine (M.Val combinators_map.Food.t)) := α4.["0"] in
      let* α6 : ltac:(refine (M.Val (ref combinators_map.Food.t))) :=
        borrow α5 in
      let* α7 : ltac:(refine (M.Val (ref (ref combinators_map.Food.t)))) :=
        borrow α6 in
      let* α8 : ltac:(refine (M.Val (ref type not implemented))) :=
        pointer_coercion "Unsize" α7 in
      core.fmt.Formatter.t::["debug_tuple_field1_finish"] α1 α3 α8).
  
  Global Instance AssociatedFunction_fmt :
    Notation.DoubleColon ltac:(Self) "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait ltac:(Self) := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_combinators_map_Peeled_t.
End Impl_core_fmt_Debug_for_combinators_map_Peeled_t.

Module  Chopped.
Section Chopped.
  Record t : Set := {
    x0 : combinators_map.Food.t;
  }.
  
  Global Instance Get_0 : Notation.Dot "0" := {
    Notation.dot x := let* x := M.read x in M.alloc x.(x0) : M _;
  }.
End Chopped.
End Chopped.

Module  Impl_core_fmt_Debug_for_combinators_map_Chopped_t.
Section Impl_core_fmt_Debug_for_combinators_map_Chopped_t.
  Ltac Self := exact combinators_map.Chopped.t.
  
  (*
  Debug
  *)
  Definition fmt
      (self : M.Val (ref ltac:(Self)))
      (f : M.Val (mut_ref core.fmt.Formatter.t))
      : M (M.Val ltac:(core.fmt.Result)) :=
    M.function_body
      (let* α0 : ltac:(refine (M.Val core.fmt.Formatter.t)) := deref f in
      let* α1 : ltac:(refine (M.Val (mut_ref core.fmt.Formatter.t))) :=
        borrow_mut α0 in
      let* α2 : ltac:(refine (M.Val str.t)) := deref (mk_str "Chopped") in
      let* α3 : ltac:(refine (M.Val (ref str.t))) := borrow α2 in
      let* α4 : ltac:(refine (M.Val combinators_map.Chopped.t)) := deref self in
      let* α5 : ltac:(refine (M.Val combinators_map.Food.t)) := α4.["0"] in
      let* α6 : ltac:(refine (M.Val (ref combinators_map.Food.t))) :=
        borrow α5 in
      let* α7 : ltac:(refine (M.Val (ref (ref combinators_map.Food.t)))) :=
        borrow α6 in
      let* α8 : ltac:(refine (M.Val (ref type not implemented))) :=
        pointer_coercion "Unsize" α7 in
      core.fmt.Formatter.t::["debug_tuple_field1_finish"] α1 α3 α8).
  
  Global Instance AssociatedFunction_fmt :
    Notation.DoubleColon ltac:(Self) "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait ltac:(Self) := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_combinators_map_Chopped_t.
End Impl_core_fmt_Debug_for_combinators_map_Chopped_t.

Module  Cooked.
Section Cooked.
  Record t : Set := {
    x0 : combinators_map.Food.t;
  }.
  
  Global Instance Get_0 : Notation.Dot "0" := {
    Notation.dot x := let* x := M.read x in M.alloc x.(x0) : M _;
  }.
End Cooked.
End Cooked.

Module  Impl_core_fmt_Debug_for_combinators_map_Cooked_t.
Section Impl_core_fmt_Debug_for_combinators_map_Cooked_t.
  Ltac Self := exact combinators_map.Cooked.t.
  
  (*
  Debug
  *)
  Definition fmt
      (self : M.Val (ref ltac:(Self)))
      (f : M.Val (mut_ref core.fmt.Formatter.t))
      : M (M.Val ltac:(core.fmt.Result)) :=
    M.function_body
      (let* α0 : ltac:(refine (M.Val core.fmt.Formatter.t)) := deref f in
      let* α1 : ltac:(refine (M.Val (mut_ref core.fmt.Formatter.t))) :=
        borrow_mut α0 in
      let* α2 : ltac:(refine (M.Val str.t)) := deref (mk_str "Cooked") in
      let* α3 : ltac:(refine (M.Val (ref str.t))) := borrow α2 in
      let* α4 : ltac:(refine (M.Val combinators_map.Cooked.t)) := deref self in
      let* α5 : ltac:(refine (M.Val combinators_map.Food.t)) := α4.["0"] in
      let* α6 : ltac:(refine (M.Val (ref combinators_map.Food.t))) :=
        borrow α5 in
      let* α7 : ltac:(refine (M.Val (ref (ref combinators_map.Food.t)))) :=
        borrow α6 in
      let* α8 : ltac:(refine (M.Val (ref type not implemented))) :=
        pointer_coercion "Unsize" α7 in
      core.fmt.Formatter.t::["debug_tuple_field1_finish"] α1 α3 α8).
  
  Global Instance AssociatedFunction_fmt :
    Notation.DoubleColon ltac:(Self) "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait ltac:(Self) := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_combinators_map_Cooked_t.
End Impl_core_fmt_Debug_for_combinators_map_Cooked_t.

(*
fn peel(food: Option<Food>) -> Option<Peeled> {
    match food {
        Some(food) => Some(Peeled(food)),
        None => None,
    }
}
*)
Definition peel
    (food : M.Val (core.option.Option.t combinators_map.Food.t))
    : M (M.Val (core.option.Option.t combinators_map.Peeled.t)) :=
  M.function_body
    (let* α0 := M.read food in
    match α0 with
    | core.option.Option.Some food =>
      let* food := M.alloc food in
      let* α0 := M.read food in
      M.alloc (core.option.Option.Some (combinators_map.Peeled.Build_t α0))
    | core.option.Option.None  => M.alloc core.option.Option.None
    end).

(*
fn chop(peeled: Option<Peeled>) -> Option<Chopped> {
    match peeled {
        Some(Peeled(food)) => Some(Chopped(food)),
        None => None,
    }
}
*)
Definition chop
    (peeled : M.Val (core.option.Option.t combinators_map.Peeled.t))
    : M (M.Val (core.option.Option.t combinators_map.Chopped.t)) :=
  M.function_body
    (let* α0 := M.read peeled in
    match α0 with
    | core.option.Option.Some combinators_map.Peeled.Build_t food =>
      let* food := M.alloc food in
      let* α0 := M.read food in
      M.alloc (core.option.Option.Some (combinators_map.Chopped.Build_t α0))
    | core.option.Option.None  => M.alloc core.option.Option.None
    end).

(*
fn cook(chopped: Option<Chopped>) -> Option<Cooked> {
    chopped.map(|Chopped(food)| Cooked(food))
}
*)
Definition cook
    (chopped : M.Val (core.option.Option.t combinators_map.Chopped.t))
    : M (M.Val (core.option.Option.t combinators_map.Cooked.t)) :=
  M.function_body
    ((core.option.Option.t combinators_map.Chopped.t)::["map"]
      chopped
      (let* α0 := M.read food in
      M.alloc (combinators_map.Cooked.Build_t α0))).

(*
fn process(food: Option<Food>) -> Option<Cooked> {
    food.map(|f| Peeled(f))
        .map(|Peeled(f)| Chopped(f))
        .map(|Chopped(f)| Cooked(f))
}
*)
Definition process
    (food : M.Val (core.option.Option.t combinators_map.Food.t))
    : M (M.Val (core.option.Option.t combinators_map.Cooked.t)) :=
  M.function_body
    (let* α0 :
        ltac:(refine (M.Val (core.option.Option.t combinators_map.Peeled.t))) :=
      (core.option.Option.t combinators_map.Food.t)::["map"]
        food
        (let* α0 := M.read f in
        M.alloc (combinators_map.Peeled.Build_t α0)) in
    let* α1 :
        ltac:(refine
          (M.Val (core.option.Option.t combinators_map.Chopped.t))) :=
      (core.option.Option.t combinators_map.Peeled.t)::["map"]
        α0
        (let* α0 := M.read f in
        M.alloc (combinators_map.Chopped.Build_t α0)) in
    (core.option.Option.t combinators_map.Chopped.t)::["map"]
      α1
      (let* α0 := M.read f in
      M.alloc (combinators_map.Cooked.Build_t α0))).

(*
fn eat(food: Option<Cooked>) {
    match food {
        Some(food) => println!("Mmm. I love {:?}", food),
        None => println!("Oh no! It wasn't edible."),
    }
}
*)
Definition eat
    (food : M.Val (core.option.Option.t combinators_map.Cooked.t))
    : M (M.Val unit) :=
  M.function_body
    (let* α0 := M.read food in
    match α0 with
    | core.option.Option.Some food =>
      let* food := M.alloc food in
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "Mmm. I love "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref combinators_map.Cooked.t))) :=
          borrow food in
        let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_debug"] α3 in
        let* α5 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α4 ] in
        let* α6 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α5 in
        let* α7 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α7 in
        std.io.stdio._print α8 in
      M.alloc tt
    | core.option.Option.None  =>
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "Oh no! It wasn't edible.
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_const"] α2 in
        std.io.stdio._print α3 in
      M.alloc tt
    end).

(*
fn main() {
    let apple = Some(Food::Apple);
    let carrot = Some(Food::Carrot);
    let potato = None;

    let cooked_apple = cook(chop(peel(apple)));
    let cooked_carrot = cook(chop(peel(carrot)));
    // Let's try the simpler looking `process()` now.
    let cooked_potato = process(potato);

    eat(cooked_apple);
    eat(cooked_carrot);
    eat(cooked_potato);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M (M.Val unit) :=
  M.function_body
    (let* apple :
        ltac:(refine (M.Val (core.option.Option.t combinators_map.Food.t))) :=
      M.alloc (core.option.Option.Some combinators_map.Food.Apple) in
    let* carrot :
        ltac:(refine (M.Val (core.option.Option.t combinators_map.Food.t))) :=
      M.alloc (core.option.Option.Some combinators_map.Food.Carrot) in
    let* potato :
        ltac:(refine (M.Val (core.option.Option.t combinators_map.Food.t))) :=
      M.alloc core.option.Option.None in
    let* cooked_apple :
        ltac:(refine (M.Val (core.option.Option.t combinators_map.Cooked.t))) :=
      let* α0 :
          ltac:(refine
            (M.Val (core.option.Option.t combinators_map.Peeled.t))) :=
        combinators_map.peel apple in
      let* α1 :
          ltac:(refine
            (M.Val (core.option.Option.t combinators_map.Chopped.t))) :=
        combinators_map.chop α0 in
      combinators_map.cook α1 in
    let* cooked_carrot :
        ltac:(refine (M.Val (core.option.Option.t combinators_map.Cooked.t))) :=
      let* α0 :
          ltac:(refine
            (M.Val (core.option.Option.t combinators_map.Peeled.t))) :=
        combinators_map.peel carrot in
      let* α1 :
          ltac:(refine
            (M.Val (core.option.Option.t combinators_map.Chopped.t))) :=
        combinators_map.chop α0 in
      combinators_map.cook α1 in
    let* cooked_potato :
        ltac:(refine (M.Val (core.option.Option.t combinators_map.Cooked.t))) :=
      combinators_map.process potato in
    let* _ : ltac:(refine (M.Val unit)) := combinators_map.eat cooked_apple in
    let* _ : ltac:(refine (M.Val unit)) := combinators_map.eat cooked_carrot in
    let* _ : ltac:(refine (M.Val unit)) := combinators_map.eat cooked_potato in
    M.alloc tt).
