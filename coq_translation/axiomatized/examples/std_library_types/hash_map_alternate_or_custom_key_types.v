(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Account.
  Unset Primitive Projections.
  Record t `{State.Trait} : Set := {
    username : ref str;
    password : ref str;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_username `{State.Trait} : Notation.Dot "username" := {
    Notation.dot x := let* x := M.read x in Pure x.(username) : M _;
  }.
  Global Instance Get_AF_username `{State.Trait}
    : Notation.DoubleColon t "username" := {
    Notation.double_colon x := let* x := M.read x in Pure x.(username) : M _;
  }.
  Global Instance Get_password `{State.Trait} : Notation.Dot "password" := {
    Notation.dot x := let* x := M.read x in Pure x.(password) : M _;
  }.
  Global Instance Get_AF_password `{State.Trait}
    : Notation.DoubleColon t "password" := {
    Notation.double_colon x := let* x := M.read x in Pure x.(password) : M _;
  }.
End Account.
Definition Account `{State.Trait} : Set := M.val (Account.t).

Module
  Impl_core_marker_StructuralPartialEq_for_hash_map_alternate_or_custom_key_types_Account.
  Definition Self `{State.Trait} :=
    hash_map_alternate_or_custom_key_types.Account.
  
  Global Instance I `{State.Trait}
    : core.marker.StructuralPartialEq.Trait Self := {
  }.
  Global Hint Resolve I : core.
End
  Impl_core_marker_StructuralPartialEq_for_hash_map_alternate_or_custom_key_types_Account.

Module
  Impl_core_cmp_PartialEq_for_hash_map_alternate_or_custom_key_types_Account.
  Definition Self `{State.Trait} :=
    hash_map_alternate_or_custom_key_types.Account.
  
  Parameter eq :
      forall `{State.Trait},
      (ref Self) ->
        (ref hash_map_alternate_or_custom_key_types.Account) ->
        M bool.
  
  Global Instance Method_eq `{State.Trait} : Notation.Dot "eq" := {
    Notation.dot := eq;
  }.
  
  Global Instance I `{State.Trait}
    : core.cmp.PartialEq.Trait Self (Rhs := core.cmp.PartialEq.Default.Rhs Self)
      := {
    core.cmp.PartialEq.eq := eq;
  }.
  Global Hint Resolve I : core.
End Impl_core_cmp_PartialEq_for_hash_map_alternate_or_custom_key_types_Account.

Module
  Impl_core_marker_StructuralEq_for_hash_map_alternate_or_custom_key_types_Account.
  Definition Self `{State.Trait} :=
    hash_map_alternate_or_custom_key_types.Account.
  
  Global Instance I `{State.Trait} : core.marker.StructuralEq.Trait Self := {
  }.
  Global Hint Resolve I : core.
End
  Impl_core_marker_StructuralEq_for_hash_map_alternate_or_custom_key_types_Account.

Module Impl_core_cmp_Eq_for_hash_map_alternate_or_custom_key_types_Account.
  Definition Self `{State.Trait} :=
    hash_map_alternate_or_custom_key_types.Account.
  
  Parameter assert_receiver_is_total_eq :
      forall `{State.Trait},
      (ref Self) -> M unit.
  
  Global Instance Method_assert_receiver_is_total_eq `{State.Trait} :
    Notation.Dot "assert_receiver_is_total_eq" := {
    Notation.dot := assert_receiver_is_total_eq;
  }.
  
  Global Instance I `{State.Trait} : core.cmp.Eq.Trait Self := {
  }.
  Global Hint Resolve I : core.
End Impl_core_cmp_Eq_for_hash_map_alternate_or_custom_key_types_Account.

Module Impl_core_hash_Hash_for_hash_map_alternate_or_custom_key_types_Account.
  Definition Self `{State.Trait} :=
    hash_map_alternate_or_custom_key_types.Account.
  
  Parameter hash :
      forall `{State.Trait} {__H : Set} `{core.hash.Hasher.Trait __H},
      (ref Self) -> (mut_ref __H) -> M unit.
  
  Global Instance Method_hash
      `{State.Trait}
      {__H : Set}
      `{core.hash.Hasher.Trait __H} :
    Notation.Dot "hash" := {
    Notation.dot := hash (__H := __H);
  }.
  
  Global Instance I `{State.Trait} : core.hash.Hash.Trait Self := {
    core.hash.Hash.hash {__H : Set} `{core.hash.Hasher.Trait __H}
      :=
      hash (__H := __H);
  }.
  Global Hint Resolve I : core.
End Impl_core_hash_Hash_for_hash_map_alternate_or_custom_key_types_Account.

Module AccountInfo.
  Unset Primitive Projections.
  Record t `{State.Trait} : Set := {
    name : ref str;
    email : ref str;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_name `{State.Trait} : Notation.Dot "name" := {
    Notation.dot x := let* x := M.read x in Pure x.(name) : M _;
  }.
  Global Instance Get_AF_name `{State.Trait}
    : Notation.DoubleColon t "name" := {
    Notation.double_colon x := let* x := M.read x in Pure x.(name) : M _;
  }.
  Global Instance Get_email `{State.Trait} : Notation.Dot "email" := {
    Notation.dot x := let* x := M.read x in Pure x.(email) : M _;
  }.
  Global Instance Get_AF_email `{State.Trait}
    : Notation.DoubleColon t "email" := {
    Notation.double_colon x := let* x := M.read x in Pure x.(email) : M _;
  }.
End AccountInfo.
Definition AccountInfo `{State.Trait} : Set := M.val (AccountInfo.t).

Definition Accounts `{State.Trait} : Set :=
  std.collections.hash.map.HashMap
    hash_map_alternate_or_custom_key_types.Account
    hash_map_alternate_or_custom_key_types.AccountInfo
    std.collections.hash.map.HashMap.Default.S.

Parameter try_logon :
    forall `{State.Trait},
    (ref hash_map_alternate_or_custom_key_types.Accounts) ->
      (ref str) ->
      (ref str) ->
      M unit.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{State.Trait}, M unit.
