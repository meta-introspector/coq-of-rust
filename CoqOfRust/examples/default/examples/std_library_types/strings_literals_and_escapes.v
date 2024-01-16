(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    // You can use escapes to write bytes by their hexadecimal values...
    let byte_escape = "I'm writing \x52\x75\x73\x74!";
    println!("What are you doing\x3F (\\x3F means ?) {}", byte_escape);

    // ...or Unicode code points.
    let unicode_codepoint = "\u{211D}";
    let character_name = "\"DOUBLE-STRUCK CAPITAL R\"";

    println!(
        "Unicode character {} (U+211D) is called {}",
        unicode_codepoint, character_name
    );

    let long_string = "String literals
                        can span multiple lines.
                        The linebreak and indentation here ->\
                        <- can be escaped too!";
    println!("{}", long_string);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* byte_escape : M.Val (ref str.t) := M.copy (mk_str "I'm writing Rust!") in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t :=
        M.read (mk_str "What are you doing? (\x3F means ?) ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow byte_escape)) in
      let* α4 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α3 ] in
      let* α5 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α4))) in
      let* α6 : unit := M.call (std.io.stdio._print α5) in
      M.alloc α6 in
    M.alloc tt in
  let* unicode_codepoint : M.Val (ref str.t) :=
    M.copy (mk_str (String.String "29" "")) in
  let* character_name : M.Val (ref str.t) :=
    M.copy (mk_str """DOUBLE-STRUCK CAPITAL R""") in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "Unicode character ") in
      let* α1 : ref str.t := M.read (mk_str " (U+211D) is called ") in
      let* α2 : ref str.t := M.read (mk_str "
") in
      let* α3 : M.Val (array (ref str.t)) := M.alloc [ α0; α1; α2 ] in
      let* α4 : core.fmt.rt.Argument.t :=
        M.call
          (core.fmt.rt.Argument.t::["new_display"]
            (borrow unicode_codepoint)) in
      let* α5 : core.fmt.rt.Argument.t :=
        M.call
          (core.fmt.rt.Argument.t::["new_display"] (borrow character_name)) in
      let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4; α5 ] in
      let* α7 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α3))
            (pointer_coercion "Unsize" (borrow α6))) in
      let* α8 : unit := M.call (std.io.stdio._print α7) in
      M.alloc α8 in
    M.alloc tt in
  let* long_string : M.Val (ref str.t) :=
    M.copy
      (mk_str
        "String literals
                        can span multiple lines.
                        The linebreak and indentation here -><- can be escaped too!") in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow long_string)) in
      let* α4 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α3 ] in
      let* α5 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α4))) in
      let* α6 : unit := M.call (std.io.stdio._print α5) in
      M.alloc α6 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
