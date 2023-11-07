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
      (let* α0 : ltac:(refine core.fmt.Formatter) := deref f in
      let* α1 : ltac:(refine (mut_ref core.fmt.Formatter)) := borrow_mut α0 in
      let* α2 := M.read self in
      let* α3 : ltac:(refine (ref str)) :=
        match α2 with
        | combinators_map.Food.Apple  =>
          let* α0 : ltac:(refine str) := deref (mk_str "Apple") in
          borrow α0
        | combinators_map.Food.Carrot  =>
          let* α0 : ltac:(refine str) := deref (mk_str "Carrot") in
          borrow α0
        | combinators_map.Food.Potato  =>
          let* α0 : ltac:(refine str) := deref (mk_str "Potato") in
          borrow α0
        end in
      core.fmt.Formatter::["write_str"] α1 α3).
  
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
  
  Record t : Set := {
    x0 : combinators_map.Food;
  }.
  
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
      (let* α0 : ltac:(refine core.fmt.Formatter) := deref f in
      let* α1 : ltac:(refine (mut_ref core.fmt.Formatter)) := borrow_mut α0 in
      let* α2 : ltac:(refine str) := deref (mk_str "Peeled") in
      let* α3 : ltac:(refine (ref str)) := borrow α2 in
      let* α4 : ltac:(refine combinators_map.Peeled) := deref self in
      let* α5 : ltac:(refine combinators_map.Food) := α4.["0"] in
      let* α6 : ltac:(refine (ref combinators_map.Food)) := borrow α5 in
      let* α7 : ltac:(refine (ref (ref combinators_map.Food))) := borrow α6 in
      let* α8 : ltac:(refine (ref combinators_map.Food)) := deref α7 in
      let* α9 : ltac:(refine (ref (ref combinators_map.Food))) := borrow α8 in
      let* α10 : ltac:(refine (ref type not implemented)) :=
        pointer_coercion "Unsize" α9 in
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
  
  Record t : Set := {
    x0 : combinators_map.Food;
  }.
  
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
      (let* α0 : ltac:(refine core.fmt.Formatter) := deref f in
      let* α1 : ltac:(refine (mut_ref core.fmt.Formatter)) := borrow_mut α0 in
      let* α2 : ltac:(refine str) := deref (mk_str "Chopped") in
      let* α3 : ltac:(refine (ref str)) := borrow α2 in
      let* α4 : ltac:(refine combinators_map.Chopped) := deref self in
      let* α5 : ltac:(refine combinators_map.Food) := α4.["0"] in
      let* α6 : ltac:(refine (ref combinators_map.Food)) := borrow α5 in
      let* α7 : ltac:(refine (ref (ref combinators_map.Food))) := borrow α6 in
      let* α8 : ltac:(refine (ref combinators_map.Food)) := deref α7 in
      let* α9 : ltac:(refine (ref (ref combinators_map.Food))) := borrow α8 in
      let* α10 : ltac:(refine (ref type not implemented)) :=
        pointer_coercion "Unsize" α9 in
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
  
  Record t : Set := {
    x0 : combinators_map.Food;
  }.
  
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
      (let* α0 : ltac:(refine core.fmt.Formatter) := deref f in
      let* α1 : ltac:(refine (mut_ref core.fmt.Formatter)) := borrow_mut α0 in
      let* α2 : ltac:(refine str) := deref (mk_str "Cooked") in
      let* α3 : ltac:(refine (ref str)) := borrow α2 in
      let* α4 : ltac:(refine combinators_map.Cooked) := deref self in
      let* α5 : ltac:(refine combinators_map.Food) := α4.["0"] in
      let* α6 : ltac:(refine (ref combinators_map.Food)) := borrow α5 in
      let* α7 : ltac:(refine (ref (ref combinators_map.Food))) := borrow α6 in
      let* α8 : ltac:(refine (ref combinators_map.Food)) := deref α7 in
      let* α9 : ltac:(refine (ref (ref combinators_map.Food))) := borrow α8 in
      let* α10 : ltac:(refine (ref type not implemented)) :=
        pointer_coercion "Unsize" α9 in
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
    (let* α0 := M.read food in
    match α0 with
    | core.option.Option.Some food =>
      let* α0 : ltac:(refine combinators_map.Peeled) :=
        M.alloc (combinators_map.Peeled.Build_t food) in
      M.alloc (core.option.Option.Some α0)
    | core.option.Option.None  => M.alloc core.option.Option.None
    end).

Definition chop
    `{ℋ : State.Trait}
    (peeled : core.option.Option combinators_map.Peeled)
    : M (core.option.Option combinators_map.Chopped) :=
  M.function_body
    (let* α0 := M.read peeled in
    match α0 with
    | core.option.Option.Some combinators_map.Peeled.Build_t food =>
      let* α0 : ltac:(refine combinators_map.Chopped) :=
        M.alloc (combinators_map.Chopped.Build_t food) in
      M.alloc (core.option.Option.Some α0)
    | core.option.Option.None  => M.alloc core.option.Option.None
    end).

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
    (let* α0 : ltac:(refine (core.option.Option combinators_map.Peeled)) :=
      (core.option.Option combinators_map.Food)::["map"]
        food
        (M.alloc (combinators_map.Peeled.Build_t f)) in
    let* α1 : ltac:(refine (core.option.Option combinators_map.Chopped)) :=
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
    (let* α0 := M.read food in
    match α0 with
    | core.option.Option.Some food =>
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "Mmm. I love "; mk_str "
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine (ref combinators_map.Cooked)) := borrow food in
        let* α6 : ltac:(refine combinators_map.Cooked) := deref α5 in
        let* α7 : ltac:(refine (ref combinators_map.Cooked)) := borrow α6 in
        let* α8 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_debug"] α7 in
        let* α9 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α8 ] in
        let* α10 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α9 in
        let* α11 : ltac:(refine (array core.fmt.rt.Argument)) := deref α10 in
        let* α12 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α11 in
        let* α13 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α12 in
        let* α14 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α4 α13 in
        std.io.stdio._print α14 in
      M.alloc tt
    | core.option.Option.None  =>
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "Oh no! It wasn't edible.
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_const"] α4 in
        std.io.stdio._print α5 in
      M.alloc tt
    end).

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* apple : ltac:(refine (core.option.Option combinators_map.Food)) :=
      let* α0 : ltac:(refine combinators_map.Food) :=
        M.alloc combinators_map.Food.Apple in
      M.alloc (core.option.Option.Some α0) in
    let* carrot : ltac:(refine (core.option.Option combinators_map.Food)) :=
      let* α0 : ltac:(refine combinators_map.Food) :=
        M.alloc combinators_map.Food.Carrot in
      M.alloc (core.option.Option.Some α0) in
    let* potato : ltac:(refine (core.option.Option combinators_map.Food)) :=
      M.alloc core.option.Option.None in
    let* cooked_apple :
        ltac:(refine (core.option.Option combinators_map.Cooked)) :=
      let* α0 : ltac:(refine (core.option.Option combinators_map.Peeled)) :=
        combinators_map.peel apple in
      let* α1 : ltac:(refine (core.option.Option combinators_map.Chopped)) :=
        combinators_map.chop α0 in
      combinators_map.cook α1 in
    let* cooked_carrot :
        ltac:(refine (core.option.Option combinators_map.Cooked)) :=
      let* α0 : ltac:(refine (core.option.Option combinators_map.Peeled)) :=
        combinators_map.peel carrot in
      let* α1 : ltac:(refine (core.option.Option combinators_map.Chopped)) :=
        combinators_map.chop α0 in
      combinators_map.cook α1 in
    let* cooked_potato :
        ltac:(refine (core.option.Option combinators_map.Cooked)) :=
      combinators_map.process potato in
    let* _ : ltac:(refine unit) := combinators_map.eat cooked_apple in
    let* _ : ltac:(refine unit) := combinators_map.eat cooked_carrot in
    let* _ : ltac:(refine unit) := combinators_map.eat cooked_potato in
    M.alloc tt).
