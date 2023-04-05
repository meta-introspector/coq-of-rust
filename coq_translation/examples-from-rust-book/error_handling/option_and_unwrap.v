(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition give_adult (drink : Option) : unit :=
  match drink with
  | Some (Str("lemonade", Cooked)) =>
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"] [ "Yuck! Too sugary.\n" ] [  ]) ;;
    tt
  | Some (inner) =>
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"]
        [ ""; "? How nice.\n" ]
        [ _crate.fmt.ArgumentV1::["new_display"] inner ]) ;;
    tt
  | None =>
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"] [ "No drink? Oh well.\n" ] [  ]) ;;
    tt
  end.

Definition drink (drink : Option) : unit :=
  let inside := drink.["unwrap"] in
  if (eqb inside "lemonade" : bool) then
    _crate.rt.begin_panic "AAAaaaaa!!!!" ;;
    tt
  else
    tt ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "I love "; "s!!!!!\n" ]
      [ _crate.fmt.ArgumentV1::["new_display"] inside ]) ;;
  tt ;;
  tt.

Definition main (_ : unit) : unit :=
  let water := Some "water" in
  let lemonade := Some "lemonade" in
  let void := None in
  give_adult water ;;
  give_adult lemonade ;;
  give_adult void ;;
  let coffee := Some "coffee" in
  let nothing := None in
  drink coffee ;;
  drink nothing ;;
  tt.
