(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition main (_ : unit) : unit :=
  let a_binding := tt in
  let x := 2 in
  assign a_binding (mul x x) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "a binding: "; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_display a_binding ]) ;;
  tt ;;
  let another_binding := tt in
  assign another_binding 1 ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "another binding: "; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_display another_binding ]) ;;
  tt ;;
  tt.
