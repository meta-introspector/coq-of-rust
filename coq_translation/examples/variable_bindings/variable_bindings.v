(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let an_integer := 1 in
  let a_boolean := true in
  let unit := tt in
  let copied_integer := an_integer in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of copied_integer) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "An integer: "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of a_boolean) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "A boolean: "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of unit) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "Meet the unit value: "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let _unused_variable := 3 in
  let _noisy_unused_variable := 2 in
  Pure tt.
