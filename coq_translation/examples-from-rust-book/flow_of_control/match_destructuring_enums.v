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

Definition main (_ : unit) : unit :=
  let color := Color.RGB 122 17 40 in
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"] [ "What color is it?\n" ] [  ]) ;;
  tt ;;
  match color with
  | Color.Red =>
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"] [ "The color is Red!\n" ] [  ]) ;;
    tt
  | Color.Blue =>
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"] [ "The color is Blue!\n" ] [  ]) ;;
    tt
  | Color.Green =>
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"] [ "The color is Green!\n" ] [  ]) ;;
    tt
  | Color.RGB (r, g, b) =>
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"]
        [ "Red: "; ", green: "; ", and blue: "; "!\n" ]
        [
          _crate.fmt.ArgumentV1::["new_display"] r;
          _crate.fmt.ArgumentV1::["new_display"] g;
          _crate.fmt.ArgumentV1::["new_display"] b
        ]) ;;
    tt
  | Color.HSV (h, s, v) =>
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"]
        [ "Hue: "; ", saturation: "; ", value: "; "!\n" ]
        [
          _crate.fmt.ArgumentV1::["new_display"] h;
          _crate.fmt.ArgumentV1::["new_display"] s;
          _crate.fmt.ArgumentV1::["new_display"] v
        ]) ;;
    tt
  | Color.HSL (h, s, l) =>
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"]
        [ "Hue: "; ", saturation: "; ", lightness: "; "!\n" ]
        [
          _crate.fmt.ArgumentV1::["new_display"] h;
          _crate.fmt.ArgumentV1::["new_display"] s;
          _crate.fmt.ArgumentV1::["new_display"] l
        ]) ;;
    tt
  | Color.CMY (c, m, y) =>
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"]
        [ "Cyan: "; ", magenta: "; ", yellow: "; "!\n" ]
        [
          _crate.fmt.ArgumentV1::["new_display"] c;
          _crate.fmt.ArgumentV1::["new_display"] m;
          _crate.fmt.ArgumentV1::["new_display"] y
        ]) ;;
    tt
  | Color.CMYK (c, m, y, k) =>
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"]
        [ "Cyan: "; ", magenta: "; ", yellow: "; ", key (black): "; "!\n" ]
        [
          _crate.fmt.ArgumentV1::["new_display"] c;
          _crate.fmt.ArgumentV1::["new_display"] m;
          _crate.fmt.ArgumentV1::["new_display"] y;
          _crate.fmt.ArgumentV1::["new_display"] k
        ]) ;;
    tt
  end.
