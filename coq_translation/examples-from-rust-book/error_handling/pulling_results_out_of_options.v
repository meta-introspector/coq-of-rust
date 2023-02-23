(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition double_first (vec : Vec) : Option :=
  method
    "map"
    (method "first" vec)
    (fun first => method "map" (method "parse" first) (fun n => mul 2 n)).

Definition main (_ : unit) : unit :=
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
