(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Mapping.
  Section Mapping.
    Context `{ℋ : State.Trait}.
    
    Context {K V : Set}.
    
    Unset Primitive Projections.
    Record t : Set := {
      _key : core.marker.PhantomData K;
      _value : core.marker.PhantomData V;
    }.
    Global Set Primitive Projections.
    
    #[refine] Global Instance Get__key : Notation.Dot "_key" := {
      Notation.dot x := let* x := M.read x in Pure x.(_key) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_AF__key : Notation.DoubleColon t "_key" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(_key) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get__value : Notation.Dot "_value" := {
      Notation.dot x := let* x := M.read x in Pure x.(_value) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_AF__value :
      Notation.DoubleColon t "_value" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(_value) : M _;
    }.
    Admitted.
  End Mapping.
End Mapping.
Definition Mapping (K V : Set) `{ℋ : State.Trait} : Set :=
  M.val (Mapping.t (K := K) (V := V)).

Module Impl_core_default_Default_for_lib_Mapping_K_V.
  Section Impl_core_default_Default_for_lib_Mapping_K_V.
    Context `{ℋ : State.Trait}.
    
    Context {K V : Set}.
    
    Context
      {ℋ_0 : core.default.Default.Trait K}
      {ℋ_1 : core.default.Default.Trait V}.
    Definition Self : Set := lib.Mapping K V.
    
    Definition default : M (lib.Mapping K V) :=
      let* α0 :=
        core.default.Default.default (Self := (core.marker.PhantomData K)) in
      let* α1 :=
        core.default.Default.default (Self := (core.marker.PhantomData V)) in
      M.alloc {| lib.Mapping._key := α0; lib.Mapping._value := α1; |}.
    
    Global Instance AssociatedFunction_default :
      Notation.DoubleColon Self "default" := {
      Notation.double_colon := default;
    }.
    
    #[refine] Global Instance ℐ : core.default.Default.Trait Self := {
      core.default.Default.default := default;
    }.
    Admitted.
  End Impl_core_default_Default_for_lib_Mapping_K_V.
  Global Hint Resolve ℐ : core.
End Impl_core_default_Default_for_lib_Mapping_K_V.

Module Impl_lib_Mapping_K_V.
  Section Impl_lib_Mapping_K_V.
    Context `{ℋ : State.Trait}.
    
    Context {K V : Set}.
    
    Definition Self : Set := lib.Mapping K V.
    
    Definition get
        (self : ref Self)
        (_key : ref K)
        : M (core.option.Option V) :=
      let* α0 := core.panicking.panic (mk_str "not implemented") in
      never_to_any α0.
    
    Global Instance AssociatedFunction_get :
      Notation.DoubleColon Self "get" := {
      Notation.double_colon := get;
    }.
    
    Definition insert (self : mut_ref Self) (_key : K) (_value : V) : M unit :=
      let* α0 := core.panicking.panic (mk_str "not implemented") in
      never_to_any α0.
    
    Global Instance AssociatedFunction_insert :
      Notation.DoubleColon Self "insert" := {
      Notation.double_colon := insert;
    }.
  End Impl_lib_Mapping_K_V.
End Impl_lib_Mapping_K_V.

Module AccountId.
  Section AccountId.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Record t : Set := {
      x0 : u64;
    }.
    Global Set Primitive Projections.
    
    #[refine] Global Instance Get_0 : Notation.Dot "0" := {
      Notation.dot x := let* x := M.read x in Pure x.(x0) : M _;
    }.
    Admitted.
  End AccountId.
End AccountId.
Definition AccountId `{ℋ : State.Trait} : Set := M.val AccountId.t.

Module Impl_core_default_Default_for_lib_AccountId.
  Section Impl_core_default_Default_for_lib_AccountId.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := lib.AccountId.
    
    Definition default : M lib.AccountId :=
      let* α0 := core.default.Default.default (Self := u64) in
      Pure (lib.AccountId.Build_t α0).
    
    Global Instance AssociatedFunction_default :
      Notation.DoubleColon Self "default" := {
      Notation.double_colon := default;
    }.
    
    #[refine] Global Instance ℐ : core.default.Default.Trait Self := {
      core.default.Default.default := default;
    }.
    Admitted.
  End Impl_core_default_Default_for_lib_AccountId.
  Global Hint Resolve ℐ : core.
End Impl_core_default_Default_for_lib_AccountId.

Module Balance.
  Section Balance.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Record t : Set := {
      x0 : u64;
    }.
    Global Set Primitive Projections.
    
    #[refine] Global Instance Get_0 : Notation.Dot "0" := {
      Notation.dot x := let* x := M.read x in Pure x.(x0) : M _;
    }.
    Admitted.
  End Balance.
End Balance.
Definition Balance `{ℋ : State.Trait} : Set := M.val Balance.t.

