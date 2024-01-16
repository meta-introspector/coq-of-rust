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

Module  Impl_core_default_Default_for_contract_terminate_AccountId_t.
Section Impl_core_default_Default_for_contract_terminate_AccountId_t.
  Definition Self : Set := contract_terminate.AccountId.t.
  
  (*
  Default
  *)
  Definition default : M contract_terminate.AccountId.t :=
    let* α0 : _ :=
      ltac:(M.get_method (fun ℐ =>
        core.default.Default.default (Self := u128.t) (Trait := ℐ))) in
    let* α1 : u128.t := M.call α0 in
    M.pure (contract_terminate.AccountId.Build_t α1).
  
  Axiom default_is_impl : impl Self "default" = default.
  
  Global Instance ℐ : core.default.Default.Trait Self := {
    core.default.Default.default := default;
  }.
End Impl_core_default_Default_for_contract_terminate_AccountId_t.
End Impl_core_default_Default_for_contract_terminate_AccountId_t.

Module  Impl_core_clone_Clone_for_contract_terminate_AccountId_t.
Section Impl_core_clone_Clone_for_contract_terminate_AccountId_t.
  Definition Self : Set := contract_terminate.AccountId.t.
  
  (*
  Clone
  *)
  Definition clone (self : ref Self) : M contract_terminate.AccountId.t :=
    let* self := M.alloc self in
    let* α0 : M.Val contract_terminate.AccountId.t :=
      match_operator
        (DeclaredButUndefinedVariable
          (A := core.clone.AssertParamIsClone.t u128.t))
        [
          fun γ =>
            (let* α0 : ref contract_terminate.AccountId.t := M.read self in
            M.pure (deref α0)) :
            M (M.Val contract_terminate.AccountId.t)
        ] in
    M.read α0.
  
  Axiom clone_is_impl : impl Self "clone" = clone.
  
  Global Instance ℐ : core.clone.Clone.Required.Trait Self := {
    core.clone.Clone.clone := clone;
    core.clone.Clone.clone_from := Datatypes.None;
  }.
End Impl_core_clone_Clone_for_contract_terminate_AccountId_t.
End Impl_core_clone_Clone_for_contract_terminate_AccountId_t.

Module  Impl_core_marker_Copy_for_contract_terminate_AccountId_t.
Section Impl_core_marker_Copy_for_contract_terminate_AccountId_t.
  Definition Self : Set := contract_terminate.AccountId.t.
  
  Global Instance ℐ : core.marker.Copy.Trait Self := {
  }.
End Impl_core_marker_Copy_for_contract_terminate_AccountId_t.
End Impl_core_marker_Copy_for_contract_terminate_AccountId_t.

Module  Env.
Section Env.
  Record t : Set := {
    caller : contract_terminate.AccountId.t;
  }.
  
  Definition Get_caller :=
    Ref.map (fun α => Some α.(caller)) (fun β α => Some (α <| caller := β |>)).
End Env.
End Env.

Module  Impl_contract_terminate_Env_t.
Section Impl_contract_terminate_Env_t.
  Definition Self : Set := contract_terminate.Env.t.
  
  (*
      fn caller(&self) -> AccountId {
          self.caller
      }
  *)
  Definition caller (self : ref Self) : M contract_terminate.AccountId.t :=
    let* self := M.alloc self in
    let* α0 : ref contract_terminate.Env.t := M.read self in
    M.read (contract_terminate.Env.Get_caller (deref α0)).
  
  Axiom caller_is_impl : impl Self "caller" = caller.
  
  (*
      fn terminate_contract(&self, _account: AccountId) {
          unimplemented!()
      }
  *)
  Definition terminate_contract
      (self : ref Self)
      (_account : contract_terminate.AccountId.t)
      : M unit :=
    let* self := M.alloc self in
    let* _account := M.alloc _account in
    let* α0 : ref str.t := M.read (mk_str "not implemented") in
    let* α1 : never.t := M.call (core.panicking.panic α0) in
    never_to_any α1.
  
  Axiom terminate_contract_is_impl :
      impl Self "terminate_contract" = terminate_contract.
End Impl_contract_terminate_Env_t.
End Impl_contract_terminate_Env_t.

Module  JustTerminate.
Section JustTerminate.
  Inductive t : Set := Build.
End JustTerminate.
End JustTerminate.

Module  Impl_contract_terminate_JustTerminate_t.
Section Impl_contract_terminate_JustTerminate_t.
  Definition Self : Set := contract_terminate.JustTerminate.t.
  
  (*
      fn init_env() -> Env {
          unimplemented!()
      }
  *)
  Definition init_env : M contract_terminate.Env.t :=
    let* α0 : ref str.t := M.read (mk_str "not implemented") in
    let* α1 : never.t := M.call (core.panicking.panic α0) in
    never_to_any α1.
  
  Axiom init_env_is_impl : impl Self "init_env" = init_env.
  
  (*
      fn env(&self) -> Env {
          Self::init_env()
      }
  *)
  Definition env (self : ref Self) : M contract_terminate.Env.t :=
    let* self := M.alloc self in
    M.call (impl contract_terminate.JustTerminate.t "init_env").
  
  Axiom env_is_impl : impl Self "env" = env.
  
  (*
      pub fn new() -> Self {
          Self {}
      }
  *)
  Definition new : M Self := M.pure contract_terminate.JustTerminate.Build.
  
  Axiom new_is_impl : impl Self "new" = new.
  
  (*
      pub fn terminate_me(&mut self) {
          self.env().terminate_contract(self.env().caller());
      }
  *)
  Definition terminate_me (self : mut_ref Self) : M unit :=
    let* self := M.alloc self in
    let* _ : M.Val unit :=
      let* α0 : mut_ref contract_terminate.JustTerminate.t := M.read self in
      let* α1 : contract_terminate.Env.t :=
        M.call
          (impl contract_terminate.JustTerminate.t "env" (borrow (deref α0))) in
      let* α2 : M.Val contract_terminate.Env.t := M.alloc α1 in
      let* α3 : mut_ref contract_terminate.JustTerminate.t := M.read self in
      let* α4 : contract_terminate.Env.t :=
        M.call
          (impl contract_terminate.JustTerminate.t "env" (borrow (deref α3))) in
      let* α5 : M.Val contract_terminate.Env.t := M.alloc α4 in
      let* α6 : contract_terminate.AccountId.t :=
        M.call (impl contract_terminate.Env.t "caller" (borrow α5)) in
      let* α7 : unit :=
        M.call
          (impl contract_terminate.Env.t "terminate_contract" (borrow α2) α6) in
      M.alloc α7 in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
  
  Axiom terminate_me_is_impl : impl Self "terminate_me" = terminate_me.
End Impl_contract_terminate_JustTerminate_t.
End Impl_contract_terminate_JustTerminate_t.
