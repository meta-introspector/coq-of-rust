(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H : State.Trait} (_ : unit) : M (H := H) unit :=
  let* parsed :=
    let* α0 := "5".["parse"] in
    α0.["unwrap"] in
  let* turbo_parsed :=
    let* α0 := "10".["parse"] in
    α0.["unwrap"] in
  let* sum := parsed.["add"] turbo_parsed in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of sum) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "Sum: "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  Pure tt.
