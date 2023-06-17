(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition NanoSecond : Set := u64.

Definition Inch : Set := u64.

Definition U64 : Set := u64.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let nanoseconds := cast 5 aliasing.U64 in
  let inches := cast 2 aliasing.U64 in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of nanoseconds) in
      let* α1 := format_argument::["new_display"] (addr_of inches) in
      let* α2 := nanoseconds.["add"] inches in
      let* α3 := format_argument::["new_display"] (addr_of α2) in
      let* α4 :=
        format_arguments::["new_v1"]
          (addr_of [ ""; " nanoseconds + "; " inches = "; " unit?
" ])
          (addr_of [ α0; α1; α3 ]) in
      std.io.stdio._print α4 in
    Pure tt in
  Pure tt.