Module Impl_core_default_Default_for_lib_Balance.
  Section Impl_core_default_Default_for_lib_Balance.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := lib.Balance.
    
    Definition default : M lib.Balance :=
      let* α0 := core.default.Default.default (Self := u64) in
      Pure (lib.Balance.Build_t α0).
    
    Global Instance AssociatedFunction_default :
      Notation.DoubleColon Self "default" := {
      Notation.double_colon := default;
    }.
    
    #[refine] Global Instance ℐ : core.default.Default.Trait Self := {
      core.default.Default.default := default;
    }.
    Admitted.
  End Impl_core_default_Default_for_lib_Balance.
  Global Hint Resolve ℐ : core.
End Impl_core_default_Default_for_lib_Balance.

Module Impl_core_marker_StructuralPartialEq_for_lib_Balance.
  Section Impl_core_marker_StructuralPartialEq_for_lib_Balance.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := lib.Balance.
    
    #[refine] Global Instance ℐ :
      core.marker.StructuralPartialEq.Trait Self := {
    }.
    Admitted.
  End Impl_core_marker_StructuralPartialEq_for_lib_Balance.
  Global Hint Resolve ℐ : core.
End Impl_core_marker_StructuralPartialEq_for_lib_Balance.

Module Impl_core_cmp_PartialEq_for_lib_Balance.
  Section Impl_core_cmp_PartialEq_for_lib_Balance.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := lib.Balance.
    
    Definition eq (self : ref Self) (other : ref lib.Balance) : M bool :=
      let* α0 := deref self lib.Balance in
      let* α1 := α0.["0"] in
      let* α2 := deref other lib.Balance in
      let* α3 := α2.["0"] in
      eq α1 α3.
    
    Global Instance AssociatedFunction_eq : Notation.DoubleColon Self "eq" := {
      Notation.double_colon := eq;
    }.
    
    #[refine] Global Instance ℐ :
      core.cmp.PartialEq.Trait Self
        (Rhs := core.cmp.PartialEq.Default.Rhs Self) := {
      core.cmp.PartialEq.eq := eq;
    }.
    Admitted.
  End Impl_core_cmp_PartialEq_for_lib_Balance.
  Global Hint Resolve ℐ : core.
End Impl_core_cmp_PartialEq_for_lib_Balance.

Module Impl_core_cmp_PartialOrd_for_lib_Balance.
  Section Impl_core_cmp_PartialOrd_for_lib_Balance.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := lib.Balance.
    
    Definition partial_cmp
        (self : ref Self)
        (other : ref lib.Balance)
        : M (core.option.Option core.cmp.Ordering) :=
      let* α0 := deref self lib.Balance in
      let* α1 := α0.["0"] in
      let* α2 := borrow α1 u64 in
      let* α3 := deref α2 u64 in
      let* α4 := borrow α3 u64 in
      let* α5 := deref other lib.Balance in
      let* α6 := α5.["0"] in
      let* α7 := borrow α6 u64 in
      let* α8 := deref α7 u64 in
      let* α9 := borrow α8 u64 in
      (core.cmp.PartialOrd.partial_cmp (Self := u64)) α4 α9.
    
    Global Instance AssociatedFunction_partial_cmp :
      Notation.DoubleColon Self "partial_cmp" := {
      Notation.double_colon := partial_cmp;
    }.
    
    #[refine] Global Instance ℐ :
      core.cmp.PartialOrd.Trait Self
        (Rhs := core.cmp.PartialOrd.Default.Rhs Self) := {
      core.cmp.PartialOrd.partial_cmp := partial_cmp;
    }.
    Admitted.
  End Impl_core_cmp_PartialOrd_for_lib_Balance.
  Global Hint Resolve ℐ : core.
