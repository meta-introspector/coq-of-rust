(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition elided_input (x : ref i32) : M unit :=
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of x) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "`elided_input`: "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  Pure tt.

Definition annotated_input (x : ref i32) : M unit :=
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of x) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "`annotated_input`: "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  Pure tt.

Definition elided_pass (x : ref i32) : M (ref i32) := Pure x.

Definition annotated_pass (x : ref i32) : M (ref i32) := Pure x.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let x := 3 in
  let* _ := scoping_rules_lifetimes_elision.elided_input (addr_of x) in
  let* _ := scoping_rules_lifetimes_elision.annotated_input (addr_of x) in
  let* _ :=
    let* _ :=
      let* α0 := scoping_rules_lifetimes_elision.elided_pass (addr_of x) in
      let* α1 := format_argument::["new_display"] (addr_of α0) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ "`elided_pass`: "; "
" ])
          (addr_of [ α1 ]) in
      std.io.stdio._print α2 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := scoping_rules_lifetimes_elision.annotated_pass (addr_of x) in
      let* α1 := format_argument::["new_display"] (addr_of α0) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ "`annotated_pass`: "; "
" ])
          (addr_of [ α1 ]) in
      std.io.stdio._print α2 in
    Pure tt in
  Pure tt.
