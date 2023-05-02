(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition give_adult (drink : Option (ref str)) : unit :=
  match drink with
  | Some "lemonade" =>
    _crate.io._print
      (format_arguments::["new_const"] [ "Yuck! Too sugary.
" ]) ;;
    tt
  | Some inner =>
    _crate.io._print
      (format_arguments::["new_v1"]
        [ ""; "? How nice.
" ]
        [ format_argument::["new_display"] inner ]) ;;
    tt
  | None =>
    _crate.io._print
      (format_arguments::["new_const"] [ "No drink? Oh well.
" ]) ;;
    tt
  end.

Definition drink (drink : Option (ref str)) : unit :=
  let inside := drink.["unwrap"] in
  if (inside.["eq"] "lemonade" : bool) then
    _crate.rt.begin_panic "AAAaaaaa!!!!" ;;
    tt
  else
    tt ;;
  _crate.io._print
    (format_arguments::["new_v1"]
      [ "I love "; "s!!!!!
" ]
      [ format_argument::["new_display"] inside ]) ;;
  tt ;;
  tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
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
