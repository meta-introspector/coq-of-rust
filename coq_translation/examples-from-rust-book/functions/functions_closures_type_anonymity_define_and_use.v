(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition apply {F : Set} `{Fn.Trait unit F} (f : F) :=
  ltac:(function (
    let '_ := f(||) in
    tt
    : unit)).

Definition main :=
  ltac:(function (
    let x := 7 in
    let print :=
      fun  =>
        let '_ :=
          _crate.io._print(|
            format_arguments::["new_v1"](|
              [ ""; "
" ],
              [ format_argument::["new_display"](| x |) ]
            |)
          |) in
        tt in
    let '_ := apply(| print |) in
    tt
    : unit)).
