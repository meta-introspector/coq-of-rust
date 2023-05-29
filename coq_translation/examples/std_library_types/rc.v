(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Rc := std.rc.Rc.
Definition Rc := Rc.t.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let* rc_examples := "Rc examples".["to_string"] in
  let* α0 :=
    format_arguments::["new_const"] (deref [ "--- rc_a is created ---
" ]) in
  let* _ := _crate.io._print α0 in
  let _ := tt in
  let* rc_a := Rc::["new"] rc_examples in
  let* α1 := Rc::["strong_count"] (deref rc_a) in
  let* α2 := format_argument::["new_display"] (deref α1) in
  let* α3 :=
    format_arguments::["new_v1"]
      (deref [ "Reference Count of rc_a: "; "
" ])
      (deref [ α2 ]) in
  let* _ := _crate.io._print α3 in
  let _ := tt in
  let* α4 :=
    format_arguments::["new_const"]
      (deref [ "--- rc_a is cloned to rc_b ---
" ]) in
  let* _ := _crate.io._print α4 in
  let _ := tt in
  let* rc_b := Rc::["clone"] (deref rc_a) in
  let* α5 := Rc::["strong_count"] (deref rc_b) in
  let* α6 := format_argument::["new_display"] (deref α5) in
  let* α7 :=
    format_arguments::["new_v1"]
      (deref [ "Reference Count of rc_b: "; "
" ])
      (deref [ α6 ]) in
  let* _ := _crate.io._print α7 in
  let _ := tt in
  let* α8 := Rc::["strong_count"] (deref rc_a) in
  let* α9 := format_argument::["new_display"] (deref α8) in
  let* α10 :=
    format_arguments::["new_v1"]
      (deref [ "Reference Count of rc_a: "; "
" ])
      (deref [ α9 ]) in
  let* _ := _crate.io._print α10 in
  let _ := tt in
  let* α11 := rc_a.["eq"] (deref rc_b) in
  let* α12 := format_argument::["new_display"] (deref α11) in
  let* α13 :=
    format_arguments::["new_v1"]
      (deref [ "rc_a and rc_b are equal: "; "
" ])
      (deref [ α12 ]) in
  let* _ := _crate.io._print α13 in
  let _ := tt in
  let* α14 := rc_a.["len"] in
  let* α15 := format_argument::["new_display"] (deref α14) in
  let* α16 :=
    format_arguments::["new_v1"]
      (deref [ "Length of the value inside rc_a: "; "
" ])
      (deref [ α15 ]) in
  let* _ := _crate.io._print α16 in
  let _ := tt in
  let* α17 := format_argument::["new_display"] (deref rc_b) in
  let* α18 :=
    format_arguments::["new_v1"]
      (deref [ "Value of rc_b: "; "
" ])
      (deref [ α17 ]) in
  let* _ := _crate.io._print α18 in
  let _ := tt in
  let* α19 :=
    format_arguments::["new_const"]
      (deref [ "--- rc_b is dropped out of scope ---
" ]) in
  let* _ := _crate.io._print α19 in
  let _ := tt in
  let _ := tt in
  let* α20 := Rc::["strong_count"] (deref rc_a) in
  let* α21 := format_argument::["new_display"] (deref α20) in
  let* α22 :=
    format_arguments::["new_v1"]
      (deref [ "Reference Count of rc_a: "; "
" ])
      (deref [ α21 ]) in
  let* _ := _crate.io._print α22 in
  let _ := tt in
  let* α23 :=
    format_arguments::["new_const"]
      (deref [ "--- rc_a is dropped out of scope ---
" ]) in
  let* _ := _crate.io._print α23 in
  let _ := tt in
  Pure tt.
