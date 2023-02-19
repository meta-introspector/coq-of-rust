(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition destroy_box (_ : unit) :=
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["Destroying a box that contains ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_display c]) ;;
  tt ;;
  tt.

Definition main (_ : unit) :=
  let x := 5 in
  let y := x in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["x is ";", and y is ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_display
        x;_crate::fmt::ImplArgumentV1.new_display y]) ;;
  tt ;;
  let a := ImplBox.new 5 in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["a contains: ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_display a]) ;;
  tt ;;
  let b := a in
  destroy_box b ;;
  tt.
