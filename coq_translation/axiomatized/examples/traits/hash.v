(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Impl_core_hash_Hash_for_hash_Person.
  Definition Self := hash.Person.
  
  Parameter hash :
      forall `{H' : State.Trait} {__H : Set} `{core.hash.Hasher.Trait __H},
      (ref Self) -> (mut_ref __H) -> M (H := H') unit.
  
  Global Instance Method_hash
      `{H' : State.Trait}
      {__H : Set}
      `{core.hash.Hasher.Trait __H} :
    Notation.Dot "hash" := {
    Notation.dot := hash (__H := __H);
  }.
  
  Global Instance I : core.hash.Hash.Trait Self := {
    core.hash.Hash.hash
      `{H' : State.Trait}
      {__H : Set}
      `{core.hash.Hasher.Trait __H}
      :=
      hash (__H := __H);
  }.
  Global Hint Resolve I : core.
End Impl_core_hash_Hash_for_hash_Person.
