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

Definition double_first (_ : unit) :=
  map (first vec) (fun first => map (parse first) (fun n => mul 2 n)).

Definition main (_ : unit) :=
  let numbers := ComplexTypePath.into_vec ["42";"93";"18"] in
  let empty := _crate::vec::ImplVec.new tt in
  let strings := ComplexTypePath.into_vec ["tofu";"93";"18"] in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["The first doubled is ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_debug (double_first numbers)]) ;;
  tt ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["The first doubled is ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_debug (double_first empty)]) ;;
  tt ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["The first doubled is ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_debug (double_first strings)]) ;;
  tt ;;
  tt.