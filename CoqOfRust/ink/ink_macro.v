(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module blake2b.
  Parameter generate_blake2x256_hash : forall `{H : State.Trait},
      proc_macro2.TokenStream ->
      M (H := H) proc_macro2.TokenStream.
  
  Parameter generate_blake2x256_hash_or_err : forall `{H : State.Trait},
      proc_macro2.TokenStream ->
      M (H := H) (syn.error.Result proc_macro2.TokenStream).
End blake2b.

Parameter generate_blake2x256_hash : forall `{H : State.Trait},
    proc_macro2.TokenStream ->
    M (H := H) proc_macro2.TokenStream.

Parameter generate_blake2x256_hash_or_err : forall `{H : State.Trait},
    proc_macro2.TokenStream ->
    M (H := H) (syn.error.Result proc_macro2.TokenStream).

Module chain_extension.
  Parameter generate : forall `{H : State.Trait},
      proc_macro2.TokenStream ->
      proc_macro2.TokenStream ->
      M (H := H) proc_macro2.TokenStream.
  
  Parameter generate_or_err : forall `{H : State.Trait},
      proc_macro2.TokenStream ->
      proc_macro2.TokenStream ->
      M (H := H) (syn.error.Result proc_macro2.TokenStream).
End chain_extension.

Parameter generate : forall `{H : State.Trait},
    proc_macro2.TokenStream ->
    proc_macro2.TokenStream ->
    M (H := H) proc_macro2.TokenStream.

Parameter generate_or_err : forall `{H : State.Trait},
    proc_macro2.TokenStream ->
    proc_macro2.TokenStream ->
    M (H := H) (syn.error.Result proc_macro2.TokenStream).

Module contract.
  Parameter generate : forall `{H : State.Trait},
      proc_macro2.TokenStream ->
      proc_macro2.TokenStream ->
      M (H := H) proc_macro2.TokenStream.
  
  Parameter generate_or_err : forall `{H : State.Trait},
      proc_macro2.TokenStream ->
      proc_macro2.TokenStream ->
      M (H := H) (syn.error.Result proc_macro2.TokenStream).
End contract.

Parameter generate : forall `{H : State.Trait},
    proc_macro2.TokenStream ->
    proc_macro2.TokenStream ->
    M (H := H) proc_macro2.TokenStream.

Parameter generate_or_err : forall `{H : State.Trait},
    proc_macro2.TokenStream ->
    proc_macro2.TokenStream ->
    M (H := H) (syn.error.Result proc_macro2.TokenStream).

Module ink_test.
  Parameter generate : forall `{H : State.Trait},
      proc_macro2.TokenStream ->
      proc_macro2.TokenStream ->
      M (H := H) proc_macro2.TokenStream.
  
  Parameter generate_or_err : forall `{H : State.Trait},
      proc_macro2.TokenStream ->
      proc_macro2.TokenStream ->
      M (H := H) (syn.error.Result proc_macro2.TokenStream).
End ink_test.

Parameter generate : forall `{H : State.Trait},
    proc_macro2.TokenStream ->
    proc_macro2.TokenStream ->
    M (H := H) proc_macro2.TokenStream.

Parameter generate_or_err : forall `{H : State.Trait},
    proc_macro2.TokenStream ->
    proc_macro2.TokenStream ->
    M (H := H) (syn.error.Result proc_macro2.TokenStream).

Module selector.
  Parameter generate_selector_id : forall `{H : State.Trait},
      proc_macro2.TokenStream ->
      M (H := H) proc_macro2.TokenStream.
  
  Parameter generate_selector_id_or_err : forall `{H : State.Trait},
      proc_macro2.TokenStream ->
      M (H := H) (syn.error.Result proc_macro2.TokenStream).
  
  Parameter generate_selector_bytes : forall `{H : State.Trait},
      proc_macro2.TokenStream ->
      M (H := H) proc_macro2.TokenStream.
  
  Parameter generate_selector_bytes_or_err : forall `{H : State.Trait},
      proc_macro2.TokenStream ->
      M (H := H) (syn.error.Result proc_macro2.TokenStream).
End selector.

Parameter generate_selector_id : forall `{H : State.Trait},
    proc_macro2.TokenStream ->
    M (H := H) proc_macro2.TokenStream.

Parameter generate_selector_id_or_err : forall `{H : State.Trait},
    proc_macro2.TokenStream ->
    M (H := H) (syn.error.Result proc_macro2.TokenStream).

Parameter generate_selector_bytes : forall `{H : State.Trait},
    proc_macro2.TokenStream ->
    M (H := H) proc_macro2.TokenStream.

Parameter generate_selector_bytes_or_err : forall `{H : State.Trait},
    proc_macro2.TokenStream ->
    M (H := H) (syn.error.Result proc_macro2.TokenStream).

Module storage.
  Module storable.
    Parameter storable_derive : forall `{H : State.Trait},
        synstructure.Structure ->
        M (H := H) proc_macro2.TokenStream.
  End storable.
  
  Module storable_hint.
    Parameter storable_hint_derive : forall `{H : State.Trait},
        synstructure.Structure ->
        M (H := H) proc_macro2.TokenStream.
  End storable_hint.
  
  Module storage_key.
    Parameter storage_key_derive : forall `{H : State.Trait},
        synstructure.Structure ->
        M (H := H) proc_macro2.TokenStream.
  End storage_key.
  
  Module storage_layout.
    Parameter storage_layout_derive : forall `{H : State.Trait},
        synstructure.Structure ->
        M (H := H) proc_macro2.TokenStream.
  End storage_layout.
End storage.

Module storable.
  Parameter storable_derive : forall `{H : State.Trait},
      synstructure.Structure ->
      M (H := H) proc_macro2.TokenStream.
End storable.

Parameter storable_derive : forall `{H : State.Trait},
    synstructure.Structure ->
    M (H := H) proc_macro2.TokenStream.

Module storable_hint.
  Parameter storable_hint_derive : forall `{H : State.Trait},
      synstructure.Structure ->
      M (H := H) proc_macro2.TokenStream.
End storable_hint.

Parameter storable_hint_derive : forall `{H : State.Trait},
    synstructure.Structure ->
    M (H := H) proc_macro2.TokenStream.

Module storage_key.
  Parameter storage_key_derive : forall `{H : State.Trait},
      synstructure.Structure ->
      M (H := H) proc_macro2.TokenStream.
End storage_key.

Parameter storage_key_derive : forall `{H : State.Trait},
    synstructure.Structure ->
    M (H := H) proc_macro2.TokenStream.

Module storage_layout.
  Parameter storage_layout_derive : forall `{H : State.Trait},
      synstructure.Structure ->
      M (H := H) proc_macro2.TokenStream.
End storage_layout.

Parameter storage_layout_derive : forall `{H : State.Trait},
    synstructure.Structure ->
    M (H := H) proc_macro2.TokenStream.

Module storage_item.
  Parameter generate : forall `{H : State.Trait},
      proc_macro2.TokenStream ->
      proc_macro2.TokenStream ->
      M (H := H) proc_macro2.TokenStream.
  
  Parameter generate_or_err : forall `{H : State.Trait},
      proc_macro2.TokenStream ->
      proc_macro2.TokenStream ->
      M (H := H) (syn.error.Result proc_macro2.TokenStream).
End storage_item.

Parameter generate : forall `{H : State.Trait},
    proc_macro2.TokenStream ->
    proc_macro2.TokenStream ->
    M (H := H) proc_macro2.TokenStream.

Parameter generate_or_err : forall `{H : State.Trait},
    proc_macro2.TokenStream ->
    proc_macro2.TokenStream ->
    M (H := H) (syn.error.Result proc_macro2.TokenStream).

Module trait_def.
  Parameter analyze : forall `{H : State.Trait},
      proc_macro2.TokenStream ->
      proc_macro2.TokenStream ->
      M (H := H) proc_macro2.TokenStream.
  
  Parameter analyze_or_err : forall `{H : State.Trait},
      proc_macro2.TokenStream ->
      proc_macro2.TokenStream ->
      M (H := H) (syn.error.Result proc_macro2.TokenStream).
End trait_def.

Parameter analyze : forall `{H : State.Trait},
    proc_macro2.TokenStream ->
    proc_macro2.TokenStream ->
    M (H := H) proc_macro2.TokenStream.

Parameter analyze_or_err : forall `{H : State.Trait},
    proc_macro2.TokenStream ->
    proc_macro2.TokenStream ->
    M (H := H) (syn.error.Result proc_macro2.TokenStream).

Parameter blake2x256 : forall `{H : State.Trait},
    proc_macro.TokenStream ->
    M (H := H) proc_macro.TokenStream.

Parameter selector_id : forall `{H : State.Trait},
    proc_macro.TokenStream ->
    M (H := H) proc_macro.TokenStream.

Parameter selector_bytes : forall `{H : State.Trait},
    proc_macro.TokenStream ->
    M (H := H) proc_macro.TokenStream.

Parameter contract : forall `{H : State.Trait},
    proc_macro.TokenStream ->
    proc_macro.TokenStream ->
    M (H := H) proc_macro.TokenStream.

Parameter trait_definition : forall `{H : State.Trait},
    proc_macro.TokenStream ->
    proc_macro.TokenStream ->
    M (H := H) proc_macro.TokenStream.

Parameter storage_item : forall `{H : State.Trait},
    proc_macro.TokenStream ->
    proc_macro.TokenStream ->
    M (H := H) proc_macro.TokenStream.

Parameter test : forall `{H : State.Trait},
    proc_macro.TokenStream ->
    proc_macro.TokenStream ->
    M (H := H) proc_macro.TokenStream.

Parameter chain_extension : forall `{H : State.Trait},
    proc_macro.TokenStream ->
    proc_macro.TokenStream ->
    M (H := H) proc_macro.TokenStream.

Parameter Storable : forall `{H : State.Trait},
    proc_macro.TokenStream ->
    M (H := H) proc_macro.TokenStream.

Parameter StorableHint : forall `{H : State.Trait},
    proc_macro.TokenStream ->
    M (H := H) proc_macro.TokenStream.

Parameter StorageKey : forall `{H : State.Trait},
    proc_macro.TokenStream ->
    M (H := H) proc_macro.TokenStream.

Parameter StorageLayout : forall `{H : State.Trait},
    proc_macro.TokenStream ->
    M (H := H) proc_macro.TokenStream.
