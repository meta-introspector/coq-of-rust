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

Module  Impl_core_default_Default_for_updated_incrementer_AccountId_t.
Section Impl_core_default_Default_for_updated_incrementer_AccountId_t.
  Definition Self : Set := updated_incrementer.AccountId.t.
  
  (*
  Default
  *)
  Definition default : M updated_incrementer.AccountId.t :=
    let* α0 : M u128.t :=
      ltac:(M.get_method (fun ℐ =>
        core.default.Default.default (Self := u128.t) (Trait := ℐ))) in
    let* α1 : u128.t := M.call α0 in
    M.pure (updated_incrementer.AccountId.Build_t α1).
  
  Global Instance AssociatedFunction_default :
    Notations.DoubleColon Self "default" := {
    Notations.double_colon := default;
  }.
  
  Global Instance ℐ : core.default.Default.Trait Self := {
    core.default.Default.default := default;
  }.
End Impl_core_default_Default_for_updated_incrementer_AccountId_t.
End Impl_core_default_Default_for_updated_incrementer_AccountId_t.

Module  Impl_core_clone_Clone_for_updated_incrementer_AccountId_t.
Section Impl_core_clone_Clone_for_updated_incrementer_AccountId_t.
  Definition Self : Set := updated_incrementer.AccountId.t.
  
  (*
  Clone
  *)
  Definition clone (self : ref Self) : M updated_incrementer.AccountId.t :=
    let* self := M.alloc self in
    let* α0 : M.Val updated_incrementer.AccountId.t :=
      match_operator
        (DeclaredButUndefinedVariable
          (A := core.clone.AssertParamIsClone.t u128.t))
        [
          fun γ =>
            (let* α0 : ref updated_incrementer.AccountId.t := M.read self in
            M.pure (deref α0)) :
            M (M.Val updated_incrementer.AccountId.t)
        ] in
    M.read α0.
  
  Global Instance AssociatedFunction_clone :
    Notations.DoubleColon Self "clone" := {
    Notations.double_colon := clone;
  }.
  
  Global Instance ℐ : core.clone.Clone.Required.Trait Self := {
    core.clone.Clone.clone := clone;
    core.clone.Clone.clone_from := Datatypes.None;
  }.
End Impl_core_clone_Clone_for_updated_incrementer_AccountId_t.
End Impl_core_clone_Clone_for_updated_incrementer_AccountId_t.

Module  Impl_core_marker_Copy_for_updated_incrementer_AccountId_t.
Section Impl_core_marker_Copy_for_updated_incrementer_AccountId_t.
  Definition Self : Set := updated_incrementer.AccountId.t.
  
  Global Instance ℐ : core.marker.Copy.Trait Self := {
  }.
End Impl_core_marker_Copy_for_updated_incrementer_AccountId_t.
End Impl_core_marker_Copy_for_updated_incrementer_AccountId_t.

Ltac Hash := exact (array u8.t).

Module Error.
  Inductive t : Set :=
  .
End Error.

Module  Env.
Section Env.
  Record t : Set := {
    caller : updated_incrementer.AccountId.t;
  }.
  
  Definition Get_caller :=
    Ref.map (fun α => Some α.(caller)) (fun β α => Some (α <| caller := β |>)).
End Env.
End Env.

Module  Impl_updated_incrementer_Env_t.
Section Impl_updated_incrementer_Env_t.
  Definition Self : Set := updated_incrementer.Env.t.
  
  (*
      fn set_code_hash<E>(&self, code_hash: &E) -> Result<(), Error> {
          unimplemented!()
      }
  *)
  Definition set_code_hash
      {E : Set}
      (self : ref Self)
      (code_hash : ref E)
      : M (core.result.Result.t unit updated_incrementer.Error.t) :=
    let* self := M.alloc self in
    let* code_hash := M.alloc code_hash in
    let* α0 : ref str.t := M.read (mk_str "not implemented") in
    let* α1 : never.t := M.call (core.panicking.panic α0) in
    never_to_any α1.
  
  Global Instance AssociatedFunction_set_code_hash {E : Set} :
    Notations.DoubleColon Self "set_code_hash" := {
    Notations.double_colon := set_code_hash (E := E);
  }.
End Impl_updated_incrementer_Env_t.
End Impl_updated_incrementer_Env_t.

Module  Incrementer.
Section Incrementer.
  Record t : Set := {
    count : u32.t;
  }.
  
  Definition Get_count :=
    Ref.map (fun α => Some α.(count)) (fun β α => Some (α <| count := β |>)).
End Incrementer.
End Incrementer.

