(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let* args :=
    let* α0 := std.env.args tt in
    α0.["collect"] in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of args[0]) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "My path is "; ".
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := args.["len"] in
      let* α1 := α0.["sub"] 1 in
      let* α2 := format_argument::["new_debug"] (addr_of α1) in
      let* α3 :=
        format_argument::["new_debug"]
          (addr_of (addr_of args[RangeFrom {| RangeFrom.start := 1; |}])) in
      let* α4 :=
        format_arguments::["new_v1"]
          (addr_of [ "I got "; " arguments: "; ".
" ])
          (addr_of [ α2; α3 ]) in
      std.io.stdio._print α4 in
    Pure tt in
  Pure tt.