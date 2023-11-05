(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Mapping.
Section Mapping.
  Context `{ℋ : State.Trait}.
  
  Context {K V : Set}.
  
  Unset Primitive Projections.
  Record t : Set := {
    _key : core.marker.PhantomData K;
    _value : core.marker.PhantomData V;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get__key : Notation.Dot "_key" := {
    Notation.dot x := let* x := M.read x in M.pure x.(_key) : M _;
  }.
  Global Instance Get_AF__key : Notation.DoubleColon t "_key" := {
    Notation.double_colon x := let* x := M.read x in M.pure x.(_key) : M _;
  }.
  Global Instance Get__value : Notation.Dot "_value" := {
    Notation.dot x := let* x := M.read x in M.pure x.(_value) : M _;
  }.
  Global Instance Get_AF__value : Notation.DoubleColon t "_value" := {
    Notation.double_colon x := let* x := M.read x in M.pure x.(_value) : M _;
  }.
End Mapping.
End Mapping.
Definition Mapping (K V : Set) `{ℋ : State.Trait} : Set :=
  M.Val (Mapping.t (K := K) (V := V)).

Module  Impl_core_default_Default_for_lib_Mapping_K_V.
Section Impl_core_default_Default_for_lib_Mapping_K_V.
  Context `{ℋ : State.Trait}.
  
  Context {K V : Set}.
  
  Context
    {ℋ_0 : core.default.Default.Trait K}
    {ℋ_1 : core.default.Default.Trait V}.
  Definition Self : Set := lib.Mapping K V.
  
  Definition default : M (lib.Mapping K V) :=
    M.function_body
      (let* α0 : ltac:(refine (core.marker.PhantomData K)) :=
        core.default.Default.default
          (Self := core.marker.PhantomData K)
          (Trait := ltac:(refine _)) in
      let* α1 : ltac:(refine (core.marker.PhantomData V)) :=
        core.default.Default.default
          (Self := core.marker.PhantomData V)
          (Trait := ltac:(refine _)) in
      M.alloc {| lib.Mapping._key := α0; lib.Mapping._value := α1; |}).
  
  Global Instance AssociatedFunction_default :
    Notation.DoubleColon Self "default" := {
    Notation.double_colon := default;
  }.
  
  Global Instance ℐ : core.default.Default.Trait Self := {
    core.default.Default.default := default;
  }.
End Impl_core_default_Default_for_lib_Mapping_K_V.
End Impl_core_default_Default_for_lib_Mapping_K_V.

Module  Impl_lib_Mapping_K_V.
Section Impl_lib_Mapping_K_V.
  Context `{ℋ : State.Trait}.
  
  Context {K V : Set}.
  
  Definition Self : Set := lib.Mapping K V.
  
  Definition get (self : ref Self) (_key : ref K) : M (core.option.Option V) :=
    M.function_body
      (let* α0 : ltac:(refine never) :=
        core.panicking.panic (mk_str "not implemented") in
      never_to_any α0).
  
  Global Instance AssociatedFunction_get : Notation.DoubleColon Self "get" := {
    Notation.double_colon := get;
  }.
  
  Definition insert (self : mut_ref Self) (_key : K) (_value : V) : M unit :=
    M.function_body
      (let* α0 : ltac:(refine never) :=
        core.panicking.panic (mk_str "not implemented") in
      never_to_any α0).
  
  Global Instance AssociatedFunction_insert :
    Notation.DoubleColon Self "insert" := {
    Notation.double_colon := insert;
  }.
End Impl_lib_Mapping_K_V.
End Impl_lib_Mapping_K_V.

Module  AccountId.
Section AccountId.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    x0 : u64;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_0 : Notation.Dot "0" := {
    Notation.dot x := let* x := M.read x in M.pure x.(x0) : M _;
  }.
End AccountId.
End AccountId.
Definition AccountId `{ℋ : State.Trait} : Set := M.Val AccountId.t.

Module  Impl_core_default_Default_for_lib_AccountId.
Section Impl_core_default_Default_for_lib_AccountId.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := lib.AccountId.
  
  Definition default : M lib.AccountId :=
    M.function_body
      (let* α0 : ltac:(refine u64) :=
        core.default.Default.default (Self := u64) (Trait := ltac:(refine _)) in
      M.alloc (lib.AccountId.Build_t α0)).
  
  Global Instance AssociatedFunction_default :
    Notation.DoubleColon Self "default" := {
    Notation.double_colon := default;
  }.
  
  Global Instance ℐ : core.default.Default.Trait Self := {
    core.default.Default.default := default;
  }.
End Impl_core_default_Default_for_lib_AccountId.
End Impl_core_default_Default_for_lib_AccountId.

Module  Balance.
Section Balance.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    x0 : u64;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_0 : Notation.Dot "0" := {
    Notation.dot x := let* x := M.read x in M.pure x.(x0) : M _;
  }.
End Balance.
End Balance.
Definition Balance `{ℋ : State.Trait} : Set := M.Val Balance.t.

Module  Impl_core_default_Default_for_lib_Balance.
Section Impl_core_default_Default_for_lib_Balance.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := lib.Balance.
  
  Definition default : M lib.Balance :=
    M.function_body
      (let* α0 : ltac:(refine u64) :=
        core.default.Default.default (Self := u64) (Trait := ltac:(refine _)) in
      M.alloc (lib.Balance.Build_t α0)).
  
  Global Instance AssociatedFunction_default :
    Notation.DoubleColon Self "default" := {
    Notation.double_colon := default;
  }.
  
  Global Instance ℐ : core.default.Default.Trait Self := {
    core.default.Default.default := default;
  }.
End Impl_core_default_Default_for_lib_Balance.
End Impl_core_default_Default_for_lib_Balance.

Module  Impl_core_marker_StructuralPartialEq_for_lib_Balance.
Section Impl_core_marker_StructuralPartialEq_for_lib_Balance.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := lib.Balance.
  
  Global Instance ℐ : core.marker.StructuralPartialEq.Trait Self := {
  }.
End Impl_core_marker_StructuralPartialEq_for_lib_Balance.
End Impl_core_marker_StructuralPartialEq_for_lib_Balance.

Module  Impl_core_cmp_PartialEq_for_lib_Balance.
Section Impl_core_cmp_PartialEq_for_lib_Balance.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := lib.Balance.
  
  Definition eq (self : ref Self) (other : ref lib.Balance) : M bool :=
    M.function_body
      (let* α0 : ltac:(refine lib.Balance) := deref self in
      let* α1 : ltac:(refine u64) := α0.["0"] in
      let* α2 : ltac:(refine lib.Balance) := deref other in
      let* α3 : ltac:(refine u64) := α2.["0"] in
      BinOp.eq α1 α3).
  
  Global Instance AssociatedFunction_eq : Notation.DoubleColon Self "eq" := {
    Notation.double_colon := eq;
  }.
  
  Global Instance ℐ :
    core.cmp.PartialEq.Required.Trait Self
      (Rhs := core.cmp.PartialEq.Default.Rhs Self) := {
    core.cmp.PartialEq.eq := eq;
    core.cmp.PartialEq.ne := Datatypes.None;
  }.
End Impl_core_cmp_PartialEq_for_lib_Balance.
End Impl_core_cmp_PartialEq_for_lib_Balance.

Module  Impl_core_cmp_PartialOrd_for_lib_Balance.
Section Impl_core_cmp_PartialOrd_for_lib_Balance.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := lib.Balance.
  
  Definition partial_cmp
      (self : ref Self)
      (other : ref lib.Balance)
      : M (core.option.Option core.cmp.Ordering) :=
    M.function_body
      (let* α0 : ltac:(refine lib.Balance) := deref self in
      let* α1 : ltac:(refine u64) := α0.["0"] in
      let* α2 : ltac:(refine (ref u64)) := borrow α1 in
      let* α3 : ltac:(refine u64) := deref α2 in
      let* α4 : ltac:(refine (ref u64)) := borrow α3 in
      let* α5 : ltac:(refine lib.Balance) := deref other in
      let* α6 : ltac:(refine u64) := α5.["0"] in
      let* α7 : ltac:(refine (ref u64)) := borrow α6 in
      let* α8 : ltac:(refine u64) := deref α7 in
      let* α9 : ltac:(refine (ref u64)) := borrow α8 in
      (core.cmp.PartialOrd.partial_cmp (Self := u64) (Trait := ltac:(refine _)))
        α4
        α9).
  
  Global Instance AssociatedFunction_partial_cmp :
    Notation.DoubleColon Self "partial_cmp" := {
    Notation.double_colon := partial_cmp;
  }.
  
  Global Instance ℐ :
    core.cmp.PartialOrd.Required.Trait Self
      (Rhs := core.cmp.PartialOrd.Default.Rhs Self) := {
    core.cmp.PartialOrd.partial_cmp := partial_cmp;
    core.cmp.PartialOrd.lt := Datatypes.None;
    core.cmp.PartialOrd.le := Datatypes.None;
    core.cmp.PartialOrd.gt := Datatypes.None;
    core.cmp.PartialOrd.ge := Datatypes.None;
  }.
End Impl_core_cmp_PartialOrd_for_lib_Balance.
End Impl_core_cmp_PartialOrd_for_lib_Balance.

Module  Impl_core_ops_arith_Add_for_lib_Balance.
Section Impl_core_ops_arith_Add_for_lib_Balance.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := lib.Balance.
  
  Definition Output : Set := Self.
  
  Definition add (self : Self) (rhs : Self) : M Output :=
    M.function_body
      (let* α0 : ltac:(refine u64) := self.["0"] in
      let* α1 : ltac:(refine u64) := rhs.["0"] in
      let* α2 : ltac:(refine u64) := BinOp.add α0 α1 in
      M.alloc (lib.Balance.Build_t α2)).
  
  Global Instance AssociatedFunction_add : Notation.DoubleColon Self "add" := {
    Notation.double_colon := add;
  }.
  
  Global Instance ℐ :
    core.ops.arith.Add.Trait Self
      (Rhs := core.ops.arith.Add.Default.Rhs Self) := {
    core.ops.arith.Add.Output := Output;
    core.ops.arith.Add.add := add;
  }.
End Impl_core_ops_arith_Add_for_lib_Balance.
End Impl_core_ops_arith_Add_for_lib_Balance.

Module  Impl_core_ops_arith_Sub_for_lib_Balance.
Section Impl_core_ops_arith_Sub_for_lib_Balance.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := lib.Balance.
  
  Definition Output : Set := Self.
  
  Definition sub (self : Self) (rhs : Self) : M Output :=
    M.function_body
      (let* α0 : ltac:(refine u64) := self.["0"] in
      let* α1 : ltac:(refine u64) := rhs.["0"] in
      let* α2 : ltac:(refine u64) := BinOp.sub α0 α1 in
      M.alloc (lib.Balance.Build_t α2)).
  
  Global Instance AssociatedFunction_sub : Notation.DoubleColon Self "sub" := {
    Notation.double_colon := sub;
  }.
  
  Global Instance ℐ :
    core.ops.arith.Sub.Trait Self
      (Rhs := core.ops.arith.Sub.Default.Rhs Self) := {
    core.ops.arith.Sub.Output := Output;
    core.ops.arith.Sub.sub := sub;
  }.
End Impl_core_ops_arith_Sub_for_lib_Balance.
End Impl_core_ops_arith_Sub_for_lib_Balance.

Module  Environment.
Section Environment.
  Context `{ℋ : State.Trait}.
  
  Inductive t : Set := Build.
End Environment.
End Environment.
Definition Environment `{ℋ : State.Trait} := M.Val Environment.t.

Module  Event.
Section Event.
  Context `{ℋ : State.Trait}.
  
  Inductive t : Set := Build.
End Event.
End Event.
Definition Event `{ℋ : State.Trait} := M.Val Event.t.

Module  Erc20.
Section Erc20.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    total_supply : lib.Balance;
    balances : lib.Mapping lib.AccountId lib.Balance;
    allowances :
      lib.Mapping (M.Val (lib.AccountId * lib.AccountId)) lib.Balance;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_total_supply : Notation.Dot "total_supply" := {
    Notation.dot x := let* x := M.read x in M.pure x.(total_supply) : M _;
  }.
  Global Instance Get_AF_total_supply :
    Notation.DoubleColon t "total_supply" := {
    Notation.double_colon x :=
      let* x := M.read x in M.pure x.(total_supply) : M _;
  }.
  Global Instance Get_balances : Notation.Dot "balances" := {
    Notation.dot x := let* x := M.read x in M.pure x.(balances) : M _;
  }.
  Global Instance Get_AF_balances : Notation.DoubleColon t "balances" := {
    Notation.double_colon x := let* x := M.read x in M.pure x.(balances) : M _;
  }.
  Global Instance Get_allowances : Notation.Dot "allowances" := {
    Notation.dot x := let* x := M.read x in M.pure x.(allowances) : M _;
  }.
  Global Instance Get_AF_allowances : Notation.DoubleColon t "allowances" := {
    Notation.double_colon x :=
      let* x := M.read x in M.pure x.(allowances) : M _;
  }.
End Erc20.
End Erc20.
Definition Erc20 `{ℋ : State.Trait} : Set := M.Val Erc20.t.

Module  Impl_core_default_Default_for_lib_Erc20.
Section Impl_core_default_Default_for_lib_Erc20.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := lib.Erc20.
  
  Definition default : M lib.Erc20 :=
    M.function_body
      (let* α0 : ltac:(refine lib.Balance) :=
        core.default.Default.default
          (Self := lib.Balance)
          (Trait := ltac:(refine _)) in
      let* α1 : ltac:(refine (lib.Mapping lib.AccountId lib.Balance)) :=
        core.default.Default.default
          (Self := lib.Mapping lib.AccountId lib.Balance)
          (Trait := ltac:(refine _)) in
      let*
          α2 :
          ltac:(refine
            (lib.Mapping
              (M.Val (lib.AccountId * lib.AccountId))
              lib.Balance)) :=
        core.default.Default.default
          (Self :=
            lib.Mapping (M.Val (lib.AccountId * lib.AccountId)) lib.Balance)
          (Trait := ltac:(refine _)) in
      M.alloc
        {|
          lib.Erc20.total_supply := α0;
          lib.Erc20.balances := α1;
          lib.Erc20.allowances := α2;
        |}).
  
  Global Instance AssociatedFunction_default :
    Notation.DoubleColon Self "default" := {
    Notation.double_colon := default;
  }.
  
  Global Instance ℐ : core.default.Default.Trait Self := {
    core.default.Default.default := default;
  }.
End Impl_core_default_Default_for_lib_Erc20.
End Impl_core_default_Default_for_lib_Erc20.

Module  Transfer.
Section Transfer.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    from : core.option.Option lib.AccountId;
    to : core.option.Option lib.AccountId;
    value : lib.Balance;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_from : Notation.Dot "from" := {
    Notation.dot x := let* x := M.read x in M.pure x.(from) : M _;
  }.
  Global Instance Get_AF_from : Notation.DoubleColon t "from" := {
    Notation.double_colon x := let* x := M.read x in M.pure x.(from) : M _;
  }.
  Global Instance Get_to : Notation.Dot "to" := {
    Notation.dot x := let* x := M.read x in M.pure x.(to) : M _;
  }.
  Global Instance Get_AF_to : Notation.DoubleColon t "to" := {
    Notation.double_colon x := let* x := M.read x in M.pure x.(to) : M _;
  }.
  Global Instance Get_value : Notation.Dot "value" := {
    Notation.dot x := let* x := M.read x in M.pure x.(value) : M _;
  }.
  Global Instance Get_AF_value : Notation.DoubleColon t "value" := {
    Notation.double_colon x := let* x := M.read x in M.pure x.(value) : M _;
  }.
End Transfer.
End Transfer.
Definition Transfer `{ℋ : State.Trait} : Set := M.Val Transfer.t.

Module  Impl_core_convert_Into_lib_Event_for_lib_Transfer.
Section Impl_core_convert_Into_lib_Event_for_lib_Transfer.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := lib.Transfer.
  
  Definition into (self : Self) : M lib.Event :=
    M.function_body
      (let* α0 : ltac:(refine never) :=
        core.panicking.panic (mk_str "not implemented") in
      never_to_any α0).
  
  Global Instance AssociatedFunction_into :
    Notation.DoubleColon Self "into" := {
    Notation.double_colon := into;
  }.
  
  Global Instance ℐ : core.convert.Into.Trait Self (T := lib.Event) := {
    core.convert.Into.into := into;
  }.
End Impl_core_convert_Into_lib_Event_for_lib_Transfer.
End Impl_core_convert_Into_lib_Event_for_lib_Transfer.

Module  Approval.
Section Approval.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    owner : lib.AccountId;
    spender : lib.AccountId;
    value : lib.Balance;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_owner : Notation.Dot "owner" := {
    Notation.dot x := let* x := M.read x in M.pure x.(owner) : M _;
  }.
  Global Instance Get_AF_owner : Notation.DoubleColon t "owner" := {
    Notation.double_colon x := let* x := M.read x in M.pure x.(owner) : M _;
  }.
  Global Instance Get_spender : Notation.Dot "spender" := {
    Notation.dot x := let* x := M.read x in M.pure x.(spender) : M _;
  }.
  Global Instance Get_AF_spender : Notation.DoubleColon t "spender" := {
    Notation.double_colon x := let* x := M.read x in M.pure x.(spender) : M _;
  }.
  Global Instance Get_value : Notation.Dot "value" := {
    Notation.dot x := let* x := M.read x in M.pure x.(value) : M _;
  }.
  Global Instance Get_AF_value : Notation.DoubleColon t "value" := {
    Notation.double_colon x := let* x := M.read x in M.pure x.(value) : M _;
  }.
End Approval.
End Approval.
Definition Approval `{ℋ : State.Trait} : Set := M.Val Approval.t.

Module  Impl_core_convert_Into_lib_Event_for_lib_Approval.
Section Impl_core_convert_Into_lib_Event_for_lib_Approval.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := lib.Approval.
  
  Definition into (self : Self) : M lib.Event :=
    M.function_body
      (let* α0 : ltac:(refine never) :=
        core.panicking.panic (mk_str "not implemented") in
      never_to_any α0).
  
  Global Instance AssociatedFunction_into :
    Notation.DoubleColon Self "into" := {
    Notation.double_colon := into;
  }.
  
  Global Instance ℐ : core.convert.Into.Trait Self (T := lib.Event) := {
    core.convert.Into.into := into;
  }.
End Impl_core_convert_Into_lib_Event_for_lib_Approval.
End Impl_core_convert_Into_lib_Event_for_lib_Approval.

Module Error.
  Inductive t `{ℋ : State.Trait} : Set :=
  | InsufficientBalance
  | InsufficientAllowance.
End Error.
Definition Error `{ℋ : State.Trait} : Set := M.Val Error.t.

Ltac Result T := refine (core.result.Result T lib.Error).

Module  Impl_lib_Environment.
Section Impl_lib_Environment.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := lib.Environment.
  
  Definition caller (self : ref Self) : M lib.AccountId :=
    M.function_body
      (let* α0 : ltac:(refine never) :=
        core.panicking.panic (mk_str "not implemented") in
      never_to_any α0).
  
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
    M.function_body
      (let* α0 : ltac:(refine never) :=
        core.panicking.panic (mk_str "not implemented") in
      never_to_any α0).
  
  Global Instance AssociatedFunction_emit_event
      {E : Set}
      {ℋ_0 : core.convert.Into.Trait E (T := lib.Event)} :
    Notation.DoubleColon Self "emit_event" := {
    Notation.double_colon := emit_event (E := E);
  }.
End Impl_lib_Environment.
End Impl_lib_Environment.

Module  Impl_lib_Erc20.
Section Impl_lib_Erc20.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := lib.Erc20.
  
  Definition init_env : M lib.Environment :=
    M.function_body
      (let* α0 : ltac:(refine never) :=
        core.panicking.panic (mk_str "not implemented") in
      never_to_any α0).
  
  Global Instance AssociatedFunction_init_env :
    Notation.DoubleColon Self "init_env" := {
    Notation.double_colon := init_env;
  }.
  
  Definition env (self : ref Self) : M lib.Environment :=
    M.function_body
      (let* α0 : ltac:(refine never) :=
        core.panicking.panic (mk_str "not implemented") in
      never_to_any α0).
  
  Global Instance AssociatedFunction_env : Notation.DoubleColon Self "env" := {
    Notation.double_colon := env;
  }.
End Impl_lib_Erc20.
End Impl_lib_Erc20.

Module  Impl_lib_Erc20_2.
Section Impl_lib_Erc20_2.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := lib.Erc20.
  
  Definition new (total_supply : lib.Balance) : M Self :=
    M.function_body
      (let* balances : ltac:(refine (lib.Mapping lib.AccountId lib.Balance)) :=
        core.default.Default.default
          (Self := lib.Mapping lib.AccountId lib.Balance)
          (Trait := ltac:(refine _)) in
      let* caller : ltac:(refine lib.AccountId) :=
        let* α0 : ltac:(refine lib.Environment) := lib.Erc20::["init_env"] in
        let* α1 : ltac:(refine (ref lib.Environment)) := borrow α0 in
        lib.Environment::["caller"] α1 in
      let* _ : ltac:(refine unit) :=
        let*
            α0 :
            ltac:(refine (mut_ref (lib.Mapping lib.AccountId lib.Balance))) :=
          borrow_mut balances in
        (lib.Mapping lib.AccountId lib.Balance)::["insert"]
          α0
          caller
          total_supply in
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine lib.Environment) := lib.Erc20::["init_env"] in
        let* α1 : ltac:(refine (ref lib.Environment)) := borrow α0 in
        let* α2 : ltac:(refine (core.option.Option lib.AccountId)) :=
          M.alloc core.option.Option.None in
        let* α3 : ltac:(refine (core.option.Option lib.AccountId)) :=
          M.alloc (core.option.Option.Some caller) in
        let* α4 : ltac:(refine lib.Transfer) :=
          M.alloc
            {|
              lib.Transfer.from := α2;
              lib.Transfer.to := α3;
              lib.Transfer.value := total_supply;
            |} in
        lib.Environment::["emit_event"] α1 α4 in
      let*
          α0 :
          ltac:(refine
            (lib.Mapping
              (M.Val (lib.AccountId * lib.AccountId))
              lib.Balance)) :=
        core.default.Default.default
          (Self :=
            lib.Mapping (M.Val (lib.AccountId * lib.AccountId)) lib.Balance)
          (Trait := ltac:(refine _)) in
      M.alloc
        {|
          lib.Erc20.total_supply := total_supply;
          lib.Erc20.balances := balances;
          lib.Erc20.allowances := α0;
        |}).
  
  Global Instance AssociatedFunction_new : Notation.DoubleColon Self "new" := {
    Notation.double_colon := new;
  }.
  
  Definition total_supply (self : ref Self) : M lib.Balance :=
    M.function_body
      (let* α0 : ltac:(refine lib.Erc20) := deref self in
      α0.["total_supply"]).
  
  Global Instance AssociatedFunction_total_supply :
    Notation.DoubleColon Self "total_supply" := {
    Notation.double_colon := total_supply;
  }.
  
  Definition balance_of_impl
      (self : ref Self)
      (owner : ref lib.AccountId)
      : M lib.Balance :=
    M.function_body
      (let* α0 : ltac:(refine lib.Erc20) := deref self in
      let* α1 : ltac:(refine (lib.Mapping lib.AccountId lib.Balance)) :=
        α0.["balances"] in
      let* α2 : ltac:(refine (ref (lib.Mapping lib.AccountId lib.Balance))) :=
        borrow α1 in
      let* α3 : ltac:(refine lib.AccountId) := deref owner in
      let* α4 : ltac:(refine (ref lib.AccountId)) := borrow α3 in
      let* α5 : ltac:(refine (core.option.Option lib.Balance)) :=
        (lib.Mapping lib.AccountId lib.Balance)::["get"] α2 α4 in
      (core.option.Option lib.Balance)::["unwrap_or_default"] α5).
  
  Global Instance AssociatedFunction_balance_of_impl :
    Notation.DoubleColon Self "balance_of_impl" := {
    Notation.double_colon := balance_of_impl;
  }.
  
  Definition balance_of
      (self : ref Self)
      (owner : lib.AccountId)
      : M lib.Balance :=
    M.function_body
      (let* α0 : ltac:(refine lib.Erc20) := deref self in
      let* α1 : ltac:(refine (ref lib.Erc20)) := borrow α0 in
      let* α2 : ltac:(refine (ref lib.AccountId)) := borrow owner in
      let* α3 : ltac:(refine lib.AccountId) := deref α2 in
      let* α4 : ltac:(refine (ref lib.AccountId)) := borrow α3 in
      lib.Erc20::["balance_of_impl"] α1 α4).
  
  Global Instance AssociatedFunction_balance_of :
    Notation.DoubleColon Self "balance_of" := {
    Notation.double_colon := balance_of;
  }.
  
  Definition allowance_impl
      (self : ref Self)
      (owner : ref lib.AccountId)
      (spender : ref lib.AccountId)
      : M lib.Balance :=
    M.function_body
      (let* α0 : ltac:(refine lib.Erc20) := deref self in
      let*
          α1 :
          ltac:(refine
            (lib.Mapping
              (M.Val (lib.AccountId * lib.AccountId))
              lib.Balance)) :=
        α0.["allowances"] in
      let*
          α2 :
          ltac:(refine
            (ref
              (lib.Mapping
                (M.Val (lib.AccountId * lib.AccountId))
                lib.Balance))) :=
        borrow α1 in
      let* α3 : ltac:(refine lib.AccountId) := deref owner in
      let* α4 : ltac:(refine lib.AccountId) := deref spender in
      let* α5 : ltac:(refine (M.Val (lib.AccountId * lib.AccountId))) :=
        M.alloc (α3, α4) in
      let* α6 : ltac:(refine (ref (M.Val (lib.AccountId * lib.AccountId)))) :=
        borrow α5 in
      let* α7 : ltac:(refine (M.Val (lib.AccountId * lib.AccountId))) :=
        deref α6 in
      let* α8 : ltac:(refine (ref (M.Val (lib.AccountId * lib.AccountId)))) :=
        borrow α7 in
      let* α9 : ltac:(refine (core.option.Option lib.Balance)) :=
        (lib.Mapping
              (M.Val (lib.AccountId * lib.AccountId))
              lib.Balance)::["get"]
          α2
          α8 in
      (core.option.Option lib.Balance)::["unwrap_or_default"] α9).
  
  Global Instance AssociatedFunction_allowance_impl :
    Notation.DoubleColon Self "allowance_impl" := {
    Notation.double_colon := allowance_impl;
  }.
  
  Definition allowance
      (self : ref Self)
      (owner : lib.AccountId)
      (spender : lib.AccountId)
      : M lib.Balance :=
    M.function_body
      (let* α0 : ltac:(refine lib.Erc20) := deref self in
      let* α1 : ltac:(refine (ref lib.Erc20)) := borrow α0 in
      let* α2 : ltac:(refine (ref lib.AccountId)) := borrow owner in
      let* α3 : ltac:(refine lib.AccountId) := deref α2 in
      let* α4 : ltac:(refine (ref lib.AccountId)) := borrow α3 in
      let* α5 : ltac:(refine (ref lib.AccountId)) := borrow spender in
      let* α6 : ltac:(refine lib.AccountId) := deref α5 in
      let* α7 : ltac:(refine (ref lib.AccountId)) := borrow α6 in
      lib.Erc20::["allowance_impl"] α1 α4 α7).
  
  Global Instance AssociatedFunction_allowance :
    Notation.DoubleColon Self "allowance" := {
    Notation.double_colon := allowance;
  }.
  
  Definition transfer_from_to
      (self : mut_ref Self)
      (from : ref lib.AccountId)
      (to : ref lib.AccountId)
      (value : lib.Balance)
      : M ltac:(lib.Result constr:(unit)) :=
    M.function_body
      (let* from_balance : ltac:(refine lib.Balance) :=
        let* α0 : ltac:(refine lib.Erc20) := deref self in
        let* α1 : ltac:(refine (ref lib.Erc20)) := borrow α0 in
        let* α2 : ltac:(refine lib.AccountId) := deref from in
        let* α3 : ltac:(refine (ref lib.AccountId)) := borrow α2 in
        lib.Erc20::["balance_of_impl"] α1 α3 in
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (ref lib.Balance)) := borrow from_balance in
        let* α1 : ltac:(refine (ref lib.Balance)) := borrow value in
        let* α2 : ltac:(refine bool) :=
          (core.cmp.PartialOrd.lt
              (Self := lib.Balance)
              (Trait := ltac:(refine _)))
            α0
            α1 in
        let* α3 : ltac:(refine bool) := use α2 in
        if (α3 : bool) then
          let* _ : ltac:(refine never) :=
            let* α0 : ltac:(refine lib.Error) :=
              M.alloc lib.Error.InsufficientBalance in
            let* α1 : ltac:(refine (core.result.Result unit lib.Error)) :=
              M.alloc (core.result.Result.Err α0) in
            M.return_ α1 in
          let* α0 : ltac:(refine unit) := M.alloc tt in
          never_to_any α0
        else
          M.alloc tt in
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine lib.Erc20) := deref self in
        let* α1 : ltac:(refine (lib.Mapping lib.AccountId lib.Balance)) :=
          α0.["balances"] in
        let*
            α2 :
            ltac:(refine (mut_ref (lib.Mapping lib.AccountId lib.Balance))) :=
          borrow_mut α1 in
        let* α3 : ltac:(refine lib.AccountId) := deref from in
        let* α4 : ltac:(refine lib.Balance) :=
          (core.ops.arith.Sub.sub
              (Self := lib.Balance)
              (Trait := ltac:(refine _)))
            from_balance
            value in
        (lib.Mapping lib.AccountId lib.Balance)::["insert"] α2 α3 α4 in
      let* to_balance : ltac:(refine lib.Balance) :=
        let* α0 : ltac:(refine lib.Erc20) := deref self in
        let* α1 : ltac:(refine (ref lib.Erc20)) := borrow α0 in
        let* α2 : ltac:(refine lib.AccountId) := deref to in
        let* α3 : ltac:(refine (ref lib.AccountId)) := borrow α2 in
        lib.Erc20::["balance_of_impl"] α1 α3 in
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine lib.Erc20) := deref self in
        let* α1 : ltac:(refine (lib.Mapping lib.AccountId lib.Balance)) :=
          α0.["balances"] in
        let*
            α2 :
            ltac:(refine (mut_ref (lib.Mapping lib.AccountId lib.Balance))) :=
          borrow_mut α1 in
        let* α3 : ltac:(refine lib.AccountId) := deref to in
        let* α4 : ltac:(refine lib.Balance) :=
          (core.ops.arith.Add.add
              (Self := lib.Balance)
              (Trait := ltac:(refine _)))
            to_balance
            value in
        (lib.Mapping lib.AccountId lib.Balance)::["insert"] α2 α3 α4 in
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine lib.Erc20) := deref self in
        let* α1 : ltac:(refine (ref lib.Erc20)) := borrow α0 in
        let* α2 : ltac:(refine lib.Environment) := lib.Erc20::["env"] α1 in
        let* α3 : ltac:(refine (ref lib.Environment)) := borrow α2 in
        let* α4 : ltac:(refine lib.AccountId) := deref from in
        let* α5 : ltac:(refine (core.option.Option lib.AccountId)) :=
          M.alloc (core.option.Option.Some α4) in
        let* α6 : ltac:(refine lib.AccountId) := deref to in
        let* α7 : ltac:(refine (core.option.Option lib.AccountId)) :=
          M.alloc (core.option.Option.Some α6) in
        let* α8 : ltac:(refine lib.Transfer) :=
          M.alloc
            {|
              lib.Transfer.from := α5;
              lib.Transfer.to := α7;
              lib.Transfer.value := value;
            |} in
        lib.Environment::["emit_event"] α3 α8 in
      let* α0 : ltac:(refine unit) := M.alloc tt in
      M.alloc (core.result.Result.Ok α0)).
  
  Global Instance AssociatedFunction_transfer_from_to :
    Notation.DoubleColon Self "transfer_from_to" := {
    Notation.double_colon := transfer_from_to;
  }.
  
  Definition transfer
      (self : mut_ref Self)
      (to : lib.AccountId)
      (value : lib.Balance)
      : M ltac:(lib.Result constr:(unit)) :=
    M.function_body
      (let* from : ltac:(refine lib.AccountId) :=
        let* α0 : ltac:(refine lib.Erc20) := deref self in
        let* α1 : ltac:(refine (ref lib.Erc20)) := borrow α0 in
        let* α2 : ltac:(refine lib.Environment) := lib.Erc20::["env"] α1 in
        let* α3 : ltac:(refine (ref lib.Environment)) := borrow α2 in
        lib.Environment::["caller"] α3 in
      let* α0 : ltac:(refine lib.Erc20) := deref self in
      let* α1 : ltac:(refine (mut_ref lib.Erc20)) := borrow_mut α0 in
      let* α2 : ltac:(refine (ref lib.AccountId)) := borrow from in
      let* α3 : ltac:(refine lib.AccountId) := deref α2 in
      let* α4 : ltac:(refine (ref lib.AccountId)) := borrow α3 in
      let* α5 : ltac:(refine (ref lib.AccountId)) := borrow to in
      let* α6 : ltac:(refine lib.AccountId) := deref α5 in
      let* α7 : ltac:(refine (ref lib.AccountId)) := borrow α6 in
      lib.Erc20::["transfer_from_to"] α1 α4 α7 value).
  
  Global Instance AssociatedFunction_transfer :
    Notation.DoubleColon Self "transfer" := {
    Notation.double_colon := transfer;
  }.
  
  Definition approve
      (self : mut_ref Self)
      (spender : lib.AccountId)
      (value : lib.Balance)
      : M ltac:(lib.Result constr:(unit)) :=
    M.function_body
      (let* owner : ltac:(refine lib.AccountId) :=
        let* α0 : ltac:(refine lib.Erc20) := deref self in
        let* α1 : ltac:(refine (ref lib.Erc20)) := borrow α0 in
        let* α2 : ltac:(refine lib.Environment) := lib.Erc20::["env"] α1 in
        let* α3 : ltac:(refine (ref lib.Environment)) := borrow α2 in
        lib.Environment::["caller"] α3 in
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine lib.Erc20) := deref self in
        let*
            α1 :
            ltac:(refine
              (lib.Mapping
                (M.Val (lib.AccountId * lib.AccountId))
                lib.Balance)) :=
          α0.["allowances"] in
        let*
            α2 :
            ltac:(refine
              (mut_ref
                (lib.Mapping
                  (M.Val (lib.AccountId * lib.AccountId))
                  lib.Balance))) :=
          borrow_mut α1 in
        let* α3 : ltac:(refine (M.Val (lib.AccountId * lib.AccountId))) :=
          M.alloc (owner, spender) in
        (lib.Mapping
              (M.Val (lib.AccountId * lib.AccountId))
              lib.Balance)::["insert"]
          α2
          α3
          value in
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine lib.Erc20) := deref self in
        let* α1 : ltac:(refine (ref lib.Erc20)) := borrow α0 in
        let* α2 : ltac:(refine lib.Environment) := lib.Erc20::["env"] α1 in
        let* α3 : ltac:(refine (ref lib.Environment)) := borrow α2 in
        let* α4 : ltac:(refine lib.Approval) :=
          M.alloc
            {|
              lib.Approval.owner := owner;
              lib.Approval.spender := spender;
              lib.Approval.value := value;
            |} in
        lib.Environment::["emit_event"] α3 α4 in
      let* α0 : ltac:(refine unit) := M.alloc tt in
      M.alloc (core.result.Result.Ok α0)).
  
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
    M.function_body
      (let* caller : ltac:(refine lib.AccountId) :=
        let* α0 : ltac:(refine lib.Erc20) := deref self in
        let* α1 : ltac:(refine (ref lib.Erc20)) := borrow α0 in
        let* α2 : ltac:(refine lib.Environment) := lib.Erc20::["env"] α1 in
        let* α3 : ltac:(refine (ref lib.Environment)) := borrow α2 in
        lib.Environment::["caller"] α3 in
      let* allowance : ltac:(refine lib.Balance) :=
        let* α0 : ltac:(refine lib.Erc20) := deref self in
        let* α1 : ltac:(refine (ref lib.Erc20)) := borrow α0 in
        let* α2 : ltac:(refine (ref lib.AccountId)) := borrow from in
        let* α3 : ltac:(refine lib.AccountId) := deref α2 in
        let* α4 : ltac:(refine (ref lib.AccountId)) := borrow α3 in
        let* α5 : ltac:(refine (ref lib.AccountId)) := borrow caller in
        let* α6 : ltac:(refine lib.AccountId) := deref α5 in
        let* α7 : ltac:(refine (ref lib.AccountId)) := borrow α6 in
        lib.Erc20::["allowance_impl"] α1 α4 α7 in
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (ref lib.Balance)) := borrow allowance in
        let* α1 : ltac:(refine (ref lib.Balance)) := borrow value in
        let* α2 : ltac:(refine bool) :=
          (core.cmp.PartialOrd.lt
              (Self := lib.Balance)
              (Trait := ltac:(refine _)))
            α0
            α1 in
        let* α3 : ltac:(refine bool) := use α2 in
        if (α3 : bool) then
          let* _ : ltac:(refine never) :=
            let* α0 : ltac:(refine lib.Error) :=
              M.alloc lib.Error.InsufficientAllowance in
            let* α1 : ltac:(refine (core.result.Result unit lib.Error)) :=
              M.alloc (core.result.Result.Err α0) in
            M.return_ α1 in
          let* α0 : ltac:(refine unit) := M.alloc tt in
          never_to_any α0
        else
          M.alloc tt in
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine lib.Erc20) := deref self in
        let* α1 : ltac:(refine (mut_ref lib.Erc20)) := borrow_mut α0 in
        let* α2 : ltac:(refine (ref lib.AccountId)) := borrow from in
        let* α3 : ltac:(refine lib.AccountId) := deref α2 in
        let* α4 : ltac:(refine (ref lib.AccountId)) := borrow α3 in
        let* α5 : ltac:(refine (ref lib.AccountId)) := borrow to in
        let* α6 : ltac:(refine lib.AccountId) := deref α5 in
        let* α7 : ltac:(refine (ref lib.AccountId)) := borrow α6 in
        let* α8 : ltac:(refine (core.result.Result unit lib.Error)) :=
          lib.Erc20::["transfer_from_to"] α1 α4 α7 value in
        let*
            α9 :
            ltac:(refine
              (core.ops.control_flow.ControlFlow
                (core.result.Result core.convert.Infallible lib.Error)
                unit)) :=
          (core.ops.try_trait.Try.branch
              (Self := core.result.Result unit lib.Error)
              (Trait := ltac:(refine _)))
            α8 in
        let* α10 := M.read α9 in
        match α10 with
        | core.ops.control_flow.ControlFlow.Break residual =>
          let* α0 : ltac:(refine (core.result.Result unit lib.Error)) :=
            (core.ops.try_trait.FromResidual.from_residual
                (Self := core.result.Result unit lib.Error)
                (Trait := ltac:(refine _)))
              residual in
          let* α1 : ltac:(refine never) := M.return_ α0 in
          never_to_any α1
        | core.ops.control_flow.ControlFlow.Continue val => M.pure val
        end in
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine lib.Erc20) := deref self in
        let*
            α1 :
            ltac:(refine
              (lib.Mapping
                (M.Val (lib.AccountId * lib.AccountId))
                lib.Balance)) :=
          α0.["allowances"] in
        let*
            α2 :
            ltac:(refine
              (mut_ref
                (lib.Mapping
                  (M.Val (lib.AccountId * lib.AccountId))
                  lib.Balance))) :=
          borrow_mut α1 in
        let* α3 : ltac:(refine (M.Val (lib.AccountId * lib.AccountId))) :=
          M.alloc (from, caller) in
        let* α4 : ltac:(refine lib.Balance) :=
          (core.ops.arith.Sub.sub
              (Self := lib.Balance)
              (Trait := ltac:(refine _)))
            allowance
            value in
        (lib.Mapping
              (M.Val (lib.AccountId * lib.AccountId))
              lib.Balance)::["insert"]
          α2
          α3
          α4 in
      let* α0 : ltac:(refine unit) := M.alloc tt in
      M.alloc (core.result.Result.Ok α0)).
  
  Global Instance AssociatedFunction_transfer_from :
    Notation.DoubleColon Self "transfer_from" := {
    Notation.double_colon := transfer_from;
  }.
End Impl_lib_Erc20_2.
End Impl_lib_Erc20_2.
