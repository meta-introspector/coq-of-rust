(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Person.
Section Person.
  Record t : Set := {
    id : u32.t;
    name : alloc.string.String.t;
    phone : u64.t;
  }.
  
  Definition Get_id :=
    Ref.map (fun α => Some α.(id)) (fun β α => Some (α <| id := β |>)).
  Definition Get_name :=
    Ref.map (fun α => Some α.(name)) (fun β α => Some (α <| name := β |>)).
  Definition Get_phone :=
    Ref.map (fun α => Some α.(phone)) (fun β α => Some (α <| phone := β |>)).
End Person.
End Person.

Module  Impl_core_hash_Hash_for_hash_Person_t.
Section Impl_core_hash_Hash_for_hash_Person_t.
  Definition Self : Set := hash.Person.t.
  
  Parameter hash : forall {__H : Set}, (ref Self) -> (mut_ref __H) -> M unit.
  
  Global Instance AssociatedFunction_hash {__H : Set} :
    Notations.DoubleColon Self "hash" := {
    Notations.double_colon := hash (__H := __H);
  }.
  
  Global Instance ℐ : core.hash.Hash.Required.Trait Self := {
    core.hash.Hash.hash {__H : Set} := hash (__H := __H);
    core.hash.Hash.hash_slice := Datatypes.None;
  }.
End Impl_core_hash_Hash_for_hash_Person_t.
End Impl_core_hash_Hash_for_hash_Person_t.

Parameter calculate_hash : forall {T : Set}, (ref T) -> M u64.t.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.
