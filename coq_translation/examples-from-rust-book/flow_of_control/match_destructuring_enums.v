(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Error Enum.

Definition main (_ : unit) : unit :=
  let color := Color.RGB 122 17 40 in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1 ["What color is it?\n"] []) ;;
  tt ;;
  match color with
  | Color.Red =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1 ["The color is Red!\n"] []) ;;
    tt
  | Color.Blue =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1 ["The color is Blue!\n"] []) ;;
    tt
  | Color.Green =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1 ["The color is Green!\n"] []) ;;
    tt
  | Color.RGB (r, g, b) =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1
        ["Red: ";", green: ";", and blue: ";"!\n"]
        [_crate::fmt::ImplArgumentV1.new_display
          r;_crate::fmt::ImplArgumentV1.new_display
          g;_crate::fmt::ImplArgumentV1.new_display b]) ;;
    tt
  | Color.HSV (h, s, v) =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1
        ["Hue: ";", saturation: ";", value: ";"!\n"]
        [_crate::fmt::ImplArgumentV1.new_display
          h;_crate::fmt::ImplArgumentV1.new_display
          s;_crate::fmt::ImplArgumentV1.new_display v]) ;;
    tt
  | Color.HSL (h, s, l) =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1
        ["Hue: ";", saturation: ";", lightness: ";"!\n"]
        [_crate::fmt::ImplArgumentV1.new_display
          h;_crate::fmt::ImplArgumentV1.new_display
          s;_crate::fmt::ImplArgumentV1.new_display l]) ;;
    tt
  | Color.CMY (c, m, y) =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1
        ["Cyan: ";", magenta: ";", yellow: ";"!\n"]
        [_crate::fmt::ImplArgumentV1.new_display
          c;_crate::fmt::ImplArgumentV1.new_display
          m;_crate::fmt::ImplArgumentV1.new_display y]) ;;
    tt
  | Color.CMYK (c, m, y, k) =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1
        ["Cyan: ";", magenta: ";", yellow: ";", key (black): ";"!\n"]
        [_crate::fmt::ImplArgumentV1.new_display
          c;_crate::fmt::ImplArgumentV1.new_display
          m;_crate::fmt::ImplArgumentV1.new_display
          y;_crate::fmt::ImplArgumentV1.new_display k]) ;;
    tt
  end.
