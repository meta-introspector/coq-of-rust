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

Definition multiply (_ : unit) :=
  mul first second.

Definition choose_first (_ : unit) :=
  first.

Definition main (_ : unit) :=
  let first := 2 in
  let second := 3 in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["The product is ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_display (multiply first second)]) ;;
  tt ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["";" is the first\n"]
      [_crate::fmt::ImplArgumentV1.new_display (choose_first first second)]) ;;
  tt ;;
  tt ;;
  tt.