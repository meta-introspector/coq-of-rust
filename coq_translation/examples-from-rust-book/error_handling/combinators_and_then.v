(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Food.
  Inductive t : Set :=
  | CordonBleu
  | Steak
  | Sushi.
End Food.
Definition Food := Food.t.

Module Impl__crate_fmt_Debug_for_Food.
  Definition Self := Food.
  
  Definition fmt (self : ref Self) (f : mut_ref _crate.fmt.Formatter) :=
    let return_type := _crate.fmt.Result in
    ltac:(function (
      _crate.fmt.Formatter::["write_str"](|
        f,
        match self with
        | Food.CordonBleu => "CordonBleu"
        | Food.Steak => "Steak"
        | Food.Sushi => "Sushi"
        end
      |)
    : return_type)).
  
  Global Instance Method_fmt : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : _crate.fmt.Debug.Trait Self := {
    _crate.fmt.Debug.fmt := fmt;
  }.
End Impl__crate_fmt_Debug_for_Food.

Module Day.
  Inductive t : Set :=
  | Monday
  | Tuesday
  | Wednesday.
End Day.
Definition Day := Day.t.

Module Impl__crate_fmt_Debug_for_Day.
  Definition Self := Day.
  
  Definition fmt (self : ref Self) (f : mut_ref _crate.fmt.Formatter) :=
    let return_type := _crate.fmt.Result in
    ltac:(function (
      _crate.fmt.Formatter::["write_str"](|
        f,
        match self with
        | Day.Monday => "Monday"
        | Day.Tuesday => "Tuesday"
        | Day.Wednesday => "Wednesday"
        end
      |)
    : return_type)).
  
  Global Instance Method_fmt : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : _crate.fmt.Debug.Trait Self := {
    _crate.fmt.Debug.fmt := fmt;
  }.
End Impl__crate_fmt_Debug_for_Day.

Definition have_ingredients (food : Food) :=
  let return_type := Option Food in
  ltac:(function (
    match food with
    | Food.Sushi => None
    | _ => Some food
    end
  : return_type)).

Definition have_recipe (food : Food) :=
  let return_type := Option Food in
  ltac:(function (
    match food with
    | Food.CordonBleu => None
    | _ => Some food
    end
  : return_type)).

Definition cookable_v1 (food : Food) :=
  let return_type := Option Food in
  ltac:(function (
    match have_recipe(| food |) with
    | None => None
    | Some food =>
      match have_ingredients(| food |) with
      | None => None
      | Some food => Some food
      end
    end
  : return_type)).

Definition cookable_v2 (food : Food) :=
  let return_type := Option Food in
  ltac:(function (
    have_recipe(| food |).["and_then"](| have_ingredients |)
  : return_type)).

Definition eat (food : Food) (day : Day) :=
  let return_type := unit in
  ltac:(function (
    match cookable_v2(| food |) with
    | Some food =>
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "Yay! On "; " we get to eat "; ".
" ],
            [
              format_argument::["new_debug"](| day |);
              format_argument::["new_debug"](| food |)
            ]
          |)
        |) in
      tt
    | None =>
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "Oh no. We don't get to eat on "; "?
" ],
            [ format_argument::["new_debug"](| day |) ]
          |)
        |) in
      tt
    end
  : return_type)).

Definition main :=
  let return_type := unit in
  ltac:(function (
    let '(cordon_bleu, steak, sushi) :=
      (Food.CordonBleu, Food.Steak, Food.Sushi) in
    let '_ := eat(| cordon_bleu, Day.Monday |) in
    let '_ := eat(| steak, Day.Tuesday |) in
    let '_ := eat(| sushi, Day.Wednesday |) in
    tt
  : return_type)).
