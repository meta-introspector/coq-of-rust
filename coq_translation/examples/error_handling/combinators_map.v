(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Food.
  Inductive t : Set :=
  | Apple
  | Carrot
  | Potato.
End Food.
Definition Food := Food.t.

Module Impl__crate_fmt_Debug_for_Food.
  Definition Self := Food.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref _crate.fmt.Formatter)
      : M _crate.fmt.Result :=
    let* α0 :=
      match self with
      | Food.Apple => Pure "Apple"
      | Food.Carrot => Pure "Carrot"
      | Food.Potato => Pure "Potato"
      end in
    _crate.fmt.Formatter::["write_str"] f α0.
  
  Global Instance Method_fmt : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : _crate.fmt.Debug.Trait Self := {
    _crate.fmt.Debug.fmt := fmt;
  }.
End Impl__crate_fmt_Debug_for_Food.

Module Peeled.
  Record t : Set := { _ : Food;}.
  
  Global Instance Get_0 : Notation.Dot 0 := {
    Notation.dot '(Build_t x0) := x0;
  }.
End Peeled.
Definition Peeled := Peeled.t.

Module Impl__crate_fmt_Debug_for_Peeled.
  Definition Self := Peeled.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref _crate.fmt.Formatter)
      : M _crate.fmt.Result :=
    _crate.fmt.Formatter::["debug_tuple_field1_finish"]
      f
      "Peeled"
      (addr_of (addr_of (self.[0]))).
  
  Global Instance Method_fmt : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : _crate.fmt.Debug.Trait Self := {
    _crate.fmt.Debug.fmt := fmt;
  }.
End Impl__crate_fmt_Debug_for_Peeled.

Module Chopped.
  Record t : Set := { _ : Food;}.
  
  Global Instance Get_0 : Notation.Dot 0 := {
    Notation.dot '(Build_t x0) := x0;
  }.
End Chopped.
Definition Chopped := Chopped.t.

Module Impl__crate_fmt_Debug_for_Chopped.
  Definition Self := Chopped.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref _crate.fmt.Formatter)
      : M _crate.fmt.Result :=
    _crate.fmt.Formatter::["debug_tuple_field1_finish"]
      f
      "Chopped"
      (addr_of (addr_of (self.[0]))).
  
  Global Instance Method_fmt : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : _crate.fmt.Debug.Trait Self := {
    _crate.fmt.Debug.fmt := fmt;
  }.
End Impl__crate_fmt_Debug_for_Chopped.

Module Cooked.
  Record t : Set := { _ : Food;}.
  
  Global Instance Get_0 : Notation.Dot 0 := {
    Notation.dot '(Build_t x0) := x0;
  }.
End Cooked.
Definition Cooked := Cooked.t.

Module Impl__crate_fmt_Debug_for_Cooked.
  Definition Self := Cooked.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref _crate.fmt.Formatter)
      : M _crate.fmt.Result :=
    _crate.fmt.Formatter::["debug_tuple_field1_finish"]
      f
      "Cooked"
      (addr_of (addr_of (self.[0]))).
  
  Global Instance Method_fmt : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : _crate.fmt.Debug.Trait Self := {
    _crate.fmt.Debug.fmt := fmt;
  }.
End Impl__crate_fmt_Debug_for_Cooked.

Definition peel (food : Option Food) : M (Option Peeled) :=
  match food with
  | Some food => Pure (Some (Peeled.Build_t food))
  | None => Pure None
  end.

Definition chop (peeled : Option Peeled) : M (Option Chopped) :=
  match peeled with
  | Some Peeled.Build_t food => Pure (Some (Chopped.Build_t food))
  | None => Pure None
  end.

Definition cook (chopped : Option Chopped) : M (Option Cooked) :=
  chopped.["map"] (fun Chopped.Build_t food => Pure (Cooked.Build_t food)).

Definition process (food : Option Food) : M (Option Cooked) :=
  let* α0 := food.["map"] (fun f => Pure (Peeled.Build_t f)) in
  let* α1 := α0.["map"] (fun Peeled.Build_t f => Pure (Chopped.Build_t f)) in
  α1.["map"] (fun Chopped.Build_t f => Pure (Cooked.Build_t f)).

Definition eat (food : Option Cooked) : M unit :=
  match food with
  | Some food =>
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of food) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "Mmm. I love "; "
" ])
          (addr_of [ α0 ]) in
      _crate.io._print α1 in
    Pure tt
  | None =>
    let* _ :=
      let* α0 :=
        format_arguments::["new_const"]
          (addr_of [ "Oh no! It wasn't edible.
" ]) in
      _crate.io._print α0 in
    Pure tt
  end.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let apple := Some Food.Apple in
  let carrot := Some Food.Carrot in
  let potato := None in
  let* cooked_apple :=
    let* α0 := peel apple in
    let* α1 := chop α0 in
    cook α1 in
  let* cooked_carrot :=
    let* α0 := peel carrot in
    let* α1 := chop α0 in
    cook α1 in
  let* cooked_potato := process potato in
  let* _ := eat cooked_apple in
  let* _ := eat cooked_carrot in
  let* _ := eat cooked_potato in
  Pure tt.