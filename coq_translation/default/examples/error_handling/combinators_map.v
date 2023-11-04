(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Food.
  Inductive t `{ℋ : State.Trait} : Set :=
  | Apple
  | Carrot
  | Potato.
End Food.
Definition Food `{ℋ : State.Trait} : Set := M.Val Food.t.

Module  Impl_core_fmt_Debug_for_combinators_map_Food.
Section Impl_core_fmt_Debug_for_combinators_map_Food.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := combinators_map.Food.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 := deref f core.fmt.Formatter in
      let* α1 := borrow_mut α0 core.fmt.Formatter in
      let* α2 :=
        match self with
        | combinators_map.Food  =>
          let* α0 := deref (mk_str "Apple") str in
          borrow α0 str
        | combinators_map.Food  =>
          let* α0 := deref (mk_str "Carrot") str in
          borrow α0 str
        | combinators_map.Food  =>
          let* α0 := deref (mk_str "Potato") str in
          borrow α0 str
        end in
      core.fmt.Formatter::["write_str"] α1 α2).
  
  Global Instance AssociatedFunction_fmt : Notation.DoubleColon Self "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_combinators_map_Food.
End Impl_core_fmt_Debug_for_combinators_map_Food.

Module  Peeled.
Section Peeled.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    x0 : combinators_map.Food;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_0 : Notation.Dot "0" := {
    Notation.dot x := let* x := M.read x in M.pure x.(x0) : M _;
  }.
End Peeled.
End Peeled.
Definition Peeled `{ℋ : State.Trait} : Set := M.Val Peeled.t.

Module  Impl_core_fmt_Debug_for_combinators_map_Peeled.
Section Impl_core_fmt_Debug_for_combinators_map_Peeled.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := combinators_map.Peeled.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 := deref f core.fmt.Formatter in
      let* α1 := borrow_mut α0 core.fmt.Formatter in
      let* α2 := deref (mk_str "Peeled") str in
      let* α3 := borrow α2 str in
      let* α4 := deref self combinators_map.Peeled in
      let* α5 := α4.["0"] in
      let* α6 := borrow α5 combinators_map.Food in
      let* α7 := borrow α6 (ref combinators_map.Food) in
      let* α8 := deref α7 (ref combinators_map.Food) in
      let* α9 := borrow α8 (ref combinators_map.Food) in
      let* α10 := pointer_coercion "Unsize" α9 in
      core.fmt.Formatter::["debug_tuple_field1_finish"] α1 α3 α10).
  
  Global Instance AssociatedFunction_fmt : Notation.DoubleColon Self "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_combinators_map_Peeled.
End Impl_core_fmt_Debug_for_combinators_map_Peeled.

Module  Chopped.
Section Chopped.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    x0 : combinators_map.Food;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_0 : Notation.Dot "0" := {
    Notation.dot x := let* x := M.read x in M.pure x.(x0) : M _;
  }.
End Chopped.
End Chopped.
Definition Chopped `{ℋ : State.Trait} : Set := M.Val Chopped.t.

Module  Impl_core_fmt_Debug_for_combinators_map_Chopped.
Section Impl_core_fmt_Debug_for_combinators_map_Chopped.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := combinators_map.Chopped.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 := deref f core.fmt.Formatter in
      let* α1 := borrow_mut α0 core.fmt.Formatter in
      let* α2 := deref (mk_str "Chopped") str in
      let* α3 := borrow α2 str in
      let* α4 := deref self combinators_map.Chopped in
      let* α5 := α4.["0"] in
      let* α6 := borrow α5 combinators_map.Food in
      let* α7 := borrow α6 (ref combinators_map.Food) in
      let* α8 := deref α7 (ref combinators_map.Food) in
      let* α9 := borrow α8 (ref combinators_map.Food) in
      let* α10 := pointer_coercion "Unsize" α9 in
      core.fmt.Formatter::["debug_tuple_field1_finish"] α1 α3 α10).
  
  Global Instance AssociatedFunction_fmt : Notation.DoubleColon Self "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_combinators_map_Chopped.
End Impl_core_fmt_Debug_for_combinators_map_Chopped.

Module  Cooked.
Section Cooked.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    x0 : combinators_map.Food;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_0 : Notation.Dot "0" := {
    Notation.dot x := let* x := M.read x in M.pure x.(x0) : M _;
  }.
