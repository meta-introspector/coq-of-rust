(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let* strings :=
    let* α0 := _crate.boxed.Box::["new"] [ "tofu"; "93"; "18" ] in
    Slice::["into_vec"] α0 in
  let* '(numbers, errors) :=
    let* α0 := strings.["into_iter"] in
    let* α1 := α0.["map"] (fun s => s.["parse"]) in
    α1.["partition"] Result::["is_ok"] in
  let* numbers :=
    let* α0 := numbers.["into_iter"] in
    let* α1 := α0.["map"] Result::["unwrap"] in
    α1.["collect"] in
  let* errors :=
    let* α0 := errors.["into_iter"] in
    let* α1 := α0.["map"] Result::["unwrap_err"] in
    α1.["collect"] in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of numbers) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "Numbers: "; "
" ])
          (addr_of [ α0 ]) in
      _crate.io._print α1 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of errors) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "Errors: "; "
" ])
          (addr_of [ α0 ]) in
      _crate.io._print α1 in
    Pure tt in
  Pure tt.
