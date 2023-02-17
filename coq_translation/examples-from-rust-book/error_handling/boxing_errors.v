(* Generated by coq-of-rust *)
Require Import Coq.Strings.String.
Require Import Coq.ZArith.ZArith.
Local Open Scope Z.

Definition u8 : Set := Z.

(* Approximation *)
Definition f64 : Set := Z.

Error TyAlias.

Error Struct.

(* Impl [EmptyVec] of trait [_crate.fmt.Debug]*)
Module ImplEmptyVec.
  Definition
    fmt
    (self : ref Self)
    (f : ref _crate.fmt.Formatter)
    : _crate.fmt.Result :=
    _crate::fmt::ImplFormatter.write_str f "EmptyVec".
End ImplEmptyVec.
(* End impl [EmptyVec] *)

(* Impl [EmptyVec] of trait [_crate.clone.Clone]*)
Module ImplEmptyVec.
  Definition clone (self : ref Self) : EmptyVec :=
    EmptyVec.
End ImplEmptyVec.
(* End impl [EmptyVec] *)

(* Impl [EmptyVec] of trait [fmt.Display]*)
Module ImplEmptyVec.
  Definition fmt (self : ref Self) (f : ref fmt.Formatter) : fmt.Result :=
    write_fmt
      f
      (_crate::fmt::ImplArguments.new_v1 ["invalid first item to double"] []).
End ImplEmptyVec.
(* End impl [EmptyVec] *)

(* Impl [EmptyVec] of trait [error.Error]*)
Module ImplEmptyVec.
  
End ImplEmptyVec.
(* End impl [EmptyVec] *)