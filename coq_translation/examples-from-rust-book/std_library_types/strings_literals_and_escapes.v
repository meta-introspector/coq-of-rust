(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition main (_ : unit) : unit :=
  let byte_escape := "I'm writing Rust!" in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["What are you doing? (\\x3F means ?) ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_display byte_escape]) ;;
  tt ;;
  let unicode_codepoint := "ℝ" in
  let character_name := "\"DOUBLE-STRUCK CAPITAL R\"" in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["Unicode character ";" (U+211D) is called ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_display
        unicode_codepoint;_crate::fmt::ImplArgumentV1.new_display
        character_name]) ;;
  tt ;;
  let long_string :=
    "String literals\n                        can span multiple lines.\n                        The linebreak and indentation here -><- can be escaped too!" in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["";"\n"]
      [_crate::fmt::ImplArgumentV1.new_display long_string]) ;;
  tt ;;
  tt.
