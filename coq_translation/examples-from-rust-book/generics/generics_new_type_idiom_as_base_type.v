(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Years.
  Record t : Set := { _ : i64;}.
  
  Global Instance Get_0 : Notation.Dot 0 := {
    Notation.dot '(Build_t x0) := x0;
  }.
End Years.
Definition Years := Years.t.

Definition main (_ : unit) : unit :=
  let years := Years.Build_t 42 in
  let years_as_primitive_1 := years .[ 0 ] in
  let 'Years.Build_t years_as_primitive_2 := years in
  tt.
