(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition foo (_ : unit) : M unit :=
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of "foo") in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "You called "; "()
" ])
          (addr_of [ α0 ]) in
      _crate.io._print α1 in
    Pure tt in
  Pure tt.

Definition bar (_ : unit) : M unit :=
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of "bar") in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "You called "; "()
" ])
          (addr_of [ α0 ]) in
      _crate.io._print α1 in
    Pure tt in
  Pure tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let* _ := foo tt in
  let* _ := bar tt in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of "1u32 + 1") in
      let* α1 := 1.["add"] 1 in
      let* α2 := format_argument::["new_debug"] (addr_of α1) in
      let* α3 :=
        format_arguments::["new_v1"]
          (addr_of [ ""; " = "; "
" ])
          (addr_of [ α0; α2 ]) in
      _crate.io._print α3 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        format_argument::["new_debug"]
          (addr_of "{ let x = 1u32; x * x + 2 * x - 1 }") in
      let x := 1 in
      let* α0 := x.["mul"] x in
      let* α1 := 2.["mul"] x in
      let* α2 := α0.["add"] α1 in
      let* α1 := α2.["sub"] 1 in
      let* α2 := format_argument::["new_debug"] (addr_of α1) in
      let* α3 :=
        format_arguments::["new_v1"]
          (addr_of [ ""; " = "; "
" ])
          (addr_of [ α0; α2 ]) in
      _crate.io._print α3 in
    Pure tt in
  Pure tt.