End Impl_core_cmp_PartialOrd_for_lib_Balance.

Module Impl_core_ops_arith_Add_for_lib_Balance.
  Section Impl_core_ops_arith_Add_for_lib_Balance.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := lib.Balance.
    
    Definition Output : Set := Self.
    
    Definition add (self : Self) (rhs : Self) : M Output :=
      let* α0 := self.["0"] in
      let* α1 := rhs.["0"] in
      let* α2 := add α0 α1 in
      Pure (lib.Balance.Build_t α2).
    
    Global Instance AssociatedFunction_add :
      Notation.DoubleColon Self "add" := {
      Notation.double_colon := add;
    }.
    
    #[refine] Global Instance ℐ :
      core.ops.arith.Add.Trait Self
        (Rhs := core.ops.arith.Add.Default.Rhs Self) := {
      core.ops.arith.Add.Output := Output;
      core.ops.arith.Add.add := add;
    }.
    Admitted.
  End Impl_core_ops_arith_Add_for_lib_Balance.
  Global Hint Resolve ℐ : core.
End Impl_core_ops_arith_Add_for_lib_Balance.

Module Impl_core_ops_arith_Sub_for_lib_Balance.
  Section Impl_core_ops_arith_Sub_for_lib_Balance.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := lib.Balance.
    
    Definition Output : Set := Self.
    
    Definition sub (self : Self) (rhs : Self) : M Output :=
      let* α0 := self.["0"] in
      let* α1 := rhs.["0"] in
      let* α2 := sub α0 α1 in
      Pure (lib.Balance.Build_t α2).
    
    Global Instance AssociatedFunction_sub :
      Notation.DoubleColon Self "sub" := {
      Notation.double_colon := sub;
    }.
    
    #[refine] Global Instance ℐ :
      core.ops.arith.Sub.Trait Self
        (Rhs := core.ops.arith.Sub.Default.Rhs Self) := {
      core.ops.arith.Sub.Output := Output;
      core.ops.arith.Sub.sub := sub;
    }.
    Admitted.
  End Impl_core_ops_arith_Sub_for_lib_Balance.
  Global Hint Resolve ℐ : core.
End Impl_core_ops_arith_Sub_for_lib_Balance.

Module Environment.
  Section Environment.
    Context `{ℋ : State.Trait}.
    
    Inductive t : Set := Build.
  End Environment.
End Environment.
Definition Environment := @Environment.t.

Module Event.
  Section Event.
    Context `{ℋ : State.Trait}.
    
    Inductive t : Set := Build.
  End Event.
End Event.
Definition Event := @Event.t.

