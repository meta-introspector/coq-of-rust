(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition some_fn :=
  let return_type := unit in
  ltac:(function (
    tt
  : return_type)).

Definition main :=
  let return_type := unit in
  ltac:(function (
    let a := some_fn(||) in
    let '_ :=
      _crate.io._print(|
        format_arguments::["new_const"](|
          [ "This function returns and you can see this line.
" ]
        |)
      |) in
    tt
  : return_type)).
