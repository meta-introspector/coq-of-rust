(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module deeply.
  Module nested.
    Parameter function : forall `{H' : State.Trait},
    forall `{H' : State.Trait},
    M (H := H') unit.
  End nested.
End deeply.

Module nested.
  Parameter function : forall `{H' : State.Trait},
  forall `{H' : State.Trait},
  M (H := H') unit.
End nested.

Parameter function : forall `{H' : State.Trait},
forall `{H' : State.Trait},
M (H := H') unit.
