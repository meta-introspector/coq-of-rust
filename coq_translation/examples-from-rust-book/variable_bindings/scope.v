(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition main (_ : unit) : unit :=
  let long_lived_binding := 1 in
  let short_lived_binding := 2 in
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "inner short: "; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_display short_lived_binding ]) ;;
  tt ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "outer long: "; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_display long_lived_binding ]) ;;
  tt ;;
  tt.