End Cooked.
End Cooked.
Definition Cooked `{ℋ : State.Trait} : Set := M.Val Cooked.t.

Module  Impl_core_fmt_Debug_for_combinators_map_Cooked.
Section Impl_core_fmt_Debug_for_combinators_map_Cooked.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := combinators_map.Cooked.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 := deref f core.fmt.Formatter in
      let* α1 := borrow_mut α0 core.fmt.Formatter in
      let* α2 := deref (mk_str "Cooked") str in
      let* α3 := borrow α2 str in
      let* α4 := deref self combinators_map.Cooked in
      let* α5 := α4.["0"] in
      let* α6 := borrow α5 combinators_map.Food in
      let* α7 := borrow α6 (ref combinators_map.Food) in
      let* α8 := deref α7 (ref combinators_map.Food) in
      let* α9 := borrow α8 (ref combinators_map.Food) in
      let* α10 := pointer_coercion "Unsize" α9 in
      core.fmt.Formatter::["debug_tuple_field1_finish"] α1 α3 α10).
  
  Global Instance AssociatedFunction_fmt : Notation.DoubleColon Self "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_combinators_map_Cooked.
End Impl_core_fmt_Debug_for_combinators_map_Cooked.

Definition peel
    `{ℋ : State.Trait}
    (food : core.option.Option combinators_map.Food)
    : M (core.option.Option combinators_map.Peeled) :=
  M.function_body
    match food with
    | core.option.Option food =>
      let* α0 := M.alloc (combinators_map.Peeled.Build_t food) in
      M.alloc (core.option.Option.Some α0)
    | core.option.Option  => M.alloc core.option.Option.None
    end.

Definition chop
    `{ℋ : State.Trait}
    (peeled : core.option.Option combinators_map.Peeled)
    : M (core.option.Option combinators_map.Chopped) :=
  M.function_body
    match peeled with
    | core.option.Option combinators_map.Peeled.Build_t food =>
      let* α0 := M.alloc (combinators_map.Chopped.Build_t food) in
      M.alloc (core.option.Option.Some α0)
    | core.option.Option  => M.alloc core.option.Option.None
    end.

Definition cook
    `{ℋ : State.Trait}
    (chopped : core.option.Option combinators_map.Chopped)
    : M (core.option.Option combinators_map.Cooked) :=
  M.function_body
    ((core.option.Option combinators_map.Chopped)::["map"]
      chopped
      (M.alloc (combinators_map.Cooked.Build_t food))).

Definition process
    `{ℋ : State.Trait}
    (food : core.option.Option combinators_map.Food)
    : M (core.option.Option combinators_map.Cooked) :=
  M.function_body
    (let* α0 :=
      (core.option.Option combinators_map.Food)::["map"]
        food
        (M.alloc (combinators_map.Peeled.Build_t f)) in
    let* α1 :=
      (core.option.Option combinators_map.Peeled)::["map"]
        α0
        (M.alloc (combinators_map.Chopped.Build_t f)) in
    (core.option.Option combinators_map.Chopped)::["map"]
      α1
      (M.alloc (combinators_map.Cooked.Build_t f))).

Definition eat
    `{ℋ : State.Trait}
    (food : core.option.Option combinators_map.Cooked)
    : M unit :=
  M.function_body
    match food with
    | core.option.Option food =>
      let* _ :=
        let* α0 :=
          borrow [ mk_str "Mmm. I love "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow food combinators_map.Cooked in
        let* α5 := deref α4 combinators_map.Cooked in
        let* α6 := borrow α5 combinators_map.Cooked in
        let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
        let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
        let* α9 := deref α8 (list core.fmt.rt.Argument) in
        let* α10 := borrow α9 (list core.fmt.rt.Argument) in
        let* α11 := pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
        std.io.stdio._print α12 in
      M.alloc tt
    | core.option.Option  =>
      let* _ :=
        let* α0 :=
          borrow [ mk_str "Oh no! It wasn't edible.
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := core.fmt.Arguments::["new_const"] α3 in
        std.io.stdio._print α4 in
      M.alloc tt
    end.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* apple :=
      let* α0 := M.alloc combinators_map.Food.Apple in
      M.alloc (core.option.Option.Some α0) in
    let* carrot :=
      let* α0 := M.alloc combinators_map.Food.Carrot in
      M.alloc (core.option.Option.Some α0) in
    let* potato := M.alloc core.option.Option.None in
    let* cooked_apple :=
      let* α0 := combinators_map.peel apple in
      let* α1 := combinators_map.chop α0 in
      combinators_map.cook α1 in
    let* cooked_carrot :=
      let* α0 := combinators_map.peel carrot in
      let* α1 := combinators_map.chop α0 in
      combinators_map.cook α1 in
    let* cooked_potato := combinators_map.process potato in
    let* _ := combinators_map.eat cooked_apple in
    let* _ := combinators_map.eat cooked_carrot in
    let* _ := combinators_map.eat cooked_potato in
    M.alloc tt).
