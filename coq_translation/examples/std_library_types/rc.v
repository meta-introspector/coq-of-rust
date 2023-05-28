(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Rc := std.rc.Rc.
Definition Rc := Rc.t.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  let rc_examples := "Rc examples".["to_string"] in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_const"] [ "--- rc_a is created ---
" ]) in
    tt in
  let rc_a := Rc::["new"] rc_examples in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "Reference Count of rc_a: "; "
" ]
          [ format_argument::["new_display"] (Rc::["strong_count"] rc_a) ]) in
    tt in
  let _ :=
    let _ :=
      let _ :=
        _crate.io._print
          (format_arguments::["new_const"]
            [ "--- rc_a is cloned to rc_b ---
" ]) in
      tt in
    let rc_b := Rc::["clone"] rc_a in
    let _ :=
      let _ :=
        _crate.io._print
          (format_arguments::["new_v1"]
            [ "Reference Count of rc_b: "; "
" ]
            [ format_argument::["new_display"] (Rc::["strong_count"] rc_b) ]) in
      tt in
    let _ :=
      let _ :=
        _crate.io._print
          (format_arguments::["new_v1"]
            [ "Reference Count of rc_a: "; "
" ]
            [ format_argument::["new_display"] (Rc::["strong_count"] rc_a) ]) in
      tt in
    let _ :=
      let _ :=
        _crate.io._print
          (format_arguments::["new_v1"]
            [ "rc_a and rc_b are equal: "; "
" ]
            [ format_argument::["new_display"] (rc_a.["eq"] rc_b) ]) in
      tt in
    let _ :=
      let _ :=
        _crate.io._print
          (format_arguments::["new_v1"]
            [ "Length of the value inside rc_a: "; "
" ]
            [ format_argument::["new_display"] rc_a.["len"] ]) in
      tt in
    let _ :=
      let _ :=
        _crate.io._print
          (format_arguments::["new_v1"]
            [ "Value of rc_b: "; "
" ]
            [ format_argument::["new_display"] rc_b ]) in
      tt in
    let _ :=
      let _ :=
        _crate.io._print
          (format_arguments::["new_const"]
            [ "--- rc_b is dropped out of scope ---
" ]) in
      tt in
    tt in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "Reference Count of rc_a: "; "
" ]
          [ format_argument::["new_display"] (Rc::["strong_count"] rc_a) ]) in
    tt in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_const"]
          [ "--- rc_a is dropped out of scope ---
" ]) in
    tt in
  tt.
