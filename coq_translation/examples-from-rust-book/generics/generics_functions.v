(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module A.
  Inductive t : Set := Build.
End A.
Definition A := A.t.

Module S.
  Record t : Set := { _ : A;}.
  
  Global Instance Get_0 : Notation.Dot 0 := {
    Notation.dot '(Build_t x0) := x0;
  }.
End S.
Definition S := S.t.

Module SGen.
  Record t : Set := { _ : T;}.
  
  Global Instance Get_0 : Notation.Dot 0 := {
    Notation.dot '(Build_t x0) := x0;
  }.
End SGen.
Definition SGen := SGen.t.

Definition reg_fn (_s : S) :=
  let return_type := unit in
  ltac:(function (
    tt
  : return_type)).

Definition gen_spec_t (_s : SGen A) :=
  let return_type := unit in
  ltac:(function (
    tt
  : return_type)).

Definition gen_spec_i32 (_s : SGen i32) :=
  let return_type := unit in
  ltac:(function (
    tt
  : return_type)).

Definition generic {T : Set} (_s : SGen T) :=
  let return_type := unit in
  ltac:(function (
    tt
  : return_type)).

Definition main :=
  let return_type := unit in
  ltac:(function (
    let '_ := reg_fn(| S.Build_t A.Build |) in
    let '_ := gen_spec_t(| SGen.Build_t A.Build |) in
    let '_ := gen_spec_i32(| SGen.Build_t 6 |) in
    let '_ := generic(| SGen.Build_t "a"%char |) in
    let '_ := generic(| SGen.Build_t "c"%char |) in
    tt
  : return_type)).
