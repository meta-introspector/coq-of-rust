(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition main :=
  ltac:(function (
    let x := 5 in
    let '_ := x in
    let '_ := x.["add"](| 1 |) in
    let '_ := 15 in
    tt
    : unit)).
