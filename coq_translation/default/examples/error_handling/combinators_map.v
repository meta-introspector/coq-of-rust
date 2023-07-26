(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Food.
  Inductive t : Set :=
  | Apple
  | Carrot
  | Potato.
End Food.
Definition Food := Food.t.

Module Impl_core_fmt_Debug_for_combinators_map_Food.
  Definition Self := combinators_map.Food.
  
  Definition fmt
      `{H : State.Trait}
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M (H := H) core.fmt.Result :=
    let* α0 :=
      match self with
      | combinators_map.Food.Apple => Pure "Apple"
      | combinators_map.Food.Carrot => Pure "Carrot"
      | combinators_map.Food.Potato => Pure "Potato"
      end in
    core.fmt.Formatter::["write_str"] f α0.
  
  Global Instance Method_fmt `{H : State.Trait} : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt `{H : State.Trait} := fmt;
  }.
End Impl_core_fmt_Debug_for_combinators_map_Food.

Module Peeled.
  Unset Primitive Projections.
  Record t : Set := {
    _ : combinators_map.Food;
  }.
  Global Set Primitive Projections.
  
    Global Instance Get_0 : Notation.Dot 0 := {
      Notation.dot '(Build_t x0) := x0;
    }.
End Peeled.
Definition Peeled := Peeled.t.

Module Impl_core_fmt_Debug_for_combinators_map_Peeled.
  Definition Self := combinators_map.Peeled.
  
  Definition fmt
      `{H : State.Trait}
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M (H := H) core.fmt.Result :=
    core.fmt.Formatter::["debug_tuple_field1_finish"]
      f
      "Peeled"
      (addr_of (addr_of (self.[0]))).
  
  Global Instance Method_fmt `{H : State.Trait} : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt `{H : State.Trait} := fmt;
  }.
End Impl_core_fmt_Debug_for_combinators_map_Peeled.

Module Chopped.
  Unset Primitive Projections.
  Record t : Set := {
    _ : combinators_map.Food;
  }.
  Global Set Primitive Projections.
  
    Global Instance Get_0 : Notation.Dot 0 := {
      Notation.dot '(Build_t x0) := x0;
    }.
End Chopped.
Definition Chopped := Chopped.t.

Module Impl_core_fmt_Debug_for_combinators_map_Chopped.
  Definition Self := combinators_map.Chopped.
  
  Definition fmt
      `{H : State.Trait}
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M (H := H) core.fmt.Result :=
    core.fmt.Formatter::["debug_tuple_field1_finish"]
      f
      "Chopped"
      (addr_of (addr_of (self.[0]))).
  
  Global Instance Method_fmt `{H : State.Trait} : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt `{H : State.Trait} := fmt;
  }.
End Impl_core_fmt_Debug_for_combinators_map_Chopped.

Module Cooked.
  Unset Primitive Projections.
  Record t : Set := {
    _ : combinators_map.Food;
  }.
  Global Set Primitive Projections.
  
    Global Instance Get_0 : Notation.Dot 0 := {
      Notation.dot '(Build_t x0) := x0;
    }.
End Cooked.
Definition Cooked := Cooked.t.

Module Impl_core_fmt_Debug_for_combinators_map_Cooked.
  Definition Self := combinators_map.Cooked.
  
  Definition fmt
      `{H : State.Trait}
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M (H := H) core.fmt.Result :=
    core.fmt.Formatter::["debug_tuple_field1_finish"]
      f
      "Cooked"
      (addr_of (addr_of (self.[0]))).
  
  Global Instance Method_fmt `{H : State.Trait} : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt `{H : State.Trait} := fmt;
  }.
End Impl_core_fmt_Debug_for_combinators_map_Cooked.

Definition peel
    `{H : State.Trait}
    (food : core.option.Option combinators_map.Food)
    : M (H := H) (core.option.Option combinators_map.Peeled) :=
  match food with
  | core.option.Option.Some food =>
    Pure (core.option.Option.Some (combinators_map.Peeled.Build_t food))
  | core.option.Option.None => Pure core.option.Option.None
  end.

Definition chop
    `{H : State.Trait}
    (peeled : core.option.Option combinators_map.Peeled)
    : M (H := H) (core.option.Option combinators_map.Chopped) :=
  match peeled with
  | core.option.Option.Some combinators_map.Peeled.Build_t food =>
    Pure (core.option.Option.Some (combinators_map.Chopped.Build_t food))
  | core.option.Option.None => Pure core.option.Option.None
  end.

Definition cook
    `{H : State.Trait}
    (chopped : core.option.Option combinators_map.Chopped)
    : M (H := H) (core.option.Option combinators_map.Cooked) :=
  chopped.["map"]
    (fun combinators_map.Chopped.Build_t food =>
      Pure (combinators_map.Cooked.Build_t food)).

Definition process
    `{H : State.Trait}
    (food : core.option.Option combinators_map.Food)
    : M (H := H) (core.option.Option combinators_map.Cooked) :=
  let* α0 := food.["map"] (fun f => Pure (combinators_map.Peeled.Build_t f)) in
  let* α1 :=
    α0.["map"]
      (fun combinators_map.Peeled.Build_t f =>
        Pure (combinators_map.Chopped.Build_t f)) in
  α1.["map"]
    (fun combinators_map.Chopped.Build_t f =>
      Pure (combinators_map.Cooked.Build_t f)).

Definition eat
    `{H : State.Trait}
    (food : core.option.Option combinators_map.Cooked)
    : M (H := H) unit :=
  match food with
  | core.option.Option.Some food =>
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of food) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "Mmm. I love "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt
  | core.option.Option.None =>
    let* _ :=
      let* α0 :=
        format_arguments::["new_const"]
          (addr_of [ "Oh no! It wasn't edible.
" ]) in
      std.io.stdio._print α0 in
    Pure tt
  end.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H : State.Trait} : M (H := H) unit :=
  let apple := core.option.Option.Some combinators_map.Food.Apple in
  let carrot := core.option.Option.Some combinators_map.Food.Carrot in
  let potato := core.option.Option.None in
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
  Pure tt.
