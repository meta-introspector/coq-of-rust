(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  AccountId.
Section AccountId.
  Record t : Set := {
    x0 : u128.t;
  }.
  
  Definition Get_0 :=
    Ref.map (fun α => Some α.(x0)) (fun β α => Some (α <| x0 := β |>)).
End AccountId.
End AccountId.

Module  Impl_core_default_Default_for_call_builder_AccountId_t.
Section Impl_core_default_Default_for_call_builder_AccountId_t.
  Definition Self : Set := call_builder.AccountId.t.
  
  (*
  Default
  *)
  Parameter default : M call_builder.AccountId.t.
  
  Global Instance AssociatedFunction_default :
    Notations.DoubleColon Self "default" := {
    Notations.double_colon := default;
  }.
  
  Global Instance ℐ : core.default.Default.Trait Self := {
    core.default.Default.default := default;
  }.
End Impl_core_default_Default_for_call_builder_AccountId_t.
End Impl_core_default_Default_for_call_builder_AccountId_t.

Module  Impl_core_clone_Clone_for_call_builder_AccountId_t.
Section Impl_core_clone_Clone_for_call_builder_AccountId_t.
  Definition Self : Set := call_builder.AccountId.t.
  
  (*
  Clone
  *)
  Parameter clone : (ref Self) -> M call_builder.AccountId.t.
  
  Global Instance AssociatedFunction_clone :
    Notations.DoubleColon Self "clone" := {
    Notations.double_colon := clone;
  }.
  
  Global Instance ℐ : core.clone.Clone.Required.Trait Self := {
    core.clone.Clone.clone := clone;
    core.clone.Clone.clone_from := Datatypes.None;
  }.
End Impl_core_clone_Clone_for_call_builder_AccountId_t.
End Impl_core_clone_Clone_for_call_builder_AccountId_t.

Module  Impl_core_marker_Copy_for_call_builder_AccountId_t.
Section Impl_core_marker_Copy_for_call_builder_AccountId_t.
  Definition Self : Set := call_builder.AccountId.t.
  
  Global Instance ℐ : core.marker.Copy.Trait Self := {
  }.
End Impl_core_marker_Copy_for_call_builder_AccountId_t.
End Impl_core_marker_Copy_for_call_builder_AccountId_t.

Ltac Balance := exact u128.t.

Ltac Hash := exact (array u8.t).

Module LangError.
  Inductive t : Set :=
  | CouldNotReadInput
  | AnotherError.
End LangError.

Module  Selector.
Section Selector.
  Inductive t : Set := Build.
End Selector.
End Selector.

Module  Impl_call_builder_Selector_t.
Section Impl_call_builder_Selector_t.
  Definition Self : Set := call_builder.Selector.t.
  
  (*
      fn new(bytes: [u8; 4]) -> Self {
          unimplemented!()
      }
  *)
  Parameter new : (array u8.t) -> M Self.
  
  Global Instance AssociatedFunction_new : Notations.DoubleColon Self "new" := {
    Notations.double_colon := new;
  }.
End Impl_call_builder_Selector_t.
End Impl_call_builder_Selector_t.

Module  CallBuilderTest.
Section CallBuilderTest.
  Inductive t : Set := Build.
End CallBuilderTest.
End CallBuilderTest.

Module  Impl_core_default_Default_for_call_builder_CallBuilderTest_t.
Section Impl_core_default_Default_for_call_builder_CallBuilderTest_t.
  Definition Self : Set := call_builder.CallBuilderTest.t.
  
  (*
  Default
  *)
  Parameter default : M call_builder.CallBuilderTest.t.
  
  Global Instance AssociatedFunction_default :
    Notations.DoubleColon Self "default" := {
    Notations.double_colon := default;
  }.
  
  Global Instance ℐ : core.default.Default.Trait Self := {
    core.default.Default.default := default;
  }.
End Impl_core_default_Default_for_call_builder_CallBuilderTest_t.
End Impl_core_default_Default_for_call_builder_CallBuilderTest_t.

Module  Impl_call_builder_CallBuilderTest_t.
Section Impl_call_builder_CallBuilderTest_t.
  Definition Self : Set := call_builder.CallBuilderTest.t.
  
  (*
      pub fn new() -> Self {
          Default::default()
      }
  *)
  Parameter new : M Self.
  
  Global Instance AssociatedFunction_new : Notations.DoubleColon Self "new" := {
    Notations.double_colon := new;
  }.
  
  (*
      pub fn call(&mut self, address: AccountId, selector: [u8; 4]) -> Option<LangError> {
          // let result = build_call::<DefaultEnvironment>()
          //     .call(address)
          //     .exec_input(ExecutionInput::new(Selector::new(selector)))
          //     .returns::<()>()
          //     .try_invoke()
          //     .expect("Error from the Contracts pallet.");
          let result: Result<(), LangError> = todo!();
  
          match result {
              Ok(_) => None,
              Err(e @ LangError::CouldNotReadInput) => Some(e),
              Err(_) => {
                  unimplemented!("No other `LangError` variants exist at the moment.")
              }
          }
      }
  *)
  Parameter call :
      (mut_ref Self) ->
        call_builder.AccountId.t ->
        (array u8.t) ->
        M (core.option.Option.t call_builder.LangError.t).
  
  Global Instance AssociatedFunction_call :
    Notations.DoubleColon Self "call" := {
    Notations.double_colon := call;
  }.
  
  (*
      pub fn invoke(&mut self, address: AccountId, selector: [u8; 4]) {
          // use ink::env::call::build_call;
  
          // build_call::<DefaultEnvironment>()
          //     .call(address)
          //     .exec_input(ExecutionInput::new(Selector::new(selector)))
          //     .returns::<()>()
          //     .invoke()
      }
  *)
  Parameter invoke :
      (mut_ref Self) -> call_builder.AccountId.t -> (array u8.t) -> M unit.
  
  Global Instance AssociatedFunction_invoke :
    Notations.DoubleColon Self "invoke" := {
    Notations.double_colon := invoke;
  }.
  
  (*
      pub fn call_instantiate(
          &mut self,
          code_hash: Hash,
          selector: [u8; 4],
          init_value: bool,
      ) -> Option<LangError> {
          // let mut params = ConstructorsReturnValueRef::new(init_value)
          //     .code_hash(code_hash)
          //     .gas_limit(0)
          //     .endowment(0)
          //     .salt_bytes(&[0xDE, 0xAD, 0xBE, 0xEF])
          //     .params();
  
          // params.update_selector(Selector::new(selector));
  
          // let result = params
          //     .try_instantiate()
          //     .expect("Error from the Contracts pallet.");
  
          // match result {
          //     Ok(_) => None,
          //     Err(e @ LangError::CouldNotReadInput) => Some(e),
          //     Err(_) => {
          //         unimplemented!("No other `LangError` variants exist at the moment.")
          //     }
          // }
          None
      }
  *)
  Parameter call_instantiate :
      (mut_ref Self) ->
        ltac:(call_builder.Hash) ->
        (array u8.t) ->
        bool.t ->
        M (core.option.Option.t call_builder.LangError.t).
  
  Global Instance AssociatedFunction_call_instantiate :
    Notations.DoubleColon Self "call_instantiate" := {
    Notations.double_colon := call_instantiate;
  }.
  
  (*
      pub fn call_instantiate_fallible(
          &mut self,
          code_hash: Hash,
          selector: [u8; 4],
          init_value: bool,
          // ) -> Option<Result<Result<AccountId, constructors_return_value::ConstructorError>, LangError>>
      ) -> Option<()> {
          // let mut params = ConstructorsReturnValueRef::try_new(init_value)
          //     .code_hash(code_hash)
          //     .gas_limit(0)
          //     .endowment(0)
          //     .salt_bytes(&[0xDE, 0xAD, 0xBE, 0xEF])
          //     .params();
  
          // params.update_selector(Selector::new(selector));
  
          // let lang_result = params
          //     .try_instantiate()
          //     .expect("Error from the Contracts pallet.");
  
          // Some(lang_result.map(|contract_result| {
          //     contract_result.map(|inner| ink::ToAccountId::to_account_id(&inner))
          // }))
          None
      }
  *)
  Parameter call_instantiate_fallible :
      (mut_ref Self) ->
        ltac:(call_builder.Hash) ->
        (array u8.t) ->
        bool.t ->
        M (core.option.Option.t unit).
  
  Global Instance AssociatedFunction_call_instantiate_fallible :
    Notations.DoubleColon Self "call_instantiate_fallible" := {
    Notations.double_colon := call_instantiate_fallible;
  }.
End Impl_call_builder_CallBuilderTest_t.
End Impl_call_builder_CallBuilderTest_t.