Module  Impl_updated_incrementer_Incrementer_t.
Section Impl_updated_incrementer_Incrementer_t.
  Definition Self : Set := updated_incrementer.Incrementer.t.
  
  (*
      fn init_env() -> Env {
          unimplemented!()
      }
  *)
  Definition init_env : M updated_incrementer.Env.t :=
    let* α0 : ref str.t := M.read (mk_str "not implemented") in
    let* α1 : never.t := M.call (core.panicking.panic α0) in
    never_to_any α1.
  
  Global Instance AssociatedFunction_init_env :
    Notations.DoubleColon Self "init_env" := {
    Notations.double_colon := init_env;
  }.
  
  (*
      fn env(&self) -> Env {
          Self::init_env()
      }
  *)
  Definition env (self : ref Self) : M updated_incrementer.Env.t :=
    let* self := M.alloc self in
    M.call updated_incrementer.Incrementer.t::["init_env"].
  
  Global Instance AssociatedFunction_env : Notations.DoubleColon Self "env" := {
    Notations.double_colon := env;
  }.
  
  (*
      pub fn new() -> Self {
          unreachable!("Constructors are not called when upgrading using `set_code_hash`.")
      }
  *)
  Definition new : M Self :=
    let* α0 : never.t :=
      M.call
        (core.panicking.unreachable_display
          (borrow
            (mk_str
              "Constructors are not called when upgrading using `set_code_hash`."))) in
    never_to_any α0.
  
  Global Instance AssociatedFunction_new : Notations.DoubleColon Self "new" := {
    Notations.double_colon := new;
  }.
  
  (*
      pub fn inc(&mut self) {
          self.count += 4;
          println!(
              "The new count is {}, it was modified using the updated `new_incrementer` code.",
              self.count
          );
      }
  *)
  Definition inc (self : mut_ref Self) : M unit :=
    let* self := M.alloc self in
    let* _ : M.Val unit :=
      let* β : M.Val u32.t :=
        let* α0 : mut_ref updated_incrementer.Incrementer.t := M.read self in
        M.pure (updated_incrementer.Incrementer.Get_count (deref α0)) in
      let* α0 := M.read β in
      let* α1 := BinOp.Panic.add α0 ((Integer.of_Z 4) : u32.t) in
      assign β α1 in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : ref str.t := M.read (mk_str "The new count is ") in
        let* α1 : ref str.t :=
          M.read
            (mk_str
              ", it was modified using the updated `new_incrementer` code.
") in
        let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
        let* α3 : mut_ref updated_incrementer.Incrementer.t := M.read self in
        let* α4 : core.fmt.rt.Argument.t :=
          M.call
            (core.fmt.rt.Argument.t::["new_display"]
              (borrow
                (updated_incrementer.Incrementer.Get_count (deref α3)))) in
        let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
        let* α6 : core.fmt.Arguments.t :=
          M.call
            (core.fmt.Arguments.t::["new_v1"]
              (pointer_coercion "Unsize" (borrow α2))
              (pointer_coercion "Unsize" (borrow α5))) in
        let* α7 : unit := M.call (std.io.stdio._print α6) in
        M.alloc α7 in
      M.alloc tt in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
  
  Global Instance AssociatedFunction_inc : Notations.DoubleColon Self "inc" := {
    Notations.double_colon := inc;
  }.
  
  (*
      pub fn get(&self) -> u32 {
          self.count
      }
  *)
  Definition get (self : ref Self) : M u32.t :=
    let* self := M.alloc self in
    let* α0 : ref updated_incrementer.Incrementer.t := M.read self in
    M.read (updated_incrementer.Incrementer.Get_count (deref α0)).
  
  Global Instance AssociatedFunction_get : Notations.DoubleColon Self "get" := {
    Notations.double_colon := get;
  }.
  
  (*
      pub fn set_code(&mut self, code_hash: Hash) {
          self.env().set_code_hash(&code_hash).unwrap_or_else(|err| {
              panic!("Failed to `set_code_hash` to {code_hash:?} due to {err:?}")
          });
          println!("Switched code hash to {:?}.", code_hash);
      }
  *)
  Definition set_code
      (self : mut_ref Self)
      (code_hash : ltac:(updated_incrementer.Hash))
      : M unit :=
    let* self := M.alloc self in
    let* code_hash := M.alloc code_hash in
    let* _ : M.Val unit :=
      let* α0 : mut_ref updated_incrementer.Incrementer.t := M.read self in
      let* α1 : updated_incrementer.Env.t :=
        M.call
          (updated_incrementer.Incrementer.t::["env"] (borrow (deref α0))) in
      let* α2 : M.Val updated_incrementer.Env.t := M.alloc α1 in
      let* α3 : core.result.Result.t unit updated_incrementer.Error.t :=
        M.call
          (updated_incrementer.Env.t::["set_code_hash"]
            (borrow α2)
            (borrow code_hash)) in
      let* α4 : unit :=
        M.call
          ((core.result.Result.t
                unit
                updated_incrementer.Error.t)::["unwrap_or_else"]
            α3
            (fun (α0 : updated_incrementer.Error.t) =>
              (let* α0 := M.alloc α0 in
              match_operator
                α0
                [
                  fun γ =>
                    (let* err := M.copy γ in
                    let* α0 : ref str.t :=
                      M.read
                        (mk_str
                          "Failed to `set_code_hash` to {code_hash:?} due to {err:?}") in
                    let* α1 : never.t :=
                      M.call (std.panicking.begin_panic α0) in
                    never_to_any α1) :
                    M unit
                ]) :
              M unit)) in
      M.alloc α4 in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : ref str.t := M.read (mk_str "Switched code hash to ") in
        let* α1 : ref str.t := M.read (mk_str ".
") in
        let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
        let* α3 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow code_hash)) in
        let* α4 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α3 ] in
        let* α5 : core.fmt.Arguments.t :=
          M.call
            (core.fmt.Arguments.t::["new_v1"]
              (pointer_coercion "Unsize" (borrow α2))
              (pointer_coercion "Unsize" (borrow α4))) in
        let* α6 : unit := M.call (std.io.stdio._print α5) in
        M.alloc α6 in
      M.alloc tt in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
  
  Global Instance AssociatedFunction_set_code :
    Notations.DoubleColon Self "set_code" := {
    Notations.double_colon := set_code;
  }.
End Impl_updated_incrementer_Incrementer_t.
End Impl_updated_incrementer_Incrementer_t.
