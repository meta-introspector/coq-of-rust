(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  let decimal := 65 (* 65.4321 *) in
  let integer := decimal in
  let integer := cast decimal u8 in
  let character := cast integer char in
  let character := cast decimal char in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "Casting: "; " -> "; " -> "; "
" ]
          [
            format_argument::["new_display"] decimal;
            format_argument::["new_display"] integer;
            format_argument::["new_display"] character
          ]) in
    tt in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "1000 as a u16 is: "; "
" ]
          [ format_argument::["new_display"] (cast 1000 u16) ]) in
    tt in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "1000 as a u8 is : "; "
" ]
          [ format_argument::["new_display"] (cast 1000 u8) ]) in
    tt in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "  -1 as a u8 is : "; "
" ]
          [ format_argument::["new_display"] (cast 1.["neg"] u8) ]) in
    tt in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "1000 mod 256 is : "; "
" ]
          [ format_argument::["new_display"] (1000.["rem"] 256) ]) in
    tt in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ " 128 as a i16 is: "; "
" ]
          [ format_argument::["new_display"] (cast 128 i16) ]) in
    tt in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ " 128 as a i8 is : "; "
" ]
          [ format_argument::["new_display"] (cast 128 i8) ]) in
    tt in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "1000 as a u8 is : "; "
" ]
          [ format_argument::["new_display"] (cast 1000 u8) ]) in
    tt in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ " 232 as a i8 is : "; "
" ]
          [ format_argument::["new_display"] (cast 232 i8) ]) in
    tt in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ " 300.0 as u8 is : "; "
" ]
          [ format_argument::["new_display"] (cast 300 (* 300.0 *) u8) ]) in
    tt in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "-100.0 as u8 is : "; "
" ]
          [ format_argument::["new_display"] (cast 100 (* 100.0 *).["neg"] u8)
          ]) in
    tt in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "   nan as u8 is : "; "
" ]
          [ format_argument::["new_display"] (cast f32::["NAN"] u8) ]) in
    tt in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ " 300.0 as u8 is : "; "
" ]
          [
            format_argument::["new_display"]
              300 (* 300.0 *).["to_int_unchecked"]
          ]) in
    tt in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "-100.0 as u8 is : "; "
" ]
          [
            format_argument::["new_display"]
              100 (* 100.0 *).["neg"].["to_int_unchecked"]
          ]) in
    tt in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "   nan as u8 is : "; "
" ]
          [ format_argument::["new_display"] f32::["NAN"].["to_int_unchecked"]
          ]) in
    tt in
  tt.
