(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition main (_ : unit) : unit :=
  let strings := ComplexTypePath.into_vec ["42";"tofu";"93";"999";"18"] in
  let errors := _crate::vec::ImplVec.new tt in
  let numbers :=
    method
      "collect"
      (method
        "filter_map"
        (method "map" (method "into_iter" strings) (fun s => method "parse" s))
        (fun r =>
          method
            "ok"
            (method "map_err" r (fun e => method "push" errors e)))) in
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
