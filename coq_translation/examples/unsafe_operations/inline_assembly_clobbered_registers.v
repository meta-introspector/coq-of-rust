(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module asm := std.arch.asm.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let* name_buf := repeat 0 in
  let _ := InlineAsm in
  let _ := tt in
  let* α0 := core.str.from_utf8 (deref name_buf) in
  let* name := α0.["unwrap"] in
  let* α1 := format_argument::["new_display"] (deref name) in
  let* α2 :=
    format_arguments::["new_v1"]
      (deref [ "CPU Manufacturer ID: "; "
" ])
      (deref [ α1 ]) in
  let* _ := _crate.io._print α2 in
  let _ := tt in
  Pure tt.
