(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module env := std.env.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let* α0 := env.args tt in
  let* args := α0.["collect"] in
  let* α1 := format_argument::["new_display"] (deref args[0]) in
  let* α2 :=
    format_arguments::["new_v1"]
      (deref [ "My path is "; ".
" ])
      (deref [ α1 ]) in
  let* _ := _crate.io._print α2 in
  let _ := tt in
  let* α3 := args.["len"] in
  let* α4 := α3.["sub"] 1 in
  let* α5 := format_argument::["new_debug"] (deref α4) in
  let* α6 :=
    format_argument::["new_debug"]
      (deref (deref args[RangeFrom {| RangeFrom.start := 1; |}])) in
  let* α7 :=
    format_arguments::["new_v1"]
      (deref [ "I got "; " arguments: "; ".
" ])
      (deref [ α5; α6 ]) in
  let* _ := _crate.io._print α7 in
  let _ := tt in
  Pure tt.
