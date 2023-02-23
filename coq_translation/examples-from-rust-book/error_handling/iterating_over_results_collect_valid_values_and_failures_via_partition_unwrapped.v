(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition main (_ : unit) :=
  let strings := ComplexTypePath.into_vec ["tofu";"93";"18"] in
  let (numbers, errors) :=
    method
      "partition"
      (method "map" (method "into_iter" strings) (fun s => method "parse" s))
      ImplResult.is_ok in
  let numbers :=
    method
      "collect"
      (method "map" (method "into_iter" numbers) ImplResult.unwrap) in
  let errors :=
    method
      "collect"
      (method "map" (method "into_iter" errors) ImplResult.unwrap_err) in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["Numbers: ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_debug numbers]) ;;
  tt ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["Errors: ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_debug errors]) ;;
  tt ;;
  tt.
