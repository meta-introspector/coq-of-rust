(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let decimal := 65 (* 65.4321 *) in
  let integer := decimal in
  let integer := cast decimal u8 in
  let character := cast integer char in
  let character := cast decimal char in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of decimal) in
      let* α1 := format_argument::["new_display"] (addr_of integer) in
      let* α2 := format_argument::["new_display"] (addr_of character) in
      let* α3 :=
        format_arguments::["new_v1"]
          (addr_of [ "Casting: "; " -> "; " -> "; "
" ])
          (addr_of [ α0; α1; α2 ]) in
      std.io.stdio._print α3 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of (cast 1000 u16)) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "1000 as a u16 is: "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of (cast 1000 u8)) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "1000 as a u8 is : "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := 1.["neg"] in
      let* α1 := format_argument::["new_display"] (addr_of (cast α0 u8)) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ "  -1 as a u8 is : "; "
" ])
          (addr_of [ α1 ]) in
      std.io.stdio._print α2 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := 1000.["rem"] 256 in
      let* α1 := format_argument::["new_display"] (addr_of α0) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ "1000 mod 256 is : "; "
" ])
          (addr_of [ α1 ]) in
      std.io.stdio._print α2 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of (cast 128 i16)) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ " 128 as a i16 is: "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of (cast 128 i8)) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ " 128 as a i8 is : "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of (cast 1000 u8)) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "1000 as a u8 is : "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of (cast 232 i8)) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ " 232 as a i8 is : "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        format_argument::["new_display"] (addr_of (cast 300 (* 300.0 *) u8)) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ " 300.0 as u8 is : "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := 100 (* 100.0 *).["neg"] in
      let* α1 := format_argument::["new_display"] (addr_of (cast α0 u8)) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ "-100.0 as u8 is : "; "
" ])
          (addr_of [ α1 ]) in
      std.io.stdio._print α2 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        format_argument::["new_display"] (addr_of (cast f32::["NAN"] u8)) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "   nan as u8 is : "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := 300 (* 300.0 *).["to_int_unchecked"] in
      let* α1 := format_argument::["new_display"] (addr_of α0) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ " 300.0 as u8 is : "; "
" ])
          (addr_of [ α1 ]) in
      std.io.stdio._print α2 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := 100 (* 100.0 *).["neg"] in
      let* α1 := α0.["to_int_unchecked"] in
      let* α2 := format_argument::["new_display"] (addr_of α1) in
      let* α3 :=
        format_arguments::["new_v1"]
          (addr_of [ "-100.0 as u8 is : "; "
" ])
          (addr_of [ α2 ]) in
      std.io.stdio._print α3 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := f32::["NAN"].["to_int_unchecked"] in
      let* α1 := format_argument::["new_display"] (addr_of α0) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ "   nan as u8 is : "; "
" ])
          (addr_of [ α1 ]) in
      std.io.stdio._print α2 in
    Pure tt in
  Pure tt.
