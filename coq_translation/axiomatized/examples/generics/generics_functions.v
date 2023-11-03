(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  A.
Section A.
  Context `{ℋ : State.Trait}.
  
  Inductive t : Set := Build.
End A.
End A.
Definition A := @A.t.

Module  S.
Section S.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    x0 : generics_functions.A;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_0 : Notation.Dot "0" := {
    Notation.dot x := let* x := M.read x in Pure x.(x0) : M _;
  }.
End S.
End S.
Definition S `{ℋ : State.Trait} : Set := M.val S.t.

Module  SGen.
Section SGen.
  Context `{ℋ : State.Trait}.
  
  Context {T : Set}.
  
  Unset Primitive Projections.
  Record t : Set := {
    x0 : T;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_0 : Notation.Dot "0" := {
    Notation.dot x := let* x := M.read x in Pure x.(x0) : M _;
  }.
End SGen.
End SGen.
Definition SGen `{ℋ : State.Trait} (T : Set) : Set := M.val (SGen.t (T := T)).

Parameter reg_fn : forall `{ℋ : State.Trait}, generics_functions.S -> M unit.

Parameter gen_spec_t :
    forall `{ℋ : State.Trait},
    (generics_functions.SGen generics_functions.A) -> M unit.

Parameter gen_spec_i32 :
    forall `{ℋ : State.Trait},
    (generics_functions.SGen i32) -> M unit.

Parameter generic :
    forall `{ℋ : State.Trait} {T : Set},
    (generics_functions.SGen T) -> M unit.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{ℋ : State.Trait}, M unit.
