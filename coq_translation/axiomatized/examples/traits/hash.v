(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Person.
  Section Person.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Record t : Set := {
      id : u32;
      name : alloc.string.String;
      phone : u64;
    }.
    Global Set Primitive Projections.
    
    Global Instance Get_id : Notation.Dot "id" := {
      Notation.dot x := let* x := M.read x in Pure x.(id) : M _;
    }.
    Global Instance Get_AF_id : Notation.DoubleColon t "id" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(id) : M _;
    }.
    Global Instance Get_name : Notation.Dot "name" := {
      Notation.dot x := let* x := M.read x in Pure x.(name) : M _;
    }.
    Global Instance Get_AF_name : Notation.DoubleColon t "name" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(name) : M _;
    }.
    Global Instance Get_phone : Notation.Dot "phone" := {
      Notation.dot x := let* x := M.read x in Pure x.(phone) : M _;
    }.
    Global Instance Get_AF_phone : Notation.DoubleColon t "phone" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(phone) : M _;
    }.
  End Person.
End Person.
Definition Person `{ℋ : State.Trait} : Set := M.val Person.t.

Module Impl_core_hash_Hash_for_hash_Person.
  Section Impl_core_hash_Hash_for_hash_Person.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := hash.Person.
    
    Parameter hash :
        forall {__H : Set} {ℋ_0 : core.hash.Hasher.Trait __H},
        (ref Self) -> (mut_ref __H) -> M unit.
    
    Global Instance AssociatedFunction_hash
        {__H : Set}
        {ℋ_0 : core.hash.Hasher.Trait __H} :
      Notation.DoubleColon Self "hash" := {
      Notation.double_colon := hash (__H := __H);
    }.
    
    Global Instance ℐ : core.hash.Hash.Trait Self := {
      core.hash.Hash.hash {__H : Set} {ℋ_0 : core.hash.Hasher.Trait __H}
        :=
        hash (__H := __H);
    }.
  End Impl_core_hash_Hash_for_hash_Person.
  Global Hint Resolve ℐ : core.
End Impl_core_hash_Hash_for_hash_Person.

Parameter calculate_hash :
    forall `{ℋ : State.Trait} {T : Set} {ℋ_0 : core.hash.Hash.Trait T},
    (ref T) -> M u64.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{ℋ : State.Trait}, M unit.
