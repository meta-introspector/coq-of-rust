(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition main (_ : unit) :=
  let x := 5 in
  let y :=
    let x_squared := mul x x in
    let x_cube := mul x_squared x in
    add (add x_cube x_squared) x in
  let z :=
    mul 2 x ;;
    tt in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["x is ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_debug x]) ;;
  tt ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["y is ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_debug y]) ;;
  tt ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["z is ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_debug z]) ;;
  tt ;;
  tt.
