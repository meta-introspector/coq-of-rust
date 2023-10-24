(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.
Require CoqOfRust.ink.ink_storage_traits.

(* #[allow(dead_code)] - module was ignored by the compiler *)
Module lazy.
  Module mapping.
    Module Mapping.
      Section Mapping.
        Context `{ℋ : State.Trait}.
        
        Context {K V KeyType : Set}.
        
        Context
          {ℋ_0 : ink_storage_traits.storage.Packed.Trait V}
          {ℋ_1 : ink_storage_traits.storage.StorageKey.Trait KeyType}.
        Unset Primitive Projections.
        Record t : Set := {
          _marker : core.marker.PhantomData ((K * V) * KeyType);
        }.
        Global Set Primitive Projections.
        
        Global Instance Get__marker : Notation.Dot "_marker" := {
          Notation.dot x := let* x := M.read x in Pure x.(_marker) : M _;
        }.
        Global Instance Get_AF__marker : Notation.DoubleColon t "_marker" := {
          Notation.double_colon x
            :=
            let* x := M.read x in Pure x.(_marker) : M _;
        }.
      End Mapping.
      Module Default.
        Definition KeyType := ink_storage_traits.impls.AutoKey.
      End Default.
    End Mapping.
    Definition Mapping
        (K V KeyType : Set)
        `{ℋ : State.Trait}
        {ℋ_0 : ink_storage_traits.storage.Packed.Trait V}
        {ℋ_1 : ink_storage_traits.storage.StorageKey.Trait KeyType}
        : Set :=
      M.val (Mapping.t (K := K) (V := V) (KeyType := KeyType)).
  End mapping.
  
  Module Lazy.
    Section Lazy.
      Context `{ℋ : State.Trait}.
      
      Context {V KeyType : Set}.
      
      Context {ℋ_0 : ink_storage_traits.storage.StorageKey.Trait KeyType}.
      Unset Primitive Projections.
      Record t : Set := {
        _marker : core.marker.PhantomData (V * KeyType);
      }.
      Global Set Primitive Projections.
      
      Global Instance Get__marker : Notation.Dot "_marker" := {
        Notation.dot x := let* x := M.read x in Pure x.(_marker) : M _;
      }.
      Global Instance Get_AF__marker : Notation.DoubleColon t "_marker" := {
        Notation.double_colon x := let* x := M.read x in Pure x.(_marker) : M _;
      }.
    End Lazy.
    Module Default.
      Definition KeyType := ink_storage_traits.impls.AutoKey.
    End Default.
  End Lazy.
  Definition Lazy
      (V KeyType : Set)
      `{ℋ : State.Trait}
      {ℋ_0 : ink_storage_traits.storage.StorageKey.Trait KeyType}
      : Set :=
    M.val (Lazy.t (V := V) (KeyType := KeyType)).
End lazy.

Module mapping.
  Module Mapping.
    Section Mapping.
      Context `{ℋ : State.Trait}.
      
      Context {K V KeyType : Set}.
      
      Context
        {ℋ_0 : ink_storage_traits.storage.Packed.Trait V}
        {ℋ_1 : ink_storage_traits.storage.StorageKey.Trait KeyType}.
      Unset Primitive Projections.
      Record t : Set := {
        _marker : core.marker.PhantomData ((K * V) * KeyType);
      }.
      Global Set Primitive Projections.
      
      Global Instance Get__marker : Notation.Dot "_marker" := {
        Notation.dot x := let* x := M.read x in Pure x.(_marker) : M _;
      }.
      Global Instance Get_AF__marker : Notation.DoubleColon t "_marker" := {
        Notation.double_colon x := let* x := M.read x in Pure x.(_marker) : M _;
      }.
    End Mapping.
    Module Default.
      Definition KeyType := ink_storage_traits.impls.AutoKey.
    End Default.
  End Mapping.
  Definition Mapping
      (K V KeyType : Set)
      `{ℋ : State.Trait}
      {ℋ_0 : ink_storage_traits.storage.Packed.Trait V}
      {ℋ_1 : ink_storage_traits.storage.StorageKey.Trait KeyType}
      : Set :=
    M.val (Mapping.t (K := K) (V := V) (KeyType := KeyType)).
End mapping.

Module Mapping.
  Section Mapping.
    Context `{ℋ : State.Trait}.
    
    Context {K V KeyType : Set}.
    
    Context
      {ℋ_0 : ink_storage_traits.storage.Packed.Trait V}
      {ℋ_1 : ink_storage_traits.storage.StorageKey.Trait KeyType}.
    Unset Primitive Projections.
    Record t : Set := {
      _marker : core.marker.PhantomData ((K * V) * KeyType);
    }.
    Global Set Primitive Projections.
    
    Global Instance Get__marker : Notation.Dot "_marker" := {
      Notation.dot x := let* x := M.read x in Pure x.(_marker) : M _;
    }.
    Global Instance Get_AF__marker : Notation.DoubleColon t "_marker" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(_marker) : M _;
    }.
  End Mapping.
  Module Default.
    Definition KeyType := ink_storage_traits.impls.AutoKey.
  End Default.
End Mapping.
Definition Mapping
    (K V KeyType : Set)
    `{ℋ : State.Trait}
    {ℋ_0 : ink_storage_traits.storage.Packed.Trait V}
    {ℋ_1 : ink_storage_traits.storage.StorageKey.Trait KeyType}
    : Set :=
  M.val (Mapping.t (K := K) (V := V) (KeyType := KeyType)).

Module Lazy.
  Section Lazy.
    Context `{ℋ : State.Trait}.
    
    Context {V KeyType : Set}.
    
    Context {ℋ_0 : ink_storage_traits.storage.StorageKey.Trait KeyType}.
    Unset Primitive Projections.
    Record t : Set := {
      _marker : core.marker.PhantomData (V * KeyType);
    }.
    Global Set Primitive Projections.
    
    Global Instance Get__marker : Notation.Dot "_marker" := {
      Notation.dot x := let* x := M.read x in Pure x.(_marker) : M _;
    }.
    Global Instance Get_AF__marker : Notation.DoubleColon t "_marker" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(_marker) : M _;
    }.
  End Lazy.
  Module Default.
    Definition KeyType := ink_storage_traits.impls.AutoKey.
  End Default.
End Lazy.
Definition Lazy
    (V KeyType : Set)
    `{ℋ : State.Trait}
    {ℋ_0 : ink_storage_traits.storage.StorageKey.Trait KeyType}
    : Set :=
  M.val (Lazy.t (V := V) (KeyType := KeyType)).
