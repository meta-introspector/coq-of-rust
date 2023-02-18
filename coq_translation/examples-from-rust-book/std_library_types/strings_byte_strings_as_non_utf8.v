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

Definition main (_ : unit) :=
  let bytestring := [116, 104, 105, 115, 32, 105, 115, 32, 97, 32, 98, 121, 116, 101, 32, 115, 116, 114, 105, 110, 103] in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["A byte string: ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_debug bytestring]) ;;
  tt ;;
  let escaped := [82, 117, 115, 116, 32, 97, 115, 32, 98, 121, 116, 101, 115] in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["Some escaped bytes: ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_debug escaped]) ;;
  tt ;;
  let raw_bytestring := [92, 117, 123, 50, 49, 49, 68, 125, 32, 105, 115, 32, 110, 111, 116, 32, 101, 115, 99, 97, 112, 101, 100, 32, 104, 101, 114, 101] in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["";"\n"]
      [_crate::fmt::ImplArgumentV1.new_debug raw_bytestring]) ;;
  tt ;;
  if let_if Ok (my_str) := str.from_utf8 raw_bytestring then
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1
        ["And the same as text: '";"'\n"]
        [_crate::fmt::ImplArgumentV1.new_display my_str]) ;;
    tt ;;
    tt
  else
    tt ;;
  let _quotes := [89, 111, 117, 32, 99, 97, 110, 32, 97, 108, 115, 111, 32, 117, 115, 101, 32, 34, 102, 97, 110, 99, 105, 101, 114, 34, 32, 102, 111, 114, 109, 97, 116, 116, 105, 110, 103, 44, 32, 92, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 105, 107, 101, 32, 119, 105, 116, 104, 32, 110, 111, 114, 109, 97, 108, 32, 114, 97, 119, 32, 115, 116, 114, 105, 110, 103, 115] in
  let shift_jis := [130, 230, 130, 168, 130, 177, 130, 187] in
  match str.from_utf8 shift_jis with
  | Ok (my_str) =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1
        ["Conversion successful: '";"'\n"]
        [_crate::fmt::ImplArgumentV1.new_display my_str]) ;;
    tt
  | Err (e) =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1
        ["Conversion failed: ";"\n"]
        [_crate::fmt::ImplArgumentV1.new_debug e]) ;;
    tt
  end ;;
  tt.