Module Erc20.
  Section Erc20.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Record t : Set := {
      total_supply : lib.Balance;
      balances : lib.Mapping lib.AccountId lib.Balance;
      allowances : lib.Mapping (lib.AccountId * lib.AccountId) lib.Balance;
    }.
    Global Set Primitive Projections.
    
    #[refine] Global Instance Get_total_supply :
      Notation.Dot "total_supply" := {
      Notation.dot x := let* x := M.read x in Pure x.(total_supply) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_AF_total_supply :
      Notation.DoubleColon t "total_supply" := {
      Notation.double_colon x :=
        let* x := M.read x in Pure x.(total_supply) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_balances : Notation.Dot "balances" := {
      Notation.dot x := let* x := M.read x in Pure x.(balances) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_AF_balances :
      Notation.DoubleColon t "balances" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(balances) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_allowances : Notation.Dot "allowances" := {
      Notation.dot x := let* x := M.read x in Pure x.(allowances) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_AF_allowances :
      Notation.DoubleColon t "allowances" := {
      Notation.double_colon x :=
        let* x := M.read x in Pure x.(allowances) : M _;
    }.
    Admitted.
  End Erc20.
End Erc20.
Definition Erc20 `{ℋ : State.Trait} : Set := M.val Erc20.t.

Module Impl_core_default_Default_for_lib_Erc20.
  Section Impl_core_default_Default_for_lib_Erc20.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := lib.Erc20.
    
    Definition default : M lib.Erc20 :=
      let* α0 := core.default.Default.default (Self := lib.Balance) in
      let* α1 :=
        core.default.Default.default
          (Self := (lib.Mapping lib.AccountId lib.Balance)) in
      let* α2 :=
        core.default.Default.default
          (Self := (lib.Mapping (lib.AccountId * lib.AccountId) lib.Balance)) in
      M.alloc
        {|
          lib.Erc20.total_supply := α0;
          lib.Erc20.balances := α1;
          lib.Erc20.allowances := α2;
        |}.
    
    Global Instance AssociatedFunction_default :
      Notation.DoubleColon Self "default" := {
      Notation.double_colon := default;
    }.
    
    #[refine] Global Instance ℐ : core.default.Default.Trait Self := {
      core.default.Default.default := default;
    }.
    Admitted.
  End Impl_core_default_Default_for_lib_Erc20.
  Global Hint Resolve ℐ : core.
End Impl_core_default_Default_for_lib_Erc20.

Module Transfer.
  Section Transfer.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Record t : Set := {
      from : core.option.Option lib.AccountId;
      to : core.option.Option lib.AccountId;
      value : lib.Balance;
    }.
    Global Set Primitive Projections.
    
    #[refine] Global Instance Get_from : Notation.Dot "from" := {
      Notation.dot x := let* x := M.read x in Pure x.(from) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_AF_from : Notation.DoubleColon t "from" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(from) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_to : Notation.Dot "to" := {
      Notation.dot x := let* x := M.read x in Pure x.(to) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_AF_to : Notation.DoubleColon t "to" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(to) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_value : Notation.Dot "value" := {
      Notation.dot x := let* x := M.read x in Pure x.(value) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_AF_value : Notation.DoubleColon t "value" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(value) : M _;
    }.
    Admitted.
  End Transfer.
End Transfer.
Definition Transfer `{ℋ : State.Trait} : Set := M.val Transfer.t.

Module Impl_core_convert_Into_lib_Event_for_lib_Transfer.
  Section Impl_core_convert_Into_lib_Event_for_lib_Transfer.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := lib.Transfer.
    
    Definition into (self : Self) : M lib.Event :=
      let* α0 := core.panicking.panic (mk_str "not implemented") in
      never_to_any α0.
    
    Global Instance AssociatedFunction_into :
      Notation.DoubleColon Self "into" := {
      Notation.double_colon := into;
    }.
    
    #[refine] Global Instance ℐ :
      core.convert.Into.Trait Self (T := lib.Event) := {
      core.convert.Into.into := into;
    }.
    Admitted.
  End Impl_core_convert_Into_lib_Event_for_lib_Transfer.
  Global Hint Resolve ℐ : core.
End Impl_core_convert_Into_lib_Event_for_lib_Transfer.

Module Approval.
  Section Approval.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Record t : Set := {
      owner : lib.AccountId;
      spender : lib.AccountId;
      value : lib.Balance;
    }.
    Global Set Primitive Projections.
    
    #[refine] Global Instance Get_owner : Notation.Dot "owner" := {
      Notation.dot x := let* x := M.read x in Pure x.(owner) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_AF_owner : Notation.DoubleColon t "owner" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(owner) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_spender : Notation.Dot "spender" := {
      Notation.dot x := let* x := M.read x in Pure x.(spender) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_AF_spender :
      Notation.DoubleColon t "spender" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(spender) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_value : Notation.Dot "value" := {
      Notation.dot x := let* x := M.read x in Pure x.(value) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_AF_value : Notation.DoubleColon t "value" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(value) : M _;
    }.
    Admitted.
  End Approval.
End Approval.
Definition Approval `{ℋ : State.Trait} : Set := M.val Approval.t.

Module Impl_core_convert_Into_lib_Event_for_lib_Approval.
  Section Impl_core_convert_Into_lib_Event_for_lib_Approval.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := lib.Approval.
    
    Definition into (self : Self) : M lib.Event :=
      let* α0 := core.panicking.panic (mk_str "not implemented") in
      never_to_any α0.
    
    Global Instance AssociatedFunction_into :
      Notation.DoubleColon Self "into" := {
      Notation.double_colon := into;
    }.
    
    #[refine] Global Instance ℐ :
      core.convert.Into.Trait Self (T := lib.Event) := {
      core.convert.Into.into := into;
    }.
    Admitted.
  End Impl_core_convert_Into_lib_Event_for_lib_Approval.
  Global Hint Resolve ℐ : core.
End Impl_core_convert_Into_lib_Event_for_lib_Approval.

Module Error.
  Inductive t `{ℋ : State.Trait} : Set :=
  | InsufficientBalance
  | InsufficientAllowance.
End Error.
Definition Error `{ℋ : State.Trait} : Set := Error.t.

Ltac Result T := refine (core.result.Result T lib.Error).

Module Impl_lib_Environment.
  Section Impl_lib_Environment.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := lib.Environment.
    
    Definition caller (self : ref Self) : M lib.AccountId :=
      let* α0 := core.panicking.panic (mk_str "not implemented") in
      never_to_any α0.
    
    Global Instance AssociatedFunction_caller :
      Notation.DoubleColon Self "caller" := {
      Notation.double_colon := caller;
    }.
    
    Definition emit_event
        {E : Set}
        {ℋ_0 : core.convert.Into.Trait E (T := lib.Event)}
        (self : ref Self)
        (event : E)
        : M unit :=
      let* α0 := core.panicking.panic (mk_str "not implemented") in
      never_to_any α0.
    
    Global Instance AssociatedFunction_emit_event
        {E : Set}
        {ℋ_0 : core.convert.Into.Trait E (T := lib.Event)} :
      Notation.DoubleColon Self "emit_event" := {
      Notation.double_colon := emit_event (E := E);
    }.
  End Impl_lib_Environment.
End Impl_lib_Environment.

Module Impl_lib_Erc20.
  Section Impl_lib_Erc20.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := lib.Erc20.
    
    Definition init_env : M lib.Environment :=
      let* α0 := core.panicking.panic (mk_str "not implemented") in
      never_to_any α0.
    
    Global Instance AssociatedFunction_init_env :
      Notation.DoubleColon Self "init_env" := {
      Notation.double_colon := init_env;
    }.
    
    Definition env (self : ref Self) : M lib.Environment :=
      let* α0 := core.panicking.panic (mk_str "not implemented") in
      never_to_any α0.
    
    Global Instance AssociatedFunction_env :
      Notation.DoubleColon Self "env" := {
      Notation.double_colon := env;
    }.
  End Impl_lib_Erc20.
End Impl_lib_Erc20.

Module Impl_lib_Erc20_2.
  Section Impl_lib_Erc20_2.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := lib.Erc20.
    
    Definition new (total_supply : lib.Balance) : M Self :=
      let* balances :=
        core.default.Default.default
          (Self := (lib.Mapping lib.AccountId lib.Balance)) in
      let* caller :=
        let* α0 := lib.Erc20::["init_env"] in
        let* α1 := borrow α0 lib.Environment in
        lib.Environment::["caller"] α1 in
      let* _ :=
        let* α0 :=
          borrow_mut balances (lib.Mapping lib.AccountId lib.Balance) in
        (lib.Mapping K V)::["insert"] α0 caller total_supply in
      let* _ :=
        let* α0 := lib.Erc20::["init_env"] in
        let* α1 := borrow α0 lib.Environment in
        let* α2 :=
          M.alloc
            {|
              lib.Transfer.from := core.option.Option.None tt;
              lib.Transfer.to := core.option.Option.Some caller;
              lib.Transfer.value := total_supply;
            |} in
        lib.Environment::["emit_event"] α1 α2 in
      let* α0 :=
        core.default.Default.default
          (Self := (lib.Mapping (lib.AccountId * lib.AccountId) lib.Balance)) in
      M.alloc
        {|
          lib.Erc20.total_supply := total_supply;
          lib.Erc20.balances := balances;
          lib.Erc20.allowances := α0;
        |}.
    
    Global Instance AssociatedFunction_new :
      Notation.DoubleColon Self "new" := {
      Notation.double_colon := new;
    }.
    
    Definition total_supply (self : ref Self) : M lib.Balance :=
      let* α0 := deref self lib.Erc20 in
      α0.["total_supply"].
    
    Global Instance AssociatedFunction_total_supply :
      Notation.DoubleColon Self "total_supply" := {
      Notation.double_colon := total_supply;
    }.
    
    Definition balance_of
        (self : ref Self)
        (owner : lib.AccountId)
        : M lib.Balance :=
      let* α0 := deref self lib.Erc20 in
      let* α1 := borrow α0 lib.Erc20 in
      let* α2 := borrow owner lib.AccountId in
      let* α3 := deref α2 lib.AccountId in
      let* α4 := borrow α3 lib.AccountId in
      lib.Erc20::["balance_of_impl"] α1 α4.
    
    Global Instance AssociatedFunction_balance_of :
      Notation.DoubleColon Self "balance_of" := {
      Notation.double_colon := balance_of;
    }.
    
    Definition balance_of_impl
        (self : ref Self)
        (owner : ref lib.AccountId)
        : M lib.Balance :=
      let* α0 := deref self lib.Erc20 in
      let* α1 := α0.["balances"] in
      let* α2 := borrow α1 (lib.Mapping lib.AccountId lib.Balance) in
      let* α3 := deref owner lib.AccountId in
      let* α4 := borrow α3 lib.AccountId in
      let* α5 := (lib.Mapping K V)::["get"] α2 α4 in
      (core.option.Option T)::["unwrap_or_default"] α5.
    
    Global Instance AssociatedFunction_balance_of_impl :
      Notation.DoubleColon Self "balance_of_impl" := {
      Notation.double_colon := balance_of_impl;
    }.
    
    Definition allowance
        (self : ref Self)
        (owner : lib.AccountId)
        (spender : lib.AccountId)
        : M lib.Balance :=
      let* α0 := deref self lib.Erc20 in
      let* α1 := borrow α0 lib.Erc20 in
      let* α2 := borrow owner lib.AccountId in
      let* α3 := deref α2 lib.AccountId in
      let* α4 := borrow α3 lib.AccountId in
      let* α5 := borrow spender lib.AccountId in
      let* α6 := deref α5 lib.AccountId in
      let* α7 := borrow α6 lib.AccountId in
      lib.Erc20::["allowance_impl"] α1 α4 α7.
    
    Global Instance AssociatedFunction_allowance :
      Notation.DoubleColon Self "allowance" := {
      Notation.double_colon := allowance;
    }.
    
    Definition allowance_impl
        (self : ref Self)
        (owner : ref lib.AccountId)
        (spender : ref lib.AccountId)
        : M lib.Balance :=
      let* α0 := deref self lib.Erc20 in
      let* α1 := α0.["allowances"] in
      let* α2 :=
        borrow α1 (lib.Mapping (lib.AccountId * lib.AccountId) lib.Balance) in
      let* α3 := deref owner lib.AccountId in
      let* α4 := deref spender lib.AccountId in
      let* α5 := borrow (α3, α4) (lib.AccountId * lib.AccountId) in
      let* α6 := deref α5 (lib.AccountId * lib.AccountId) in
      let* α7 := borrow α6 (lib.AccountId * lib.AccountId) in
      let* α8 := (lib.Mapping K V)::["get"] α2 α7 in
      (core.option.Option T)::["unwrap_or_default"] α8.
    
    Global Instance AssociatedFunction_allowance_impl :
      Notation.DoubleColon Self "allowance_impl" := {
      Notation.double_colon := allowance_impl;
    }.
    
    Definition transfer
        (self : mut_ref Self)
        (to : lib.AccountId)
        (value : lib.Balance)
        : M ltac:(lib.Result constr:(unit)) :=
      let* from :=
        let* α0 := deref self lib.Erc20 in
        let* α1 := borrow α0 lib.Erc20 in
        let* α2 := lib.Erc20::["env"] α1 in
        let* α3 := borrow α2 lib.Environment in
        lib.Environment::["caller"] α3 in
      let* α0 := deref self lib.Erc20 in
      let* α1 := borrow_mut α0 lib.Erc20 in
      let* α2 := borrow from lib.AccountId in
      let* α3 := deref α2 lib.AccountId in
      let* α4 := borrow α3 lib.AccountId in
      let* α5 := borrow to lib.AccountId in
      let* α6 := deref α5 lib.AccountId in
      let* α7 := borrow α6 lib.AccountId in
      lib.Erc20::["transfer_from_to"] α1 α4 α7 value.
    
    Global Instance AssociatedFunction_transfer :
      Notation.DoubleColon Self "transfer" := {
      Notation.double_colon := transfer;
    }.
    
    Definition approve
        (self : mut_ref Self)
        (spender : lib.AccountId)
        (value : lib.Balance)
        : M ltac:(lib.Result constr:(unit)) :=
      let* owner :=
        let* α0 := deref self lib.Erc20 in
        let* α1 := borrow α0 lib.Erc20 in
        let* α2 := lib.Erc20::["env"] α1 in
        let* α3 := borrow α2 lib.Environment in
        lib.Environment::["caller"] α3 in
      let* _ :=
        let* α0 := deref self lib.Erc20 in
        let* α1 := α0.["allowances"] in
        let* α2 :=
          borrow_mut
            α1
            (lib.Mapping (lib.AccountId * lib.AccountId) lib.Balance) in
        (lib.Mapping K V)::["insert"] α2 (owner, spender) value in
      let* _ :=
        let* α0 := deref self lib.Erc20 in
        let* α1 := borrow α0 lib.Erc20 in
        let* α2 := lib.Erc20::["env"] α1 in
        let* α3 := borrow α2 lib.Environment in
        let* α4 :=
          M.alloc
            {|
              lib.Approval.owner := owner;
              lib.Approval.spender := spender;
              lib.Approval.value := value;
            |} in
        lib.Environment::["emit_event"] α3 α4 in
      let* α0 := M.alloc tt in
      Pure (core.result.Result.Ok α0).
    
    Global Instance AssociatedFunction_approve :
      Notation.DoubleColon Self "approve" := {
      Notation.double_colon := approve;
    }.
    
    Definition transfer_from
        (self : mut_ref Self)
        (from : lib.AccountId)
        (to : lib.AccountId)
        (value : lib.Balance)
        : M ltac:(lib.Result constr:(unit)) :=
      let* caller :=
        let* α0 := deref self lib.Erc20 in
        let* α1 := borrow α0 lib.Erc20 in
        let* α2 := lib.Erc20::["env"] α1 in
        let* α3 := borrow α2 lib.Environment in
        lib.Environment::["caller"] α3 in
      let* allowance :=
        let* α0 := deref self lib.Erc20 in
        let* α1 := borrow α0 lib.Erc20 in
        let* α2 := borrow from lib.AccountId in
        let* α3 := deref α2 lib.AccountId in
        let* α4 := borrow α3 lib.AccountId in
        let* α5 := borrow caller lib.AccountId in
        let* α6 := deref α5 lib.AccountId in
        let* α7 := borrow α6 lib.AccountId in
        lib.Erc20::["allowance_impl"] α1 α4 α7 in
      let* _ :=
        let* α0 := borrow allowance lib.Balance in
        let* α1 := borrow value lib.Balance in
        let* α2 := (core.cmp.PartialOrd.lt (Self := lib.Balance)) α0 α1 in
        let* α3 := use α2 in
        if (α3 : bool) then
          let* _ :=
            Return
              (core.result.Result.Err (lib.Error.InsufficientAllowance tt)) in
          let* α0 := M.alloc tt in
          never_to_any α0
        else
          M.alloc tt in
      let* _ :=
        let* α0 := deref self lib.Erc20 in
        let* α1 := borrow_mut α0 lib.Erc20 in
        let* α2 := borrow from lib.AccountId in
        let* α3 := deref α2 lib.AccountId in
        let* α4 := borrow α3 lib.AccountId in
        let* α5 := borrow to lib.AccountId in
        let* α6 := deref α5 lib.AccountId in
        let* α7 := borrow α6 lib.AccountId in
        let* α8 := lib.Erc20::["transfer_from_to"] α1 α4 α7 value in
        let* α9 :=
          (core.ops.try_trait.Try.branch
              (Self := (core.result.Result unit lib.Error)))
            α8 in
        match α9 with
        | core.ops.control_flow.ControlFlow residual =>
          let* α0 :=
            (core.ops.try_trait.FromResidual.from_residual
                (Self := (core.result.Result unit lib.Error)))
              residual in
          let* α1 := Return α0 in
          never_to_any α1
        | core.ops.control_flow.ControlFlow val => Pure val
        end in
      let* _ :=
        let* α0 := deref self lib.Erc20 in
        let* α1 := α0.["allowances"] in
        let* α2 :=
          borrow_mut
            α1
            (lib.Mapping (lib.AccountId * lib.AccountId) lib.Balance) in
        let* α3 :=
          (core.ops.arith.Sub.sub (Self := lib.Balance)) allowance value in
        (lib.Mapping K V)::["insert"] α2 (from, caller) α3 in
      let* α0 := M.alloc tt in
      Pure (core.result.Result.Ok α0).
    
    Global Instance AssociatedFunction_transfer_from :
      Notation.DoubleColon Self "transfer_from" := {
      Notation.double_colon := transfer_from;
    }.
    
    Definition transfer_from_to
        (self : mut_ref Self)
        (from : ref lib.AccountId)
        (to : ref lib.AccountId)
        (value : lib.Balance)
        : M ltac:(lib.Result constr:(unit)) :=
      let* from_balance :=
        let* α0 := deref self lib.Erc20 in
        let* α1 := borrow α0 lib.Erc20 in
        let* α2 := deref from lib.AccountId in
        let* α3 := borrow α2 lib.AccountId in
        lib.Erc20::["balance_of_impl"] α1 α3 in
      let* _ :=
        let* α0 := borrow from_balance lib.Balance in
        let* α1 := borrow value lib.Balance in
        let* α2 := (core.cmp.PartialOrd.lt (Self := lib.Balance)) α0 α1 in
        let* α3 := use α2 in
        if (α3 : bool) then
          let* _ :=
            Return
              (core.result.Result.Err (lib.Error.InsufficientBalance tt)) in
          let* α0 := M.alloc tt in
          never_to_any α0
        else
          M.alloc tt in
      let* _ :=
        let* α0 := deref self lib.Erc20 in
        let* α1 := α0.["balances"] in
        let* α2 := borrow_mut α1 (lib.Mapping lib.AccountId lib.Balance) in
        let* α3 := deref from lib.AccountId in
        let* α4 :=
          (core.ops.arith.Sub.sub (Self := lib.Balance)) from_balance value in
        (lib.Mapping K V)::["insert"] α2 α3 α4 in
      let* to_balance :=
        let* α0 := deref self lib.Erc20 in
        let* α1 := borrow α0 lib.Erc20 in
        let* α2 := deref to lib.AccountId in
        let* α3 := borrow α2 lib.AccountId in
        lib.Erc20::["balance_of_impl"] α1 α3 in
      let* _ :=
        let* α0 := deref self lib.Erc20 in
        let* α1 := α0.["balances"] in
        let* α2 := borrow_mut α1 (lib.Mapping lib.AccountId lib.Balance) in
        let* α3 := deref to lib.AccountId in
        let* α4 :=
          (core.ops.arith.Add.add (Self := lib.Balance)) to_balance value in
        (lib.Mapping K V)::["insert"] α2 α3 α4 in
      let* _ :=
        let* α0 := deref self lib.Erc20 in
        let* α1 := borrow α0 lib.Erc20 in
        let* α2 := lib.Erc20::["env"] α1 in
        let* α3 := borrow α2 lib.Environment in
        let* α4 := deref from lib.AccountId in
        let* α5 := deref to lib.AccountId in
        let* α6 :=
          M.alloc
            {|
              lib.Transfer.from := core.option.Option.Some α4;
              lib.Transfer.to := core.option.Option.Some α5;
              lib.Transfer.value := value;
            |} in
        lib.Environment::["emit_event"] α3 α6 in
      let* α0 := M.alloc tt in
      Pure (core.result.Result.Ok α0).
    
    Global Instance AssociatedFunction_transfer_from_to :
      Notation.DoubleColon Self "transfer_from_to" := {
      Notation.double_colon := transfer_from_to;
    }.
  End Impl_lib_Erc20_2.
End Impl_lib_Erc20_2.