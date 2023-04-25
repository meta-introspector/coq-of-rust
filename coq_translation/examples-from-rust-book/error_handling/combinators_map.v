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
      : _crate.fmt.Result :=
    match self with
    | Food.Apple => _crate.fmt.Formatter::["write_str"] f "Apple"
    | Food.Carrot => _crate.fmt.Formatter::["write_str"] f "Carrot"
    | Food.Potato => _crate.fmt.Formatter::["write_str"] f "Potato"
    end.
  
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
      : _crate.fmt.Result :=
    _crate.fmt.Formatter::["debug_tuple_field1_finish"]
      f
      "Peeled"
      (self .[ 0 ]).
  
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
      : _crate.fmt.Result :=
    _crate.fmt.Formatter::["debug_tuple_field1_finish"]
      f
      "Chopped"
      (self .[ 0 ]).
  
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
      : _crate.fmt.Result :=
    _crate.fmt.Formatter::["debug_tuple_field1_finish"]
      f
      "Cooked"
      (self .[ 0 ]).
  
  Global Instance Method_fmt : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : _crate.fmt.Debug.Trait Self := {
    _crate.fmt.Debug.fmt := fmt;
  }.
End Impl__crate_fmt_Debug_for_Cooked.

Definition peel (food : Option Food) : Option Peeled :=
  match food with
  | 'Some.Build_t food => Some (Peeled.Build_t food)
  | None => None
  end.

Definition chop (peeled : Option Peeled) : Option Chopped :=
  match peeled with
  | 'Some.Build_t 'Peeled.Build_t food => Some (Chopped.Build_t food)
  | None => None
  end.

Definition cook (chopped : Option Chopped) : Option Cooked :=
  chopped.["map"] (fun 'Chopped.Build_t food => Cooked.Build_t food).

Definition process (food : Option Food) : Option Cooked :=
  ((food.["map"] (fun f => Peeled.Build_t f)).["map"]
      (fun 'Peeled.Build_t f => Chopped.Build_t f)).["map"]
    (fun 'Chopped.Build_t f => Cooked.Build_t f).

Definition eat (food : Option Cooked) : unit :=
  match food with
  | 'Some.Build_t food =>
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"]
        [ "Mmm. I love "; "\n" ]
        [ _crate.fmt.ArgumentV1::["new_debug"] food ]) ;;
    tt
  | None =>
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"]
        [ "Oh no! It wasn't edible.\n" ]
        [  ]) ;;
    tt
  end.

Definition main (_ : unit) : unit :=
  let apple := Some Food.Apple in
  let carrot := Some Food.Carrot in
  let potato := None in
  let cooked_apple := cook (chop (peel apple)) in
  let cooked_carrot := cook (chop (peel carrot)) in
  let cooked_potato := process potato in
  eat cooked_apple ;;
  eat cooked_carrot ;;
  eat cooked_potato ;;
  tt.
