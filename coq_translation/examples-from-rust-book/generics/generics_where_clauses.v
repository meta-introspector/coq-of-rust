(* Generated by coq-of-rust *)
Require Import Coq.Strings.String.
Require Import Coq.ZArith.ZArith.
Local Open Scope Z.

(* Approximation *)

Definition u8 : Set := Z.
Definition u16 : Set := Z.
Definition u32 : Set := Z.
Definition u64 : Set := Z.
Definition u128 : Set := Z.

Definition i8 : Set := Z.
Definition i16 : Set := Z.
Definition i32 : Set := Z.
Definition i64 : Set := Z.
Definition i128 : Set := Z.

Definition f32 : Set := Z.
Definition f64 : Set := Z.

Class PrintInOption : Set := {
  print_in_option : Self -> _;
}.

(* Impl [T] of trait [PrintInOption]*)
Module ImplT.
  Definition print_in_option (self : T) :=
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1
        ["";"\n"]
        [_crate::fmt::ImplArgumentV1.new_debug (Some self)]) ;;
    tt ;;
    tt.
End ImplT.
(* End impl [T] *)

Definition main (_ : unit) :=
  let vec := ComplexTypePath.into_vec [1;2;3] in
  print_in_option vec ;;
  tt.