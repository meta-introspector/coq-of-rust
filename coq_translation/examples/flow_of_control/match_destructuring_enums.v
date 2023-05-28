(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Color.
  Inductive t : Set :=
  | Red
  | Blue
  | Green
  | RGB (_ : u32) (_ : u32) (_ : u32)
  | HSV (_ : u32) (_ : u32) (_ : u32)
  | HSL (_ : u32) (_ : u32) (_ : u32)
  | CMY (_ : u32) (_ : u32) (_ : u32)
  | CMYK (_ : u32) (_ : u32) (_ : u32) (_ : u32).
End Color.
Definition Color := Color.t.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  let color := Color.RGB 122 17 40 in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_const"] [ "What color is it?
" ]) in
    tt in
  match color with
  | Color.Red =>
    let _ :=
      _crate.io._print
        (format_arguments::["new_const"] [ "The color is Red!
" ]) in
    tt
  | Color.Blue =>
    let _ :=
      _crate.io._print
        (format_arguments::["new_const"] [ "The color is Blue!
" ]) in
    tt
  | Color.Green =>
    let _ :=
      _crate.io._print
        (format_arguments::["new_const"] [ "The color is Green!
" ]) in
    tt
  | Color.RGB r g b =>
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "Red: "; ", green: "; ", and blue: "; "!
" ]
          [
            format_argument::["new_display"] r;
            format_argument::["new_display"] g;
            format_argument::["new_display"] b
          ]) in
    tt
  | Color.HSV h s v =>
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "Hue: "; ", saturation: "; ", value: "; "!
" ]
          [
            format_argument::["new_display"] h;
            format_argument::["new_display"] s;
            format_argument::["new_display"] v
          ]) in
    tt
  | Color.HSL h s l =>
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "Hue: "; ", saturation: "; ", lightness: "; "!
" ]
          [
            format_argument::["new_display"] h;
            format_argument::["new_display"] s;
            format_argument::["new_display"] l
          ]) in
    tt
  | Color.CMY c m y =>
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "Cyan: "; ", magenta: "; ", yellow: "; "!
" ]
          [
            format_argument::["new_display"] c;
            format_argument::["new_display"] m;
            format_argument::["new_display"] y
          ]) in
    tt
  | Color.CMYK c m y k =>
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "Cyan: "; ", magenta: "; ", yellow: "; ", key (black): "; "!
" ]
          [
            format_argument::["new_display"] c;
            format_argument::["new_display"] m;
            format_argument::["new_display"] y;
            format_argument::["new_display"] k
          ]) in
    tt
  end.
