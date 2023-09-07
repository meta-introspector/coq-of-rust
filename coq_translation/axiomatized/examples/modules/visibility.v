(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module my_mod.
  Parameter function : forall `{H' : State.Trait},
  forall `{H' : State.Trait},
  M (H := H') unit.
  
  Parameter indirect_access : forall `{H' : State.Trait},
  forall `{H' : State.Trait},
  M (H := H') unit.
  
  Module nested.
    Parameter function : forall `{H' : State.Trait},
    forall `{H' : State.Trait},
    M (H := H') unit.
  End nested.
  
  Parameter call_public_function_in_my_mod : forall `{H' : State.Trait},
  forall `{H' : State.Trait},
  M (H := H') unit.
  
  Module private_nested.
    (* #[allow(dead_code)] - function was ignored by the compiler *)
    Parameter function : forall `{H' : State.Trait},
    forall `{H' : State.Trait},
    M (H := H') unit.
  End private_nested.
End my_mod.

Parameter function : forall `{H' : State.Trait},
forall `{H' : State.Trait},
M (H := H') unit.

Parameter indirect_access : forall `{H' : State.Trait},
forall `{H' : State.Trait},
M (H := H') unit.

Module nested.
  Parameter function : forall `{H' : State.Trait},
  forall `{H' : State.Trait},
  M (H := H') unit.
End nested.

Parameter call_public_function_in_my_mod : forall `{H' : State.Trait},
forall `{H' : State.Trait},
M (H := H') unit.

Module private_nested.
  (* #[allow(dead_code)] - function was ignored by the compiler *)
  Parameter function : forall `{H' : State.Trait},
  forall `{H' : State.Trait},
  M (H := H') unit.
End private_nested.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter function : forall `{H' : State.Trait},
forall `{H' : State.Trait},
M (H := H') unit.
