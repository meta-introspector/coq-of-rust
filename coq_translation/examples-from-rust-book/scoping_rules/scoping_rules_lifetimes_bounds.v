(* Generated by coq-of-rust *)
Require Import Coq.Strings.String.
Require Import Coq.ZArith.ZArith.
Local Open Scope Z.

Definition u8 : Set := Z.

(* Approximation *)
Definition f64 : Set := Z.

Definition Ref : Set :=
  ref T.

(* Impl [Ref] of trait [_crate.fmt.Debug]*)
Module ImplRef.
  Definition
    fmt
    (self : ref Self)
    (f : ref _crate.fmt.Formatter)
    : _crate.fmt.Result :=
    _crate::fmt::ImplFormatter.debug_tuple_field1_finish
      f
      "Ref"
      self.(Ref<'_, T>.0).
End ImplRef.
(* End impl [Ref] *)