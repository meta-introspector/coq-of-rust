(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let* α0 := _crate.boxed.Box::["new"] [ "tofu"; "93"; "18" ] in
  let* strings := Slice::["into_vec"] α0 in
  let* α1 := strings.["into_iter"] in
  let* α2 := α1.["map"] (fun s => s.["parse"]) in
  let* α3 := α2.["partition"] Result::["is_ok"] in
  let '(numbers, errors) := α3 in
  let* α4 := numbers.["into_iter"] in
  let* α5 := α4.["map"] Result::["unwrap"] in
  let* numbers := α5.["collect"] in
  let* α6 := errors.["into_iter"] in
  let* α7 := α6.["map"] Result::["unwrap_err"] in
  let* errors := α7.["collect"] in
  let* α8 := format_argument::["new_debug"] (deref numbers) in
  let* α9 :=
    format_arguments::["new_v1"] (deref [ "Numbers: "; "
" ]) (deref [ α8 ]) in
  let* _ := _crate.io._print α9 in
  let _ := tt in
  let* α10 := format_argument::["new_debug"] (deref errors) in
  let* α11 :=
    format_arguments::["new_v1"] (deref [ "Errors: "; "
" ]) (deref [ α10 ]) in
  let* _ := _crate.io._print α11 in
  let _ := tt in
  Pure tt.
