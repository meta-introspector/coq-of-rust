(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module asm := std.arch.asm.

Definition main (_ : unit) : unit :=
  let name_buf := repeat 0 in
  InlineAsm ;;
  tt ;;
  let name := (core.str.from_utf8 name_buf).["unwrap"] in
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "CPU Manufacturer ID: "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_display"] name ]) ;;
  tt ;;
  tt.

Definition main (_ : unit) : unit := test.
