(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Mapping.
Section Mapping.
  Context (K V : Set).
  
  Record t : Set := {
    _key : core.marker.PhantomData.t K;
    _value : core.marker.PhantomData.t V;
  }.
  
  Global Instance Get__key : Notations.Dot "_key" := {
    Notations.dot := Ref.map (fun x => x.(_key)) (fun v x => x <| _key := v |>);
  }.
  Global Instance Get_AF__key : Notations.DoubleColon t "_key" := {
    Notations.double_colon (x : M.Val t) := x.["_key"];
  }.
  Global Instance Get__value : Notations.Dot "_value" := {
    Notations.dot :=
      Ref.map (fun x => x.(_value)) (fun v x => x <| _value := v |>);
  }.
  Global Instance Get_AF__value : Notations.DoubleColon t "_value" := {
    Notations.double_colon (x : M.Val t) := x.["_value"];
  }.
End Mapping.
End Mapping.

Module  Impl_core_default_Default_for_erc20_Mapping_t_K_V.
Section Impl_core_default_Default_for_erc20_Mapping_t_K_V.
  Context {K V : Set}.
  
  Context
    {ℋ_0 : core.default.Default.Trait K}
    {ℋ_1 : core.default.Default.Trait V}.
  
  Ltac Self := exact (erc20.Mapping.t K V).
  
  (*
  Default
  *)
  Parameter default : M (erc20.Mapping.t K V).
  
  Global Instance AssociatedFunction_default :
    Notations.DoubleColon ltac:(Self) "default" := {
    Notations.double_colon := default;
  }.
  
  Global Instance ℐ : core.default.Default.Trait ltac:(Self) := {
    core.default.Default.default := default;
  }.
End Impl_core_default_Default_for_erc20_Mapping_t_K_V.
End Impl_core_default_Default_for_erc20_Mapping_t_K_V.

Module  Impl_erc20_Mapping_t_K_V.
Section Impl_erc20_Mapping_t_K_V.
  Context {K V : Set}.
  
  Ltac Self := exact (erc20.Mapping.t K V).
  
  (*
      fn get(&self, _key: &K) -> Option<V> {
          unimplemented!()
      }
  *)
  Parameter get : (ref ltac:(Self)) -> (ref K) -> M (core.option.Option.t V).
  
  Global Instance AssociatedFunction_get :
    Notations.DoubleColon ltac:(Self) "get" := {
    Notations.double_colon := get;
  }.
  
  (*
      fn insert(&mut self, _key: K, _value: V) {
          unimplemented!()
      }
  *)
  Parameter insert : (mut_ref ltac:(Self)) -> K -> V -> M unit.
  
  Global Instance AssociatedFunction_insert :
    Notations.DoubleColon ltac:(Self) "insert" := {
    Notations.double_colon := insert;
  }.
End Impl_erc20_Mapping_t_K_V.
End Impl_erc20_Mapping_t_K_V.

Module  AccountId.
Section AccountId.
  Record t : Set := {
    x0 : u128.t;
  }.
  
  Global Instance Get_0 : Notations.Dot "0" := {
    Notations.dot := Ref.map (fun x => x.(x0)) (fun v x => x <| x0 := v |>);
  }.
End AccountId.
End AccountId.

Module  Impl_core_default_Default_for_erc20_AccountId_t.
Section Impl_core_default_Default_for_erc20_AccountId_t.
  Ltac Self := exact erc20.AccountId.t.
  
  (*
  Default
  *)
  Parameter default : M erc20.AccountId.t.
  
  Global Instance AssociatedFunction_default :
    Notations.DoubleColon ltac:(Self) "default" := {
    Notations.double_colon := default;
  }.
  
  Global Instance ℐ : core.default.Default.Trait ltac:(Self) := {
    core.default.Default.default := default;
  }.
End Impl_core_default_Default_for_erc20_AccountId_t.
End Impl_core_default_Default_for_erc20_AccountId_t.

Module  Impl_core_clone_Clone_for_erc20_AccountId_t.
Section Impl_core_clone_Clone_for_erc20_AccountId_t.
  Ltac Self := exact erc20.AccountId.t.
  
  (*
  Clone
  *)
  Parameter clone : (ref ltac:(Self)) -> M erc20.AccountId.t.
  
  Global Instance AssociatedFunction_clone :
    Notations.DoubleColon ltac:(Self) "clone" := {
    Notations.double_colon := clone;
  }.
  
  Global Instance ℐ : core.clone.Clone.Required.Trait ltac:(Self) := {
    core.clone.Clone.clone := clone;
    core.clone.Clone.clone_from := Datatypes.None;
  }.
End Impl_core_clone_Clone_for_erc20_AccountId_t.
End Impl_core_clone_Clone_for_erc20_AccountId_t.

Module  Impl_core_marker_Copy_for_erc20_AccountId_t.
Section Impl_core_marker_Copy_for_erc20_AccountId_t.
  Ltac Self := exact erc20.AccountId.t.
  
  Global Instance ℐ : core.marker.Copy.Trait ltac:(Self) := {
  }.
End Impl_core_marker_Copy_for_erc20_AccountId_t.
End Impl_core_marker_Copy_for_erc20_AccountId_t.

Ltac Balance := exact u128.t.

Module  Env.
Section Env.
  Record t : Set := {
    caller : erc20.AccountId.t;
  }.
  
  Global Instance Get_caller : Notations.Dot "caller" := {
    Notations.dot :=
      Ref.map (fun x => x.(caller)) (fun v x => x <| caller := v |>);
  }.
  Global Instance Get_AF_caller : Notations.DoubleColon t "caller" := {
    Notations.double_colon (x : M.Val t) := x.["caller"];
  }.
End Env.
End Env.

Module  Erc20.
Section Erc20.
  Record t : Set := {
    total_supply : ltac:(erc20.Balance);
    balances : erc20.Mapping.t erc20.AccountId.t ltac:(erc20.Balance);
    allowances :
      erc20.Mapping.t
        (erc20.AccountId.t * erc20.AccountId.t)
        ltac:(erc20.Balance);
  }.
  
  Global Instance Get_total_supply : Notations.Dot "total_supply" := {
    Notations.dot :=
      Ref.map
        (fun x => x.(total_supply))
        (fun v x => x <| total_supply := v |>);
  }.
  Global Instance Get_AF_total_supply :
    Notations.DoubleColon t "total_supply" := {
    Notations.double_colon (x : M.Val t) := x.["total_supply"];
  }.
  Global Instance Get_balances : Notations.Dot "balances" := {
    Notations.dot :=
      Ref.map (fun x => x.(balances)) (fun v x => x <| balances := v |>);
  }.
  Global Instance Get_AF_balances : Notations.DoubleColon t "balances" := {
    Notations.double_colon (x : M.Val t) := x.["balances"];
  }.
  Global Instance Get_allowances : Notations.Dot "allowances" := {
    Notations.dot :=
      Ref.map (fun x => x.(allowances)) (fun v x => x <| allowances := v |>);
  }.
  Global Instance Get_AF_allowances : Notations.DoubleColon t "allowances" := {
    Notations.double_colon (x : M.Val t) := x.["allowances"];
  }.
End Erc20.
End Erc20.

Module  Impl_core_default_Default_for_erc20_Erc20_t.
Section Impl_core_default_Default_for_erc20_Erc20_t.
  Ltac Self := exact erc20.Erc20.t.
  
  (*
  Default
  *)
  Parameter default : M erc20.Erc20.t.
  
  Global Instance AssociatedFunction_default :
    Notations.DoubleColon ltac:(Self) "default" := {
    Notations.double_colon := default;
  }.
  
  Global Instance ℐ : core.default.Default.Trait ltac:(Self) := {
    core.default.Default.default := default;
  }.
End Impl_core_default_Default_for_erc20_Erc20_t.
End Impl_core_default_Default_for_erc20_Erc20_t.

Module  Transfer.
Section Transfer.
  Record t : Set := {
    from : core.option.Option.t erc20.AccountId.t;
    to : core.option.Option.t erc20.AccountId.t;
    value : ltac:(erc20.Balance);
  }.
  
  Global Instance Get_from : Notations.Dot "from" := {
    Notations.dot := Ref.map (fun x => x.(from)) (fun v x => x <| from := v |>);
  }.
  Global Instance Get_AF_from : Notations.DoubleColon t "from" := {
    Notations.double_colon (x : M.Val t) := x.["from"];
  }.
  Global Instance Get_to : Notations.Dot "to" := {
    Notations.dot := Ref.map (fun x => x.(to)) (fun v x => x <| to := v |>);
  }.
  Global Instance Get_AF_to : Notations.DoubleColon t "to" := {
    Notations.double_colon (x : M.Val t) := x.["to"];
  }.
  Global Instance Get_value : Notations.Dot "value" := {
    Notations.dot :=
      Ref.map (fun x => x.(value)) (fun v x => x <| value := v |>);
  }.
  Global Instance Get_AF_value : Notations.DoubleColon t "value" := {
    Notations.double_colon (x : M.Val t) := x.["value"];
  }.
End Transfer.
End Transfer.

Module  Approval.
Section Approval.
  Record t : Set := {
    owner : erc20.AccountId.t;
    spender : erc20.AccountId.t;
    value : ltac:(erc20.Balance);
  }.
  
  Global Instance Get_owner : Notations.Dot "owner" := {
    Notations.dot :=
      Ref.map (fun x => x.(owner)) (fun v x => x <| owner := v |>);
  }.
  Global Instance Get_AF_owner : Notations.DoubleColon t "owner" := {
    Notations.double_colon (x : M.Val t) := x.["owner"];
  }.
  Global Instance Get_spender : Notations.Dot "spender" := {
    Notations.dot :=
      Ref.map (fun x => x.(spender)) (fun v x => x <| spender := v |>);
  }.
  Global Instance Get_AF_spender : Notations.DoubleColon t "spender" := {
    Notations.double_colon (x : M.Val t) := x.["spender"];
  }.
  Global Instance Get_value : Notations.Dot "value" := {
    Notations.dot :=
      Ref.map (fun x => x.(value)) (fun v x => x <| value := v |>);
  }.
  Global Instance Get_AF_value : Notations.DoubleColon t "value" := {
    Notations.double_colon (x : M.Val t) := x.["value"];
  }.
End Approval.
End Approval.

Module Error.
  Inductive t : Set :=
  | InsufficientBalance
  | InsufficientAllowance.
End Error.

Ltac Result T := exact (core.result.Result.t T erc20.Error.t).

Module  Impl_erc20_Env_t.
Section Impl_erc20_Env_t.
  Ltac Self := exact erc20.Env.t.
  
  (*
      fn caller(&self) -> AccountId {
          self.caller
      }
  *)
  Parameter caller : (ref ltac:(Self)) -> M erc20.AccountId.t.
  
  Global Instance AssociatedFunction_caller :
    Notations.DoubleColon ltac:(Self) "caller" := {
    Notations.double_colon := caller;
  }.
  
  (*
      fn emit_event<Event>(&self, _event: Event) {
          unimplemented!()
      }
  *)
  Parameter emit_event :
      forall {Event : Set},
      (ref ltac:(Self)) -> Event -> M unit.
  
  Global Instance AssociatedFunction_emit_event {Event : Set} :
    Notations.DoubleColon ltac:(Self) "emit_event" := {
    Notations.double_colon := emit_event (Event := Event);
  }.
End Impl_erc20_Env_t.
End Impl_erc20_Env_t.

Module  Impl_erc20_Erc20_t.
Section Impl_erc20_Erc20_t.
  Ltac Self := exact erc20.Erc20.t.
  
  (*
      fn init_env() -> Env {
          unimplemented!()
      }
  *)
  Parameter init_env : M erc20.Env.t.
  
  Global Instance AssociatedFunction_init_env :
    Notations.DoubleColon ltac:(Self) "init_env" := {
    Notations.double_colon := init_env;
  }.
  
  (*
      fn env(&self) -> Env {
          Self::init_env()
      }
  *)
  Parameter env : (ref ltac:(Self)) -> M erc20.Env.t.
  
  Global Instance AssociatedFunction_env :
    Notations.DoubleColon ltac:(Self) "env" := {
    Notations.double_colon := env;
  }.
End Impl_erc20_Erc20_t.
End Impl_erc20_Erc20_t.

Module  Impl_erc20_Erc20_t_2.
Section Impl_erc20_Erc20_t_2.
  Ltac Self := exact erc20.Erc20.t.
  
  (*
      fn new(total_supply: Balance) -> Self {
          let mut balances = Mapping::default();
          let caller = Self::init_env().caller();
          balances.insert(caller, total_supply);
          Self::init_env().emit_event(Transfer {
              from: None,
              to: Some(caller),
              value: total_supply,
          });
          Self {
              total_supply,
              balances,
              allowances: Default::default(),
          }
      }
  *)
  Parameter new : ltac:(erc20.Balance) -> M ltac:(Self).
  
  Global Instance AssociatedFunction_new :
    Notations.DoubleColon ltac:(Self) "new" := {
    Notations.double_colon := new;
  }.
  
  (*
      fn total_supply(&self) -> Balance {
          self.total_supply
      }
  *)
  Parameter total_supply : (ref ltac:(Self)) -> M ltac:(erc20.Balance).
  
  Global Instance AssociatedFunction_total_supply :
    Notations.DoubleColon ltac:(Self) "total_supply" := {
    Notations.double_colon := total_supply;
  }.
  
  (*
      fn balance_of_impl(&self, owner: &AccountId) -> Balance {
          self.balances.get(owner).unwrap_or_default()
      }
  *)
  Parameter balance_of_impl :
      (ref ltac:(Self)) -> (ref erc20.AccountId.t) -> M ltac:(erc20.Balance).
  
  Global Instance AssociatedFunction_balance_of_impl :
    Notations.DoubleColon ltac:(Self) "balance_of_impl" := {
    Notations.double_colon := balance_of_impl;
  }.
  
  (*
      fn balance_of(&self, owner: AccountId) -> Balance {
          self.balance_of_impl(&owner)
      }
  *)
  Parameter balance_of :
      (ref ltac:(Self)) -> erc20.AccountId.t -> M ltac:(erc20.Balance).
  
  Global Instance AssociatedFunction_balance_of :
    Notations.DoubleColon ltac:(Self) "balance_of" := {
    Notations.double_colon := balance_of;
  }.
  
  (*
      fn allowance_impl(&self, owner: &AccountId, spender: &AccountId) -> Balance {
          self.allowances.get(&( *owner, *spender)).unwrap_or_default()
      }
  *)
  Parameter allowance_impl :
      (ref ltac:(Self)) ->
        (ref erc20.AccountId.t) ->
        (ref erc20.AccountId.t) ->
        M ltac:(erc20.Balance).
  
  Global Instance AssociatedFunction_allowance_impl :
    Notations.DoubleColon ltac:(Self) "allowance_impl" := {
    Notations.double_colon := allowance_impl;
  }.
  
  (*
      fn allowance(&self, owner: AccountId, spender: AccountId) -> Balance {
          self.allowance_impl(&owner, &spender)
      }
  *)
  Parameter allowance :
      (ref ltac:(Self)) ->
        erc20.AccountId.t ->
        erc20.AccountId.t ->
        M ltac:(erc20.Balance).
  
  Global Instance AssociatedFunction_allowance :
    Notations.DoubleColon ltac:(Self) "allowance" := {
    Notations.double_colon := allowance;
  }.
  
  (*
      fn transfer_from_to(&mut self, from: &AccountId, to: &AccountId, value: Balance) -> Result<()> {
          let from_balance = self.balance_of_impl(from);
          if from_balance < value {
              return Err(Error::InsufficientBalance);
          }
  
          self.balances.insert( *from, from_balance - value);
          let to_balance = self.balance_of_impl(to);
          self.balances.insert( *to, to_balance + value);
          self.env().emit_event(Transfer {
              from: Some( *from),
              to: Some( *to),
              value,
          });
          Ok(())
      }
  *)
  Parameter transfer_from_to :
      (mut_ref ltac:(Self)) ->
        (ref erc20.AccountId.t) ->
        (ref erc20.AccountId.t) ->
        ltac:(erc20.Balance) ->
        M ltac:(erc20.Result unit).
  
  Global Instance AssociatedFunction_transfer_from_to :
    Notations.DoubleColon ltac:(Self) "transfer_from_to" := {
    Notations.double_colon := transfer_from_to;
  }.
  
  (*
      fn transfer(&mut self, to: AccountId, value: Balance) -> Result<()> {
          let from = self.env().caller();
          self.transfer_from_to(&from, &to, value)
      }
  *)
  Parameter transfer :
      (mut_ref ltac:(Self)) ->
        erc20.AccountId.t ->
        ltac:(erc20.Balance) ->
        M ltac:(erc20.Result unit).
  
  Global Instance AssociatedFunction_transfer :
    Notations.DoubleColon ltac:(Self) "transfer" := {
    Notations.double_colon := transfer;
  }.
  
  (*
      fn approve(&mut self, spender: AccountId, value: Balance) -> Result<()> {
          let owner = self.env().caller();
          self.allowances.insert((owner, spender), value);
          self.env().emit_event(Approval {
              owner,
              spender,
              value,
          });
          Ok(())
      }
  *)
  Parameter approve :
      (mut_ref ltac:(Self)) ->
        erc20.AccountId.t ->
        ltac:(erc20.Balance) ->
        M ltac:(erc20.Result unit).
  
  Global Instance AssociatedFunction_approve :
    Notations.DoubleColon ltac:(Self) "approve" := {
    Notations.double_colon := approve;
  }.
  
  (*
      fn transfer_from(&mut self, from: AccountId, to: AccountId, value: Balance) -> Result<()> {
          let caller = self.env().caller();
          let allowance = self.allowance_impl(&from, &caller);
          if allowance < value {
              return Err(Error::InsufficientAllowance);
          }
          self.transfer_from_to(&from, &to, value)?;
          self.allowances.insert((from, caller), allowance - value);
          Ok(())
      }
  *)
  Parameter transfer_from :
      (mut_ref ltac:(Self)) ->
        erc20.AccountId.t ->
        erc20.AccountId.t ->
        ltac:(erc20.Balance) ->
        M ltac:(erc20.Result unit).
  
  Global Instance AssociatedFunction_transfer_from :
    Notations.DoubleColon ltac:(Self) "transfer_from" := {
    Notations.double_colon := transfer_from;
  }.
End Impl_erc20_Erc20_t_2.
End Impl_erc20_Erc20_t_2.
