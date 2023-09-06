(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module builders.
  Definition CreateBuilderPartial (E ContractRef Args R : Set) : Set :=
    ink_env.call.create_builder.CreateBuilder
      E
      ContractRef
      (ink_env.call.common.Unset_ ink_env.types.Environment.Hash)
      (ink_env.call.common.Unset_ u64)
      (ink_env.call.common.Unset_ ink_env.types.Environment.Balance)
      (ink_env.call.common.Set_
        (ink_env.call.execution_input.ExecutionInput Args))
      (ink_env.call.common.Unset_ ink_env.call.create_builder.state.Salt)
      (ink_env.call.common.Set_ (ink_env.call.common.ReturnType R)).
  
  Parameter constructor_exec_input :
      forall
        `{H' : State.Trait}
        {E ContractRef Args R : Set}
        `{parity_scale_codec.codec.Encode.Trait Args}
        `{ink_env.types.Environment.Trait E},
      (ink_e2e.builders.CreateBuilderPartial E ContractRef Args R) ->
        M (H := H') (alloc.vec.Vec u8).
End builders.

Definition CreateBuilderPartial (E ContractRef Args R : Set) : Set :=
  ink_env.call.create_builder.CreateBuilder
    E
    ContractRef
    (ink_env.call.common.Unset_ ink_env.types.Environment.Hash)
    (ink_env.call.common.Unset_ u64)
    (ink_env.call.common.Unset_ ink_env.types.Environment.Balance)
    (ink_env.call.common.Set_
      (ink_env.call.execution_input.ExecutionInput Args))
    (ink_env.call.common.Unset_ ink_env.call.create_builder.state.Salt)
    (ink_env.call.common.Set_ (ink_env.call.common.ReturnType R)).

Parameter constructor_exec_input :
    forall
      `{H' : State.Trait}
      {E ContractRef Args R : Set}
      `{parity_scale_codec.codec.Encode.Trait Args}
      `{ink_env.types.Environment.Trait E},
    (ink_e2e.builders.CreateBuilderPartial E ContractRef Args R) ->
      M (H := H') (alloc.vec.Vec u8).

Module client.
  Definition CallBuilderFinal (E Args RetType : Set) : Set :=
    ink_env.call.call_builder.CallBuilder
      E
      (ink_env.call.common.Set_ (ink_env.call.call_builder.Call E))
      (ink_env.call.common.Set_
        (ink_env.call.execution_input.ExecutionInput Args))
      (ink_env.call.common.Set_ (ink_env.call.common.ReturnType RetType)).
  
  Module InstantiationResult.
    Section InstantiationResult.
      Context {C E : Set}.
      Context
        `{subxt.config.Config.Trait C}
        `{ink_env.types.Environment.Trait E}.
      Unset Primitive Projections.
      Record t : Set := {
        account_id : E::type["AccountId"];
        dry_run
          :
          pallet_contracts_primitives.ContractInstantiateResult
            C::type["AccountId"]
            E::type["Balance"];
        events : subxt.blocks.block_types.ExtrinsicEvents C;
      }.
      Global Set Primitive Projections.
      
      Global Instance Get_account_id : Notation.Dot "account_id" := {
        Notation.dot '(Build_t x0 _ _) := x0;
      }.
      Global Instance Get_dry_run : Notation.Dot "dry_run" := {
        Notation.dot '(Build_t _ x1 _) := x1;
      }.
      Global Instance Get_events : Notation.Dot "events" := {
        Notation.dot '(Build_t _ _ x2) := x2;
      }.
    End InstantiationResult.
  End InstantiationResult.
  Definition InstantiationResult
      (C E : Set)
      `{subxt.config.Config.Trait C}
      `{ink_env.types.Environment.Trait E}
      : Set :=
    InstantiationResult.t (C := C) (E := E).
  
  Module UploadResult.
    Section UploadResult.
      Context {C E : Set}.
      Context
        `{subxt.config.Config.Trait C}
        `{ink_env.types.Environment.Trait E}.
      Unset Primitive Projections.
      Record t : Set := {
        code_hash : E::type["Hash"];
        dry_run
          :
          pallet_contracts_primitives.CodeUploadResult
            E::type["Hash"]
            E::type["Balance"];
        events : subxt.blocks.block_types.ExtrinsicEvents C;
      }.
      Global Set Primitive Projections.
      
      Global Instance Get_code_hash : Notation.Dot "code_hash" := {
        Notation.dot '(Build_t x0 _ _) := x0;
      }.
      Global Instance Get_dry_run : Notation.Dot "dry_run" := {
        Notation.dot '(Build_t _ x1 _) := x1;
      }.
      Global Instance Get_events : Notation.Dot "events" := {
        Notation.dot '(Build_t _ _ x2) := x2;
      }.
    End UploadResult.
  End UploadResult.
  Definition UploadResult
      (C E : Set)
      `{subxt.config.Config.Trait C}
      `{ink_env.types.Environment.Trait E}
      : Set :=
    UploadResult.t (C := C) (E := E).
  
  Module CallResult.
    Section CallResult.
      Context {C E V : Set}.
      Context
        `{subxt.config.Config.Trait C}
        `{ink_env.types.Environment.Trait E}.
      Unset Primitive Projections.
      Record t : Set := {
        dry_run : ink_e2e.client.CallDryRunResult E V;
        events : subxt.blocks.block_types.ExtrinsicEvents C;
      }.
      Global Set Primitive Projections.
      
      Global Instance Get_dry_run : Notation.Dot "dry_run" := {
        Notation.dot '(Build_t x0 _) := x0;
      }.
      Global Instance Get_events : Notation.Dot "events" := {
        Notation.dot '(Build_t _ x1) := x1;
      }.
    End CallResult.
  End CallResult.
  Definition CallResult
      (C E V : Set)
      `{subxt.config.Config.Trait C}
      `{ink_env.types.Environment.Trait E}
      : Set :=
    CallResult.t (C := C) (E := E) (V := V).
  
  Module CallDryRunResult.
    Section CallDryRunResult.
      Context {E V : Set}.
      Context `{ink_env.types.Environment.Trait E}.
      Unset Primitive Projections.
      Record t : Set := {
        exec_result
          :
          pallet_contracts_primitives.ContractExecResult E::type["Balance"];
        _marker : core.marker.PhantomData V;
      }.
      Global Set Primitive Projections.
      
      Global Instance Get_exec_result : Notation.Dot "exec_result" := {
        Notation.dot '(Build_t x0 _) := x0;
      }.
      Global Instance Get__marker : Notation.Dot "_marker" := {
        Notation.dot '(Build_t _ x1) := x1;
      }.
    End CallDryRunResult.
  End CallDryRunResult.
  Definition CallDryRunResult
      (E V : Set)
      `{ink_env.types.Environment.Trait E}
      : Set :=
    CallDryRunResult.t (E := E) (V := V).
  
  Module Error.
    Inductive t : Set :=
    | ContractNotFound (_ : alloc.string.String)
    |
      InstantiateDryRun
      (_
        :
        pallet_contracts_primitives.ContractInstantiateResult
          C::type["AccountId"]
          E::type["Balance"])
    | InstantiateExtrinsic (_ : subxt.error.dispatch_error.DispatchError)
    |
      UploadDryRun
      (_
        :
        pallet_contracts_primitives.CodeUploadResult
          E::type["Hash"]
          E::type["Balance"])
    | UploadExtrinsic (_ : subxt.error.dispatch_error.DispatchError)
    |
      CallDryRun
      (_ : pallet_contracts_primitives.ContractExecResult E::type["Balance"])
    | CallExtrinsic (_ : subxt.error.dispatch_error.DispatchError)
    | Balance (_ : alloc.string.String)
    | Decoding (_ : subxt.error.Error).
  End Error.
  Definition Error := Error.t.
  
  Module Client.
    Section Client.
      Context {C E : Set}.
      Context
        `{subxt.config.Config.Trait C}
        `{ink_env.types.Environment.Trait E}.
      Unset Primitive Projections.
      Record t : Set := {
        api : ink_e2e.xts.ContractsApi C E;
        contracts
          :
          alloc.collections.btree.map.BTreeMap
            alloc.string.String
            std.path.PathBuf;
      }.
      Global Set Primitive Projections.
      
      Global Instance Get_api : Notation.Dot "api" := {
        Notation.dot '(Build_t x0 _) := x0;
      }.
      Global Instance Get_contracts : Notation.Dot "contracts" := {
        Notation.dot '(Build_t _ x1) := x1;
      }.
    End Client.
  End Client.
  Definition Client
      (C E : Set)
      `{subxt.config.Config.Trait C}
      `{ink_env.types.Environment.Trait E}
      : Set :=
    Client.t (C := C) (E := E).
End client.

Definition CallBuilderFinal (E Args RetType : Set) : Set :=
  ink_env.call.call_builder.CallBuilder
    E
    (ink_env.call.common.Set_ (ink_env.call.call_builder.Call E))
    (ink_env.call.common.Set_
      (ink_env.call.execution_input.ExecutionInput Args))
    (ink_env.call.common.Set_ (ink_env.call.common.ReturnType RetType)).

Module InstantiationResult.
  Section InstantiationResult.
    Context {C E : Set}.
    Context `{subxt.config.Config.Trait C} `{ink_env.types.Environment.Trait E}.
    Unset Primitive Projections.
    Record t : Set := {
      account_id : E::type["AccountId"];
      dry_run
        :
        pallet_contracts_primitives.ContractInstantiateResult
          C::type["AccountId"]
          E::type["Balance"];
      events : subxt.blocks.block_types.ExtrinsicEvents C;
    }.
    Global Set Primitive Projections.
    
    Global Instance Get_account_id : Notation.Dot "account_id" := {
      Notation.dot '(Build_t x0 _ _) := x0;
    }.
    Global Instance Get_dry_run : Notation.Dot "dry_run" := {
      Notation.dot '(Build_t _ x1 _) := x1;
    }.
    Global Instance Get_events : Notation.Dot "events" := {
      Notation.dot '(Build_t _ _ x2) := x2;
    }.
  End InstantiationResult.
End InstantiationResult.
Definition InstantiationResult
    (C E : Set)
    `{subxt.config.Config.Trait C}
    `{ink_env.types.Environment.Trait E}
    : Set :=
  InstantiationResult.t (C := C) (E := E).

Module UploadResult.
  Section UploadResult.
    Context {C E : Set}.
    Context `{subxt.config.Config.Trait C} `{ink_env.types.Environment.Trait E}.
    Unset Primitive Projections.
    Record t : Set := {
      code_hash : E::type["Hash"];
      dry_run
        :
        pallet_contracts_primitives.CodeUploadResult
          E::type["Hash"]
          E::type["Balance"];
      events : subxt.blocks.block_types.ExtrinsicEvents C;
    }.
    Global Set Primitive Projections.
    
    Global Instance Get_code_hash : Notation.Dot "code_hash" := {
      Notation.dot '(Build_t x0 _ _) := x0;
    }.
    Global Instance Get_dry_run : Notation.Dot "dry_run" := {
      Notation.dot '(Build_t _ x1 _) := x1;
    }.
    Global Instance Get_events : Notation.Dot "events" := {
      Notation.dot '(Build_t _ _ x2) := x2;
    }.
  End UploadResult.
End UploadResult.
Definition UploadResult
    (C E : Set)
    `{subxt.config.Config.Trait C}
    `{ink_env.types.Environment.Trait E}
    : Set :=
  UploadResult.t (C := C) (E := E).

Module CallResult.
  Section CallResult.
    Context {C E V : Set}.
    Context `{subxt.config.Config.Trait C} `{ink_env.types.Environment.Trait E}.
    Unset Primitive Projections.
    Record t : Set := {
      dry_run : ink_e2e.client.CallDryRunResult E V;
      events : subxt.blocks.block_types.ExtrinsicEvents C;
    }.
    Global Set Primitive Projections.
    
    Global Instance Get_dry_run : Notation.Dot "dry_run" := {
      Notation.dot '(Build_t x0 _) := x0;
    }.
    Global Instance Get_events : Notation.Dot "events" := {
      Notation.dot '(Build_t _ x1) := x1;
    }.
  End CallResult.
End CallResult.
Definition CallResult
    (C E V : Set)
    `{subxt.config.Config.Trait C}
    `{ink_env.types.Environment.Trait E}
    : Set :=
  CallResult.t (C := C) (E := E) (V := V).

Module CallDryRunResult.
  Section CallDryRunResult.
    Context {E V : Set}.
    Context `{ink_env.types.Environment.Trait E}.
    Unset Primitive Projections.
    Record t : Set := {
      exec_result
        :
        pallet_contracts_primitives.ContractExecResult E::type["Balance"];
      _marker : core.marker.PhantomData V;
    }.
    Global Set Primitive Projections.
    
    Global Instance Get_exec_result : Notation.Dot "exec_result" := {
      Notation.dot '(Build_t x0 _) := x0;
    }.
    Global Instance Get__marker : Notation.Dot "_marker" := {
      Notation.dot '(Build_t _ x1) := x1;
    }.
  End CallDryRunResult.
End CallDryRunResult.
Definition CallDryRunResult
    (E V : Set)
    `{ink_env.types.Environment.Trait E}
    : Set :=
  CallDryRunResult.t (E := E) (V := V).

Module Error.
  Inductive t : Set :=
  | ContractNotFound (_ : alloc.string.String)
  |
    InstantiateDryRun
    (_
      :
      pallet_contracts_primitives.ContractInstantiateResult
        C::type["AccountId"]
        E::type["Balance"])
  | InstantiateExtrinsic (_ : subxt.error.dispatch_error.DispatchError)
  |
    UploadDryRun
    (_
      :
      pallet_contracts_primitives.CodeUploadResult
        E::type["Hash"]
        E::type["Balance"])
  | UploadExtrinsic (_ : subxt.error.dispatch_error.DispatchError)
  |
    CallDryRun
    (_ : pallet_contracts_primitives.ContractExecResult E::type["Balance"])
  | CallExtrinsic (_ : subxt.error.dispatch_error.DispatchError)
  | Balance (_ : alloc.string.String)
  | Decoding (_ : subxt.error.Error).
End Error.
Definition Error := Error.t.

Module Client.
  Section Client.
    Context {C E : Set}.
    Context `{subxt.config.Config.Trait C} `{ink_env.types.Environment.Trait E}.
    Unset Primitive Projections.
    Record t : Set := {
      api : ink_e2e.xts.ContractsApi C E;
      contracts
        :
        alloc.collections.btree.map.BTreeMap
          alloc.string.String
          std.path.PathBuf;
    }.
    Global Set Primitive Projections.
    
    Global Instance Get_api : Notation.Dot "api" := {
      Notation.dot '(Build_t x0 _) := x0;
    }.
    Global Instance Get_contracts : Notation.Dot "contracts" := {
      Notation.dot '(Build_t _ x1) := x1;
    }.
  End Client.
End Client.
Definition Client
    (C E : Set)
    `{subxt.config.Config.Trait C}
    `{ink_env.types.Environment.Trait E}
    : Set :=
  Client.t (C := C) (E := E).

Module default_accounts.
  Parameter alice :
      forall
        `{H' : State.Trait}
        {C : Set}
        `{subxt.config.Config.Trait C}
        `{core.convert.From.Trait C::type["Signature"]
            (T := sp_core.sr25519.Signature)}
        `{core.convert.From.Trait C::type["AccountId"]
            (T := sp_core.crypto.AccountId32)},
      M (H := H')
          (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).
  
  Parameter bob :
      forall
        `{H' : State.Trait}
        {C : Set}
        `{subxt.config.Config.Trait C}
        `{core.convert.From.Trait C::type["Signature"]
            (T := sp_core.sr25519.Signature)}
        `{core.convert.From.Trait C::type["AccountId"]
            (T := sp_core.crypto.AccountId32)},
      M (H := H')
          (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).
  
  Parameter charlie :
      forall
        `{H' : State.Trait}
        {C : Set}
        `{subxt.config.Config.Trait C}
        `{core.convert.From.Trait C::type["Signature"]
            (T := sp_core.sr25519.Signature)}
        `{core.convert.From.Trait C::type["AccountId"]
            (T := sp_core.crypto.AccountId32)},
      M (H := H')
          (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).
  
  Parameter dave :
      forall
        `{H' : State.Trait}
        {C : Set}
        `{subxt.config.Config.Trait C}
        `{core.convert.From.Trait C::type["Signature"]
            (T := sp_core.sr25519.Signature)}
        `{core.convert.From.Trait C::type["AccountId"]
            (T := sp_core.crypto.AccountId32)},
      M (H := H')
          (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).
  
  Parameter eve :
      forall
        `{H' : State.Trait}
        {C : Set}
        `{subxt.config.Config.Trait C}
        `{core.convert.From.Trait C::type["Signature"]
            (T := sp_core.sr25519.Signature)}
        `{core.convert.From.Trait C::type["AccountId"]
            (T := sp_core.crypto.AccountId32)},
      M (H := H')
          (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).
  
  Parameter ferdie :
      forall
        `{H' : State.Trait}
        {C : Set}
        `{subxt.config.Config.Trait C}
        `{core.convert.From.Trait C::type["Signature"]
            (T := sp_core.sr25519.Signature)}
        `{core.convert.From.Trait C::type["AccountId"]
            (T := sp_core.crypto.AccountId32)},
      M (H := H')
          (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).
  
  Parameter one :
      forall
        `{H' : State.Trait}
        {C : Set}
        `{subxt.config.Config.Trait C}
        `{core.convert.From.Trait C::type["Signature"]
            (T := sp_core.sr25519.Signature)}
        `{core.convert.From.Trait C::type["AccountId"]
            (T := sp_core.crypto.AccountId32)},
      M (H := H')
          (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).
  
  Parameter two :
      forall
        `{H' : State.Trait}
        {C : Set}
        `{subxt.config.Config.Trait C}
        `{core.convert.From.Trait C::type["Signature"]
            (T := sp_core.sr25519.Signature)}
        `{core.convert.From.Trait C::type["AccountId"]
            (T := sp_core.crypto.AccountId32)},
      M (H := H')
          (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).
End default_accounts.

Parameter alice :
    forall
      `{H' : State.Trait}
      {C : Set}
      `{subxt.config.Config.Trait C}
      `{core.convert.From.Trait C::type["Signature"]
          (T := sp_core.sr25519.Signature)}
      `{core.convert.From.Trait C::type["AccountId"]
          (T := sp_core.crypto.AccountId32)},
    M (H := H') (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).

Parameter bob :
    forall
      `{H' : State.Trait}
      {C : Set}
      `{subxt.config.Config.Trait C}
      `{core.convert.From.Trait C::type["Signature"]
          (T := sp_core.sr25519.Signature)}
      `{core.convert.From.Trait C::type["AccountId"]
          (T := sp_core.crypto.AccountId32)},
    M (H := H') (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).

Parameter charlie :
    forall
      `{H' : State.Trait}
      {C : Set}
      `{subxt.config.Config.Trait C}
      `{core.convert.From.Trait C::type["Signature"]
          (T := sp_core.sr25519.Signature)}
      `{core.convert.From.Trait C::type["AccountId"]
          (T := sp_core.crypto.AccountId32)},
    M (H := H') (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).

Parameter dave :
    forall
      `{H' : State.Trait}
      {C : Set}
      `{subxt.config.Config.Trait C}
      `{core.convert.From.Trait C::type["Signature"]
          (T := sp_core.sr25519.Signature)}
      `{core.convert.From.Trait C::type["AccountId"]
          (T := sp_core.crypto.AccountId32)},
    M (H := H') (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).

Parameter eve :
    forall
      `{H' : State.Trait}
      {C : Set}
      `{subxt.config.Config.Trait C}
      `{core.convert.From.Trait C::type["Signature"]
          (T := sp_core.sr25519.Signature)}
      `{core.convert.From.Trait C::type["AccountId"]
          (T := sp_core.crypto.AccountId32)},
    M (H := H') (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).

Parameter ferdie :
    forall
      `{H' : State.Trait}
      {C : Set}
      `{subxt.config.Config.Trait C}
      `{core.convert.From.Trait C::type["Signature"]
          (T := sp_core.sr25519.Signature)}
      `{core.convert.From.Trait C::type["AccountId"]
          (T := sp_core.crypto.AccountId32)},
    M (H := H') (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).

Parameter one :
    forall
      `{H' : State.Trait}
      {C : Set}
      `{subxt.config.Config.Trait C}
      `{core.convert.From.Trait C::type["Signature"]
          (T := sp_core.sr25519.Signature)}
      `{core.convert.From.Trait C::type["AccountId"]
          (T := sp_core.crypto.AccountId32)},
    M (H := H') (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).

Parameter two :
    forall
      `{H' : State.Trait}
      {C : Set}
      `{subxt.config.Config.Trait C}
      `{core.convert.From.Trait C::type["Signature"]
          (T := sp_core.sr25519.Signature)}
      `{core.convert.From.Trait C::type["AccountId"]
          (T := sp_core.crypto.AccountId32)},
    M (H := H') (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).

Module node_proc.
  Module TestNodeProcess.
    Section TestNodeProcess.
      Context {R : Set}.
      Context `{subxt.config.Config.Trait R}.
      Unset Primitive Projections.
      Record t : Set := {
        proc : std.process.Child;
        client : subxt.client.online_client.OnlineClient R;
        url : alloc.string.String;
      }.
      Global Set Primitive Projections.
      
      Global Instance Get_proc : Notation.Dot "proc" := {
        Notation.dot '(Build_t x0 _ _) := x0;
      }.
      Global Instance Get_client : Notation.Dot "client" := {
        Notation.dot '(Build_t _ x1 _) := x1;
      }.
      Global Instance Get_url : Notation.Dot "url" := {
        Notation.dot '(Build_t _ _ x2) := x2;
      }.
    End TestNodeProcess.
  End TestNodeProcess.
  Definition TestNodeProcess (R : Set) `{subxt.config.Config.Trait R} : Set :=
    TestNodeProcess.t (R := R).
  
  Module TestNodeProcessBuilder.
    Section TestNodeProcessBuilder.
      Context {R : Set}.
      Unset Primitive Projections.
      Record t : Set := {
        node_path : std.ffi.os_str.OsString;
        authority : core.option.Option sp_keyring.sr25519.Keyring;
        marker : core.marker.PhantomData R;
      }.
      Global Set Primitive Projections.
      
      Global Instance Get_node_path : Notation.Dot "node_path" := {
        Notation.dot '(Build_t x0 _ _) := x0;
      }.
      Global Instance Get_authority : Notation.Dot "authority" := {
        Notation.dot '(Build_t _ x1 _) := x1;
      }.
      Global Instance Get_marker : Notation.Dot "marker" := {
        Notation.dot '(Build_t _ _ x2) := x2;
      }.
    End TestNodeProcessBuilder.
  End TestNodeProcessBuilder.
  Definition TestNodeProcessBuilder (R : Set) : Set :=
    TestNodeProcessBuilder.t (R := R).
End node_proc.

Module TestNodeProcess.
  Section TestNodeProcess.
    Context {R : Set}.
    Context `{subxt.config.Config.Trait R}.
    Unset Primitive Projections.
    Record t : Set := {
      proc : std.process.Child;
      client : subxt.client.online_client.OnlineClient R;
      url : alloc.string.String;
    }.
    Global Set Primitive Projections.
    
    Global Instance Get_proc : Notation.Dot "proc" := {
      Notation.dot '(Build_t x0 _ _) := x0;
    }.
    Global Instance Get_client : Notation.Dot "client" := {
      Notation.dot '(Build_t _ x1 _) := x1;
    }.
    Global Instance Get_url : Notation.Dot "url" := {
      Notation.dot '(Build_t _ _ x2) := x2;
    }.
  End TestNodeProcess.
End TestNodeProcess.
Definition TestNodeProcess (R : Set) `{subxt.config.Config.Trait R} : Set :=
  TestNodeProcess.t (R := R).

Module TestNodeProcessBuilder.
  Section TestNodeProcessBuilder.
    Context {R : Set}.
    Unset Primitive Projections.
    Record t : Set := {
      node_path : std.ffi.os_str.OsString;
      authority : core.option.Option sp_keyring.sr25519.Keyring;
      marker : core.marker.PhantomData R;
    }.
    Global Set Primitive Projections.
    
    Global Instance Get_node_path : Notation.Dot "node_path" := {
      Notation.dot '(Build_t x0 _ _) := x0;
    }.
    Global Instance Get_authority : Notation.Dot "authority" := {
      Notation.dot '(Build_t _ x1 _) := x1;
    }.
    Global Instance Get_marker : Notation.Dot "marker" := {
      Notation.dot '(Build_t _ _ x2) := x2;
    }.
  End TestNodeProcessBuilder.
End TestNodeProcessBuilder.
Definition TestNodeProcessBuilder (R : Set) : Set :=
  TestNodeProcessBuilder.t (R := R).

Module xts.
  Module Weight.
    Unset Primitive Projections.
    Record t : Set := {
      ref_time : u64;
      proof_size : u64;
    }.
    Global Set Primitive Projections.
    
    Global Instance Get_ref_time : Notation.Dot "ref_time" := {
      Notation.dot '(Build_t x0 _) := x0;
    }.
    Global Instance Get_proof_size : Notation.Dot "proof_size" := {
      Notation.dot '(Build_t _ x1) := x1;
    }.
  End Weight.
  Definition Weight : Set := Weight.t.
  
  Module InstantiateWithCode.
    Section InstantiateWithCode.
      Context {E : Set}.
      Context `{ink_env.types.Environment.Trait E}.
      Unset Primitive Projections.
      Record t : Set := {
        value : E::type["Balance"];
        gas_limit : ink_e2e.xts.Weight;
        storage_deposit_limit : core.option.Option E::type["Balance"];
        code : alloc.vec.Vec u8;
        data : alloc.vec.Vec u8;
        salt : alloc.vec.Vec u8;
      }.
      Global Set Primitive Projections.
      
      Global Instance Get_value : Notation.Dot "value" := {
        Notation.dot '(Build_t x0 _ _ _ _ _) := x0;
      }.
      Global Instance Get_gas_limit : Notation.Dot "gas_limit" := {
        Notation.dot '(Build_t _ x1 _ _ _ _) := x1;
      }.
      Global Instance Get_storage_deposit_limit
        : Notation.Dot "storage_deposit_limit" := {
        Notation.dot '(Build_t _ _ x2 _ _ _) := x2;
      }.
      Global Instance Get_code : Notation.Dot "code" := {
        Notation.dot '(Build_t _ _ _ x3 _ _) := x3;
      }.
      Global Instance Get_data : Notation.Dot "data" := {
        Notation.dot '(Build_t _ _ _ _ x4 _) := x4;
      }.
      Global Instance Get_salt : Notation.Dot "salt" := {
        Notation.dot '(Build_t _ _ _ _ _ x5) := x5;
      }.
    End InstantiateWithCode.
  End InstantiateWithCode.
  Definition InstantiateWithCode
      (E : Set)
      `{ink_env.types.Environment.Trait E}
      : Set :=
    InstantiateWithCode.t (E := E).
  
  Module Call.
    Section Call.
      Context {E : Set}.
      Context `{ink_env.types.Environment.Trait E}.
      Unset Primitive Projections.
      Record t : Set := {
        dest : subxt.utils.multi_address.MultiAddress E::type["AccountId"] unit;
        value : E::type["Balance"];
        gas_limit : ink_e2e.xts.Weight;
        storage_deposit_limit : core.option.Option E::type["Balance"];
        data : alloc.vec.Vec u8;
      }.
      Global Set Primitive Projections.
      
      Global Instance Get_dest : Notation.Dot "dest" := {
        Notation.dot '(Build_t x0 _ _ _ _) := x0;
      }.
      Global Instance Get_value : Notation.Dot "value" := {
        Notation.dot '(Build_t _ x1 _ _ _) := x1;
      }.
      Global Instance Get_gas_limit : Notation.Dot "gas_limit" := {
        Notation.dot '(Build_t _ _ x2 _ _) := x2;
      }.
      Global Instance Get_storage_deposit_limit
        : Notation.Dot "storage_deposit_limit" := {
        Notation.dot '(Build_t _ _ _ x3 _) := x3;
      }.
      Global Instance Get_data : Notation.Dot "data" := {
        Notation.dot '(Build_t _ _ _ _ x4) := x4;
      }.
    End Call.
  End Call.
  Definition Call (E : Set) `{ink_env.types.Environment.Trait E} : Set :=
    Call.t (E := E).
  
  Module Transfer.
    Section Transfer.
      Context {E C : Set}.
      Context
        `{ink_env.types.Environment.Trait E}
        `{subxt.config.Config.Trait C}.
      Unset Primitive Projections.
      Record t : Set := {
        dest : subxt.utils.static_type.Static C::type["Address"];
        value : E::type["Balance"];
      }.
      Global Set Primitive Projections.
      
      Global Instance Get_dest : Notation.Dot "dest" := {
        Notation.dot '(Build_t x0 _) := x0;
      }.
      Global Instance Get_value : Notation.Dot "value" := {
        Notation.dot '(Build_t _ x1) := x1;
      }.
    End Transfer.
  End Transfer.
  Definition Transfer
      (E C : Set)
      `{ink_env.types.Environment.Trait E}
      `{subxt.config.Config.Trait C}
      : Set :=
    Transfer.t (E := E) (C := C).
  
  Module Determinism.
    Inductive t : Set :=
    | Enforced
    | Relaxed.
  End Determinism.
  Definition Determinism := Determinism.t.
  
  Module UploadCode.
    Section UploadCode.
      Context {E : Set}.
      Context `{ink_env.types.Environment.Trait E}.
      Unset Primitive Projections.
      Record t : Set := {
        code : alloc.vec.Vec u8;
        storage_deposit_limit : core.option.Option E::type["Balance"];
        determinism : ink_e2e.xts.Determinism;
      }.
      Global Set Primitive Projections.
      
      Global Instance Get_code : Notation.Dot "code" := {
        Notation.dot '(Build_t x0 _ _) := x0;
      }.
      Global Instance Get_storage_deposit_limit
        : Notation.Dot "storage_deposit_limit" := {
        Notation.dot '(Build_t _ x1 _) := x1;
      }.
      Global Instance Get_determinism : Notation.Dot "determinism" := {
        Notation.dot '(Build_t _ _ x2) := x2;
      }.
    End UploadCode.
  End UploadCode.
  Definition UploadCode (E : Set) `{ink_env.types.Environment.Trait E} : Set :=
    UploadCode.t (E := E).
  
  Module ContractsApi.
    Section ContractsApi.
      Context {C E : Set}.
      Context
        `{subxt.config.Config.Trait C}
        `{ink_env.types.Environment.Trait E}.
      Unset Primitive Projections.
      Record t : Set := {
        client : subxt.client.online_client.OnlineClient C;
        _phantom : core.marker.PhantomData (C * E);
      }.
      Global Set Primitive Projections.
      
      Global Instance Get_client : Notation.Dot "client" := {
        Notation.dot '(Build_t x0 _) := x0;
      }.
      Global Instance Get__phantom : Notation.Dot "_phantom" := {
        Notation.dot '(Build_t _ x1) := x1;
      }.
    End ContractsApi.
  End ContractsApi.
  Definition ContractsApi
      (C E : Set)
      `{subxt.config.Config.Trait C}
      `{ink_env.types.Environment.Trait E}
      : Set :=
    ContractsApi.t (C := C) (E := E).
End xts.

Module Weight.
  Unset Primitive Projections.
  Record t : Set := {
    ref_time : u64;
    proof_size : u64;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_ref_time : Notation.Dot "ref_time" := {
    Notation.dot '(Build_t x0 _) := x0;
  }.
  Global Instance Get_proof_size : Notation.Dot "proof_size" := {
    Notation.dot '(Build_t _ x1) := x1;
  }.
End Weight.
Definition Weight : Set := Weight.t.

Module InstantiateWithCode.
  Section InstantiateWithCode.
    Context {E : Set}.
    Context `{ink_env.types.Environment.Trait E}.
    Unset Primitive Projections.
    Record t : Set := {
      value : E::type["Balance"];
      gas_limit : ink_e2e.xts.Weight;
      storage_deposit_limit : core.option.Option E::type["Balance"];
      code : alloc.vec.Vec u8;
      data : alloc.vec.Vec u8;
      salt : alloc.vec.Vec u8;
    }.
    Global Set Primitive Projections.
    
    Global Instance Get_value : Notation.Dot "value" := {
      Notation.dot '(Build_t x0 _ _ _ _ _) := x0;
    }.
    Global Instance Get_gas_limit : Notation.Dot "gas_limit" := {
      Notation.dot '(Build_t _ x1 _ _ _ _) := x1;
    }.
    Global Instance Get_storage_deposit_limit
      : Notation.Dot "storage_deposit_limit" := {
      Notation.dot '(Build_t _ _ x2 _ _ _) := x2;
    }.
    Global Instance Get_code : Notation.Dot "code" := {
      Notation.dot '(Build_t _ _ _ x3 _ _) := x3;
    }.
    Global Instance Get_data : Notation.Dot "data" := {
      Notation.dot '(Build_t _ _ _ _ x4 _) := x4;
    }.
    Global Instance Get_salt : Notation.Dot "salt" := {
      Notation.dot '(Build_t _ _ _ _ _ x5) := x5;
    }.
  End InstantiateWithCode.
End InstantiateWithCode.
Definition InstantiateWithCode
    (E : Set)
    `{ink_env.types.Environment.Trait E}
    : Set :=
  InstantiateWithCode.t (E := E).

Module Call.
  Section Call.
    Context {E : Set}.
    Context `{ink_env.types.Environment.Trait E}.
    Unset Primitive Projections.
    Record t : Set := {
      dest : subxt.utils.multi_address.MultiAddress E::type["AccountId"] unit;
      value : E::type["Balance"];
      gas_limit : ink_e2e.xts.Weight;
      storage_deposit_limit : core.option.Option E::type["Balance"];
      data : alloc.vec.Vec u8;
    }.
    Global Set Primitive Projections.
    
    Global Instance Get_dest : Notation.Dot "dest" := {
      Notation.dot '(Build_t x0 _ _ _ _) := x0;
    }.
    Global Instance Get_value : Notation.Dot "value" := {
      Notation.dot '(Build_t _ x1 _ _ _) := x1;
    }.
    Global Instance Get_gas_limit : Notation.Dot "gas_limit" := {
      Notation.dot '(Build_t _ _ x2 _ _) := x2;
    }.
    Global Instance Get_storage_deposit_limit
      : Notation.Dot "storage_deposit_limit" := {
      Notation.dot '(Build_t _ _ _ x3 _) := x3;
    }.
    Global Instance Get_data : Notation.Dot "data" := {
      Notation.dot '(Build_t _ _ _ _ x4) := x4;
    }.
  End Call.
End Call.
Definition Call (E : Set) `{ink_env.types.Environment.Trait E} : Set :=
  Call.t (E := E).

Module Transfer.
  Section Transfer.
    Context {E C : Set}.
    Context `{ink_env.types.Environment.Trait E} `{subxt.config.Config.Trait C}.
    Unset Primitive Projections.
    Record t : Set := {
      dest : subxt.utils.static_type.Static C::type["Address"];
      value : E::type["Balance"];
    }.
    Global Set Primitive Projections.
    
    Global Instance Get_dest : Notation.Dot "dest" := {
      Notation.dot '(Build_t x0 _) := x0;
    }.
    Global Instance Get_value : Notation.Dot "value" := {
      Notation.dot '(Build_t _ x1) := x1;
    }.
  End Transfer.
End Transfer.
Definition Transfer
    (E C : Set)
    `{ink_env.types.Environment.Trait E}
    `{subxt.config.Config.Trait C}
    : Set :=
  Transfer.t (E := E) (C := C).

Module Determinism.
  Inductive t : Set :=
  | Enforced
  | Relaxed.
End Determinism.
Definition Determinism := Determinism.t.

Module UploadCode.
  Section UploadCode.
    Context {E : Set}.
    Context `{ink_env.types.Environment.Trait E}.
    Unset Primitive Projections.
    Record t : Set := {
      code : alloc.vec.Vec u8;
      storage_deposit_limit : core.option.Option E::type["Balance"];
      determinism : ink_e2e.xts.Determinism;
    }.
    Global Set Primitive Projections.
    
    Global Instance Get_code : Notation.Dot "code" := {
      Notation.dot '(Build_t x0 _ _) := x0;
    }.
    Global Instance Get_storage_deposit_limit
      : Notation.Dot "storage_deposit_limit" := {
      Notation.dot '(Build_t _ x1 _) := x1;
    }.
    Global Instance Get_determinism : Notation.Dot "determinism" := {
      Notation.dot '(Build_t _ _ x2) := x2;
    }.
  End UploadCode.
End UploadCode.
Definition UploadCode (E : Set) `{ink_env.types.Environment.Trait E} : Set :=
  UploadCode.t (E := E).

Module ContractsApi.
  Section ContractsApi.
    Context {C E : Set}.
    Context `{subxt.config.Config.Trait C} `{ink_env.types.Environment.Trait E}.
    Unset Primitive Projections.
    Record t : Set := {
      client : subxt.client.online_client.OnlineClient C;
      _phantom : core.marker.PhantomData (C * E);
    }.
    Global Set Primitive Projections.
    
    Global Instance Get_client : Notation.Dot "client" := {
      Notation.dot '(Build_t x0 _) := x0;
    }.
    Global Instance Get__phantom : Notation.Dot "_phantom" := {
      Notation.dot '(Build_t _ x1) := x1;
    }.
  End ContractsApi.
End ContractsApi.
Definition ContractsApi
    (C E : Set)
    `{subxt.config.Config.Trait C}
    `{ink_env.types.Environment.Trait E}
    : Set :=
  ContractsApi.t (C := C) (E := E).

Module SubstrateConfig.
  Inductive t : Set :=
  .
End SubstrateConfig.
Definition SubstrateConfig := SubstrateConfig.t.

Definition PolkadotConfig : Set :=
  subxt.config.WithExtrinsicParams
    ink_e2e.SubstrateConfig
    (subxt.config.polkadot.PolkadotExtrinsicParams ink_e2e.SubstrateConfig).

Definition Signer (C : Set) : Set :=
  subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair.

Parameter INIT : forall `{H' : State.Trait}, std.sync.once.Once.

Parameter LOG_PREFIX :
  forall `{H' : State.Trait},
  std.thread.local.LocalKey (core.cell.RefCell alloc.string.String).

Parameter log_prefix :
    forall `{H' : State.Trait},
    M (H := H') alloc.string.String.

Parameter log_info : forall `{H' : State.Trait}, (ref str) -> M (H := H') unit.

Parameter log_error : forall `{H' : State.Trait}, (ref str) -> M (H := H') unit.

Parameter account_id :
    forall `{H' : State.Trait},
    sp_keyring.sr25519.Keyring -> M (H := H') ink_primitives.types.AccountId.
