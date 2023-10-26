(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Account.
  Section Account.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Record t : Set := {
      username : ref str;
      password : ref str;
    }.
    Global Set Primitive Projections.
    
    #[refine] Global Instance Get_username : Notation.Dot "username" := {
      Notation.dot x := let* x := M.read x in Pure x.(username) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_AF_username :
      Notation.DoubleColon t "username" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(username) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_password : Notation.Dot "password" := {
      Notation.dot x := let* x := M.read x in Pure x.(password) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_AF_password :
      Notation.DoubleColon t "password" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(password) : M _;
    }.
    Admitted.
  End Account.
End Account.
Definition Account `{ℋ : State.Trait} : Set := M.val Account.t.

Module
  Impl_core_marker_StructuralPartialEq_for_hash_map_alternate_or_custom_key_types_Account.
  Section
    Impl_core_marker_StructuralPartialEq_for_hash_map_alternate_or_custom_key_types_Account.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := hash_map_alternate_or_custom_key_types.Account.
    
    #[refine] Global Instance ℐ :
      core.marker.StructuralPartialEq.Trait Self := {
    }.
    Admitted.
  End
    Impl_core_marker_StructuralPartialEq_for_hash_map_alternate_or_custom_key_types_Account.
  Global Hint Resolve ℐ : core.
End
  Impl_core_marker_StructuralPartialEq_for_hash_map_alternate_or_custom_key_types_Account.

Module
  Impl_core_cmp_PartialEq_for_hash_map_alternate_or_custom_key_types_Account.
  Section
    Impl_core_cmp_PartialEq_for_hash_map_alternate_or_custom_key_types_Account.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := hash_map_alternate_or_custom_key_types.Account.
    
    Parameter eq :
        (ref Self) ->
          (ref hash_map_alternate_or_custom_key_types.Account) ->
          M bool.
    
    Global Instance AssociatedFunction_eq : Notation.DoubleColon Self "eq" := {
      Notation.double_colon := eq;
    }.
    
    #[refine] Global Instance ℐ :
      core.cmp.PartialEq.Trait Self
        (Rhs := core.cmp.PartialEq.Default.Rhs Self) := {
      core.cmp.PartialEq.eq := eq;
    }.
    Admitted.
  End
    Impl_core_cmp_PartialEq_for_hash_map_alternate_or_custom_key_types_Account.
  Global Hint Resolve ℐ : core.
End Impl_core_cmp_PartialEq_for_hash_map_alternate_or_custom_key_types_Account.

Module
  Impl_core_marker_StructuralEq_for_hash_map_alternate_or_custom_key_types_Account.
  Section
    Impl_core_marker_StructuralEq_for_hash_map_alternate_or_custom_key_types_Account.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := hash_map_alternate_or_custom_key_types.Account.
    
    #[refine] Global Instance ℐ : core.marker.StructuralEq.Trait Self := {
    }.
    Admitted.
  End
    Impl_core_marker_StructuralEq_for_hash_map_alternate_or_custom_key_types_Account.
  Global Hint Resolve ℐ : core.
End
  Impl_core_marker_StructuralEq_for_hash_map_alternate_or_custom_key_types_Account.

Module Impl_core_cmp_Eq_for_hash_map_alternate_or_custom_key_types_Account.
  Section Impl_core_cmp_Eq_for_hash_map_alternate_or_custom_key_types_Account.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := hash_map_alternate_or_custom_key_types.Account.
    
    Parameter assert_receiver_is_total_eq : (ref Self) -> M unit.
    
    Global Instance AssociatedFunction_assert_receiver_is_total_eq :
      Notation.DoubleColon Self "assert_receiver_is_total_eq" := {
      Notation.double_colon := assert_receiver_is_total_eq;
    }.
    
    #[refine] Global Instance ℐ : core.cmp.Eq.Trait Self := {
    }.
    Admitted.
  End Impl_core_cmp_Eq_for_hash_map_alternate_or_custom_key_types_Account.
  Global Hint Resolve ℐ : core.
End Impl_core_cmp_Eq_for_hash_map_alternate_or_custom_key_types_Account.

Module Impl_core_hash_Hash_for_hash_map_alternate_or_custom_key_types_Account.
  Section
    Impl_core_hash_Hash_for_hash_map_alternate_or_custom_key_types_Account.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := hash_map_alternate_or_custom_key_types.Account.
    
    Parameter hash :
        forall {__H : Set} {ℋ_0 : core.hash.Hasher.Trait __H},
        (ref Self) -> (mut_ref __H) -> M unit.
    
    Global Instance AssociatedFunction_hash
        {__H : Set}
        {ℋ_0 : core.hash.Hasher.Trait __H} :
      Notation.DoubleColon Self "hash" := {
      Notation.double_colon := hash (__H := __H);
    }.
    
    #[refine] Global Instance ℐ : core.hash.Hash.Trait Self := {
      core.hash.Hash.hash {__H : Set} {ℋ_0 : core.hash.Hasher.Trait __H} :=
        hash (__H := __H);
    }.
    Admitted.
  End Impl_core_hash_Hash_for_hash_map_alternate_or_custom_key_types_Account.
  Global Hint Resolve ℐ : core.
End Impl_core_hash_Hash_for_hash_map_alternate_or_custom_key_types_Account.

Module AccountInfo.
  Section AccountInfo.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Record t : Set := {
      name : ref str;
      email : ref str;
    }.
    Global Set Primitive Projections.
    
    #[refine] Global Instance Get_name : Notation.Dot "name" := {
      Notation.dot x := let* x := M.read x in Pure x.(name) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_AF_name : Notation.DoubleColon t "name" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(name) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_email : Notation.Dot "email" := {
      Notation.dot x := let* x := M.read x in Pure x.(email) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_AF_email : Notation.DoubleColon t "email" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(email) : M _;
    }.
    Admitted.
  End AccountInfo.
End AccountInfo.
Definition AccountInfo `{ℋ : State.Trait} : Set := M.val AccountInfo.t.

Definition Accounts `{ℋ : State.Trait} : Set :=
  std.collections.hash.map.HashMap
    hash_map_alternate_or_custom_key_types.Account
    hash_map_alternate_or_custom_key_types.AccountInfo
    std.collections.hash.map.HashMap.Default.S.

Parameter try_logon :
    forall `{ℋ : State.Trait},
    (ref hash_map_alternate_or_custom_key_types.Accounts) ->
      (ref str) ->
      (ref str) ->
      M unit.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{ℋ : State.Trait}, M unit.
