(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit := Pure tt.

Module asm := std.arch.asm.

Definition foo (arg : i32) : M i32 :=
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of arg) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "arg = "; "
" ])
          (addr_of [ α0 ]) in
      _crate.io._print α1 in
    Pure tt in
  arg.["mul"] 2.

Definition call_foo (arg : i32) : M i32 :=
  let result := tt in
  let _ := InlineAsm in
  Pure result.