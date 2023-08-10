(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module builders.
  Definition CreateBuilderPartial (E ContractRef Args R : Set) : Set :=
    ink_env.call.create_builder.CreateBuilder
      E
      ContractRef
      (ink_env.call.common.Unset ink_env.types.Environment.Hash)
      (ink_env.call.common.Unset u64)
      (ink_env.call.common.Unset ink_env.types.Environment.Balance)
      (ink_env.call.common.Set
        (ink_env.call.execution_input.ExecutionInput Args))
      (ink_env.call.common.Unset ink_env.call.create_builder.state.Salt)
      (ink_env.call.common.Set (ink_env.call.common.ReturnType R)).
  
  Parameter constructor_exec_input : forall `{H : State.Trait},
      forall
      {E : Set} {ContractRef : Set} {Args : Set} {R : Set},
      forall `{parity_scale_codec.codec.Encode.Trait Args}, forall
        `{ink_env.types.Environment.Trait
        E},
        ink_e2e.builders.CreateBuilderPartial E ContractRef Args R ->
      M (H := H) (alloc.vec.Vec u8).
End builders.

Definition CreateBuilderPartial (E ContractRef Args R : Set) : Set :=
  ink_env.call.create_builder.CreateBuilder
    E
    ContractRef
    (ink_env.call.common.Unset ink_env.types.Environment.Hash)
    (ink_env.call.common.Unset u64)
    (ink_env.call.common.Unset ink_env.types.Environment.Balance)
    (ink_env.call.common.Set (ink_env.call.execution_input.ExecutionInput Args))
    (ink_env.call.common.Unset ink_env.call.create_builder.state.Salt)
    (ink_env.call.common.Set (ink_env.call.common.ReturnType R)).

Parameter constructor_exec_input : forall `{H : State.Trait},
    forall
    {E : Set} {ContractRef : Set} {Args : Set} {R : Set},
    forall `{parity_scale_codec.codec.Encode.Trait Args}, forall
      `{ink_env.types.Environment.Trait
      E},
      ink_e2e.builders.CreateBuilderPartial E ContractRef Args R ->
    M (H := H) (alloc.vec.Vec u8).

Module client.
  Definition CallBuilderFinal (E Args RetType : Set) : Set :=
    ink_env.call.call_builder.CallBuilder
      E
      (ink_env.call.common.Set (ink_env.call.call_builder.Call E))
      (ink_env.call.common.Set
        (ink_env.call.execution_input.ExecutionInput Args))
      (ink_env.call.common.Set (ink_env.call.common.ReturnType RetType)).
  
  Module InstantiationResult.
    Section InstantiationResult.
      Context {C E : Set}.
      Unset Primitive Projections.
      Record t : Set := {
        account_id : ImplE.AccountId;
        dry_run
          :
          pallet_contracts_primitives.ContractInstantiateResult
            ImplC.AccountId
            ImplE.Balance;
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
  Definition InstantiationResult : Set := @InstantiationResult.t.
  
  Module UploadResult.
    Section UploadResult.
      Context {C E : Set}.
      Unset Primitive Projections.
      Record t : Set := {
        code_hash : ImplE.Hash;
        dry_run
          :
          pallet_contracts_primitives.CodeUploadResult ImplE.Hash ImplE.Balance;
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
  Definition UploadResult : Set := @UploadResult.t.
  
  Module CallResult.
    Section CallResult.
      Context {C E V : Set}.
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
  Definition CallResult : Set := @CallResult.t.
  
  Module CallDryRunResult.
    Section CallDryRunResult.
      Context {E V : Set}.
      Unset Primitive Projections.
      Record t : Set := {
        exec_result
          :
          pallet_contracts_primitives.ContractExecResult ImplE.Balance;
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
  Definition CallDryRunResult : Set := @CallDryRunResult.t.
  
  Module Error.
    Inductive t : Set :=
    | ContractNotFound (_ : alloc.string.String)
    |
      InstantiateDryRun
      (_
        :
        pallet_contracts_primitives.ContractInstantiateResult
          ImplC.AccountId
          ImplE.Balance)
    | InstantiateExtrinsic (_ : subxt.error.dispatch_error.DispatchError)
    |
      UploadDryRun
      (_
        :
        pallet_contracts_primitives.CodeUploadResult ImplE.Hash ImplE.Balance)
    | UploadExtrinsic (_ : subxt.error.dispatch_error.DispatchError)
    |
      CallDryRun
      (_ : pallet_contracts_primitives.ContractExecResult ImplE.Balance)
    | CallExtrinsic (_ : subxt.error.dispatch_error.DispatchError)
    | Balance (_ : alloc.string.String)
    | Decoding (_ : subxt.error.Error).
  End Error.
  Definition Error := Error.t.
  
  Module Client.
    Section Client.
      Context {C E : Set}.
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
  Definition Client : Set := @Client.t.
End client.

Definition CallBuilderFinal (E Args RetType : Set) : Set :=
  ink_env.call.call_builder.CallBuilder
    E
    (ink_env.call.common.Set (ink_env.call.call_builder.Call E))
    (ink_env.call.common.Set (ink_env.call.execution_input.ExecutionInput Args))
    (ink_env.call.common.Set (ink_env.call.common.ReturnType RetType)).

Module InstantiationResult.
  Section InstantiationResult.
    Context {C E : Set}.
    Unset Primitive Projections.
    Record t : Set := {
      account_id : ImplE.AccountId;
      dry_run
        :
        pallet_contracts_primitives.ContractInstantiateResult
          ImplC.AccountId
          ImplE.Balance;
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
Definition InstantiationResult : Set := @InstantiationResult.t.

Module UploadResult.
  Section UploadResult.
    Context {C E : Set}.
    Unset Primitive Projections.
    Record t : Set := {
      code_hash : ImplE.Hash;
      dry_run
        :
        pallet_contracts_primitives.CodeUploadResult ImplE.Hash ImplE.Balance;
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
Definition UploadResult : Set := @UploadResult.t.

Module CallResult.
  Section CallResult.
    Context {C E V : Set}.
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
Definition CallResult : Set := @CallResult.t.

Module CallDryRunResult.
  Section CallDryRunResult.
    Context {E V : Set}.
    Unset Primitive Projections.
    Record t : Set := {
      exec_result
        :
        pallet_contracts_primitives.ContractExecResult ImplE.Balance;
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
Definition CallDryRunResult : Set := @CallDryRunResult.t.

Module Error.
  Inductive t : Set :=
  | ContractNotFound (_ : alloc.string.String)
  |
    InstantiateDryRun
    (_
      :
      pallet_contracts_primitives.ContractInstantiateResult
        ImplC.AccountId
        ImplE.Balance)
  | InstantiateExtrinsic (_ : subxt.error.dispatch_error.DispatchError)
  |
    UploadDryRun
    (_ : pallet_contracts_primitives.CodeUploadResult ImplE.Hash ImplE.Balance)
  | UploadExtrinsic (_ : subxt.error.dispatch_error.DispatchError)
  |
    CallDryRun
    (_ : pallet_contracts_primitives.ContractExecResult ImplE.Balance)
  | CallExtrinsic (_ : subxt.error.dispatch_error.DispatchError)
  | Balance (_ : alloc.string.String)
  | Decoding (_ : subxt.error.Error).
End Error.
Definition Error := Error.t.

Module Client.
  Section Client.
    Context {C E : Set}.
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
Definition Client : Set := @Client.t.

Module default_accounts.
  Parameter alice : forall `{H : State.Trait},
      forall
      {C : Set},
      forall `{subxt.config.Config.Trait C}, forall
        `{core.convert.From.Trait
        sp_core.sr25519.Signature
        ImplC.Signature},
        forall
        `{core.convert.From.Trait
        sp_core.crypto.AccountId32
        ImplC.AccountId},
        M (H := H)
        (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).
  
  Parameter bob : forall `{H : State.Trait},
      forall
      {C : Set},
      forall `{subxt.config.Config.Trait C}, forall
        `{core.convert.From.Trait
        sp_core.sr25519.Signature
        ImplC.Signature},
        forall
        `{core.convert.From.Trait
        sp_core.crypto.AccountId32
        ImplC.AccountId},
        M (H := H)
        (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).
  
  Parameter charlie : forall `{H : State.Trait},
      forall
      {C : Set},
      forall `{subxt.config.Config.Trait C}, forall
        `{core.convert.From.Trait
        sp_core.sr25519.Signature
        ImplC.Signature},
        forall
        `{core.convert.From.Trait
        sp_core.crypto.AccountId32
        ImplC.AccountId},
        M (H := H)
        (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).
  
  Parameter dave : forall `{H : State.Trait},
      forall
      {C : Set},
      forall `{subxt.config.Config.Trait C}, forall
        `{core.convert.From.Trait
        sp_core.sr25519.Signature
        ImplC.Signature},
        forall
        `{core.convert.From.Trait
        sp_core.crypto.AccountId32
        ImplC.AccountId},
        M (H := H)
        (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).
  
  Parameter eve : forall `{H : State.Trait},
      forall
      {C : Set},
      forall `{subxt.config.Config.Trait C}, forall
        `{core.convert.From.Trait
        sp_core.sr25519.Signature
        ImplC.Signature},
        forall
        `{core.convert.From.Trait
        sp_core.crypto.AccountId32
        ImplC.AccountId},
        M (H := H)
        (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).
  
  Parameter ferdie : forall `{H : State.Trait},
      forall
      {C : Set},
      forall `{subxt.config.Config.Trait C}, forall
        `{core.convert.From.Trait
        sp_core.sr25519.Signature
        ImplC.Signature},
        forall
        `{core.convert.From.Trait
        sp_core.crypto.AccountId32
        ImplC.AccountId},
        M (H := H)
        (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).
  
  Parameter one : forall `{H : State.Trait},
      forall
      {C : Set},
      forall `{subxt.config.Config.Trait C}, forall
        `{core.convert.From.Trait
        sp_core.sr25519.Signature
        ImplC.Signature},
        forall
        `{core.convert.From.Trait
        sp_core.crypto.AccountId32
        ImplC.AccountId},
        M (H := H)
        (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).
  
  Parameter two : forall `{H : State.Trait},
      forall
      {C : Set},
      forall `{subxt.config.Config.Trait C}, forall
        `{core.convert.From.Trait
        sp_core.sr25519.Signature
        ImplC.Signature},
        forall
        `{core.convert.From.Trait
        sp_core.crypto.AccountId32
        ImplC.AccountId},
        M (H := H)
        (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).
End default_accounts.

Parameter alice : forall `{H : State.Trait},
    forall
    {C : Set},
    forall `{subxt.config.Config.Trait C}, forall
      `{core.convert.From.Trait
      sp_core.sr25519.Signature
      ImplC.Signature},
      forall
      `{core.convert.From.Trait
      sp_core.crypto.AccountId32
      ImplC.AccountId},
      M (H := H)
      (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).

Parameter bob : forall `{H : State.Trait},
    forall
    {C : Set},
    forall `{subxt.config.Config.Trait C}, forall
      `{core.convert.From.Trait
      sp_core.sr25519.Signature
      ImplC.Signature},
      forall
      `{core.convert.From.Trait
      sp_core.crypto.AccountId32
      ImplC.AccountId},
      M (H := H)
      (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).

Parameter charlie : forall `{H : State.Trait},
    forall
    {C : Set},
    forall `{subxt.config.Config.Trait C}, forall
      `{core.convert.From.Trait
      sp_core.sr25519.Signature
      ImplC.Signature},
      forall
      `{core.convert.From.Trait
      sp_core.crypto.AccountId32
      ImplC.AccountId},
      M (H := H)
      (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).

Parameter dave : forall `{H : State.Trait},
    forall
    {C : Set},
    forall `{subxt.config.Config.Trait C}, forall
      `{core.convert.From.Trait
      sp_core.sr25519.Signature
      ImplC.Signature},
      forall
      `{core.convert.From.Trait
      sp_core.crypto.AccountId32
      ImplC.AccountId},
      M (H := H)
      (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).

Parameter eve : forall `{H : State.Trait},
    forall
    {C : Set},
    forall `{subxt.config.Config.Trait C}, forall
      `{core.convert.From.Trait
      sp_core.sr25519.Signature
      ImplC.Signature},
      forall
      `{core.convert.From.Trait
      sp_core.crypto.AccountId32
      ImplC.AccountId},
      M (H := H)
      (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).

Parameter ferdie : forall `{H : State.Trait},
    forall
    {C : Set},
    forall `{subxt.config.Config.Trait C}, forall
      `{core.convert.From.Trait
      sp_core.sr25519.Signature
      ImplC.Signature},
      forall
      `{core.convert.From.Trait
      sp_core.crypto.AccountId32
      ImplC.AccountId},
      M (H := H)
      (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).

Parameter one : forall `{H : State.Trait},
    forall
    {C : Set},
    forall `{subxt.config.Config.Trait C}, forall
      `{core.convert.From.Trait
      sp_core.sr25519.Signature
      ImplC.Signature},
      forall
      `{core.convert.From.Trait
      sp_core.crypto.AccountId32
      ImplC.AccountId},
      M (H := H)
      (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).

Parameter two : forall `{H : State.Trait},
    forall
    {C : Set},
    forall `{subxt.config.Config.Trait C}, forall
      `{core.convert.From.Trait
      sp_core.sr25519.Signature
      ImplC.Signature},
      forall
      `{core.convert.From.Trait
      sp_core.crypto.AccountId32
      ImplC.AccountId},
      M (H := H)
      (subxt.tx.signer.pair_signer.PairSigner C sp_core.sr25519.Pair).

Module node_proc.
  Module TestNodeProcess.
    Section TestNodeProcess.
      Context {R : Set}.
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
  Definition TestNodeProcess : Set := @TestNodeProcess.t.
  
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
  Definition TestNodeProcessBuilder : Set := @TestNodeProcessBuilder.t.
End node_proc.

Module TestNodeProcess.
  Section TestNodeProcess.
    Context {R : Set}.
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
Definition TestNodeProcess : Set := @TestNodeProcess.t.

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
Definition TestNodeProcessBuilder : Set := @TestNodeProcessBuilder.t.

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
  Definition Weight : Set := @Weight.t.
  
  Module InstantiateWithCode.
    Section InstantiateWithCode.
      Context {E : Set}.
      Unset Primitive Projections.
      Record t : Set := {
        value : ImplE.Balance;
        gas_limit : ink_e2e.xts.Weight;
        storage_deposit_limit : core.option.Option ImplE.Balance;
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
      Global Instance Get_storage_deposit_limit :
          Notation.Dot "storage_deposit_limit" := {
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
  Definition InstantiateWithCode : Set := @InstantiateWithCode.t.
  
  Module Call.
    Section Call.
      Context {E : Set}.
      Unset Primitive Projections.
      Record t : Set := {
        dest : subxt.utils.multi_address.MultiAddress ImplE.AccountId unit;
        value : ImplE.Balance;
        gas_limit : ink_e2e.xts.Weight;
        storage_deposit_limit : core.option.Option ImplE.Balance;
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
      Global Instance Get_storage_deposit_limit :
          Notation.Dot "storage_deposit_limit" := {
        Notation.dot '(Build_t _ _ _ x3 _) := x3;
      }.
      Global Instance Get_data : Notation.Dot "data" := {
        Notation.dot '(Build_t _ _ _ _ x4) := x4;
      }.
    End Call.
  End Call.
  Definition Call : Set := @Call.t.
  
  Module Transfer.
    Section Transfer.
      Context {E C : Set}.
      Unset Primitive Projections.
      Record t : Set := {
        dest : subxt.utils.static_type.Static ImplC.Address;
        value : ImplE.Balance;
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
  Definition Transfer : Set := @Transfer.t.
  
  Module Determinism.
    Inductive t : Set :=
    | Enforced
    | Relaxed.
  End Determinism.
  Definition Determinism := Determinism.t.
  
  Module UploadCode.
    Section UploadCode.
      Context {E : Set}.
      Unset Primitive Projections.
      Record t : Set := {
        code : alloc.vec.Vec u8;
        storage_deposit_limit : core.option.Option ImplE.Balance;
        determinism : ink_e2e.xts.Determinism;
      }.
      Global Set Primitive Projections.
      
      Global Instance Get_code : Notation.Dot "code" := {
        Notation.dot '(Build_t x0 _ _) := x0;
      }.
      Global Instance Get_storage_deposit_limit :
          Notation.Dot "storage_deposit_limit" := {
        Notation.dot '(Build_t _ x1 _) := x1;
      }.
      Global Instance Get_determinism : Notation.Dot "determinism" := {
        Notation.dot '(Build_t _ _ x2) := x2;
      }.
    End UploadCode.
  End UploadCode.
  Definition UploadCode : Set := @UploadCode.t.
  
  Module ContractsApi.
    Section ContractsApi.
      Context {C E : Set}.
      Unset Primitive Projections.
      Record t : Set := {
        client : subxt.client.online_client.OnlineClient C;
        _phantom : core.marker.PhantomData ((C * E));
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
  Definition ContractsApi : Set := @ContractsApi.t.
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
Definition Weight : Set := @Weight.t.

Module InstantiateWithCode.
  Section InstantiateWithCode.
    Context {E : Set}.
    Unset Primitive Projections.
    Record t : Set := {
      value : ImplE.Balance;
      gas_limit : ink_e2e.xts.Weight;
      storage_deposit_limit : core.option.Option ImplE.Balance;
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
    Global Instance Get_storage_deposit_limit :
        Notation.Dot "storage_deposit_limit" := {
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
Definition InstantiateWithCode : Set := @InstantiateWithCode.t.

Module Call.
  Section Call.
    Context {E : Set}.
    Unset Primitive Projections.
    Record t : Set := {
      dest : subxt.utils.multi_address.MultiAddress ImplE.AccountId unit;
      value : ImplE.Balance;
      gas_limit : ink_e2e.xts.Weight;
      storage_deposit_limit : core.option.Option ImplE.Balance;
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
    Global Instance Get_storage_deposit_limit :
        Notation.Dot "storage_deposit_limit" := {
      Notation.dot '(Build_t _ _ _ x3 _) := x3;
    }.
    Global Instance Get_data : Notation.Dot "data" := {
      Notation.dot '(Build_t _ _ _ _ x4) := x4;
    }.
  End Call.
End Call.
Definition Call : Set := @Call.t.

Module Transfer.
  Section Transfer.
    Context {E C : Set}.
    Unset Primitive Projections.
    Record t : Set := {
      dest : subxt.utils.static_type.Static ImplC.Address;
      value : ImplE.Balance;
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
Definition Transfer : Set := @Transfer.t.

Module Determinism.
  Inductive t : Set :=
  | Enforced
  | Relaxed.
End Determinism.
Definition Determinism := Determinism.t.

Module UploadCode.
  Section UploadCode.
    Context {E : Set}.
    Unset Primitive Projections.
    Record t : Set := {
      code : alloc.vec.Vec u8;
      storage_deposit_limit : core.option.Option ImplE.Balance;
      determinism : ink_e2e.xts.Determinism;
    }.
    Global Set Primitive Projections.
    
    Global Instance Get_code : Notation.Dot "code" := {
      Notation.dot '(Build_t x0 _ _) := x0;
    }.
    Global Instance Get_storage_deposit_limit :
        Notation.Dot "storage_deposit_limit" := {
      Notation.dot '(Build_t _ x1 _) := x1;
    }.
    Global Instance Get_determinism : Notation.Dot "determinism" := {
      Notation.dot '(Build_t _ _ x2) := x2;
    }.
  End UploadCode.
End UploadCode.
Definition UploadCode : Set := @UploadCode.t.

Module ContractsApi.
  Section ContractsApi.
    Context {C E : Set}.
    Unset Primitive Projections.
    Record t : Set := {
      client : subxt.client.online_client.OnlineClient C;
      _phantom : core.marker.PhantomData ((C * E));
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
Definition ContractsApi : Set := @ContractsApi.t.

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

Definition INIT `{H : State.Trait} : std.sync.once.Once :=
  run (std.sync.once.Once::["new"]).

Definition
    LOG_PREFIX
    `{H : State.Trait} :
    std.thread.local.LocalKey (core.cell.RefCell alloc.string.String) :=
  run (std.thread.local.LocalKey::["new"] ink_e2e.LOG_PREFIX.__getit).

Parameter log_prefix : forall `{H : State.Trait},
    M (H := H) alloc.string.String.

Parameter log_info : forall `{H : State.Trait}, ref str -> M (H := H) unit.

Parameter log_error : forall `{H : State.Trait}, ref str -> M (H := H) unit.

Parameter account_id : forall `{H : State.Trait},
    sp_keyring.sr25519.Keyring ->
    M (H := H) ink_primitives.types.AccountId.
