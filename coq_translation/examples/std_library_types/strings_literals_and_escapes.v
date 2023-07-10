(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H : State.Trait} (_ : unit) : M (H := H) unit :=
  let byte_escape := "I'm writing Rust!" in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of byte_escape) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "What are you doing? (\x3F means ?) "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let unicode_codepoint := String.String "29" "" in
  let character_name := ""DOUBLE-STRUCK CAPITAL R"" in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of unicode_codepoint) in
      let* α1 := format_argument::["new_display"] (addr_of character_name) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ "Unicode character "; " (U+211D) is called "; "
" ])
          (addr_of [ α0; α1 ]) in
      std.io.stdio._print α2 in
    Pure tt in
  let long_string :=
    "String literals
                        can span multiple lines.
                        The linebreak and indentation here -><- can be escaped too!" in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of long_string) in
      let* α1 :=
        format_arguments::["new_v1"] (addr_of [ ""; "
" ]) (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  Pure tt.
