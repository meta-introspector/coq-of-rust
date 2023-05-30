(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition compare_prints
    {T : Set}
    `{Debug.Trait T}
    `{Display.Trait T}
    (t : ref T)
    : M unit :=
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of t) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "Debug: `"; "`
" ])
          (addr_of [ α0 ]) in
      _crate.io._print α1 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of t) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "Display: `"; "`
" ])
          (addr_of [ α0 ]) in
      _crate.io._print α1 in
    Pure tt in
  Pure tt.

Definition compare_types
    {T U : Set}
    `{Debug.Trait T}
    `{Debug.Trait U}
    (t : ref T)
    (u : ref U)
    : M unit :=
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of t) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "t: `"; "`
" ])
          (addr_of [ α0 ]) in
      _crate.io._print α1 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of u) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "u: `"; "`
" ])
          (addr_of [ α0 ]) in
      _crate.io._print α1 in
    Pure tt in
  Pure tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let string := "words" in
  let array := [ 1; 2; 3 ] in
  let* vec :=
    let* α0 := _crate.boxed.Box::["new"] [ 1; 2; 3 ] in
    Slice::["into_vec"] α0 in
  let* _ := compare_prints (addr_of string) in
  let* _ := compare_types (addr_of array) (addr_of vec) in
  Pure tt.
