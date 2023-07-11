(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module A.
  Inductive t : Set := Build.
End A.
Definition A := A.t.

Module S.
  Record t : Set := { _ : generics_functions.A;}.
  
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

Definition reg_fn (_s : generics_functions.S) : M unit := Pure tt.

Definition gen_spec_t
    (_s : generics_functions.SGen generics_functions.A)
    : M unit :=
  Pure tt.

Definition gen_spec_i32 (_s : generics_functions.SGen i32) : M unit := Pure tt.

Definition generic {T : Set} (_s : generics_functions.SGen T) : M unit :=
  Pure tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let* _ :=
    generics_functions.reg_fn
      (generics_functions.S.Build_t generics_functions.A.Build) in
  let* _ :=
    generics_functions.gen_spec_t
      (generics_functions.SGen.Build_t generics_functions.A.Build) in
  let* _ :=
    generics_functions.gen_spec_i32 (generics_functions.SGen.Build_t 6) in
  let* _ :=
    generics_functions.generic (generics_functions.SGen.Build_t "a"%char) in
  let* _ :=
    generics_functions.generic (generics_functions.SGen.Build_t "c"%char) in
  Pure tt.