(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    // Note that this is not actually a `&str`
    let bytestring: &[u8; 21] = b"this is a byte string";

    // Byte arrays don't have the `Display` trait, so printing them is a bit limited
    println!("A byte string: {:?}", bytestring);

    // Byte strings can have byte escapes...
    let escaped = b"\x52\x75\x73\x74 as bytes";
    // ...but no unicode escapes
    // let escaped = b"\u{211D} is not allowed";
    println!("Some escaped bytes: {:?}", escaped);

    // Raw byte strings work just like raw strings
    let raw_bytestring = br"\u{211D} is not escaped here";
    println!("{:?}", raw_bytestring);

    // Converting a byte array to `str` can fail
    if let Ok(my_str) = str::from_utf8(raw_bytestring) {
        println!("And the same as text: '{}'", my_str);
    }

    let _quotes = br#"You can also use "fancier" formatting, \
                    like with normal raw strings"#;

    // Byte strings don't have to be UTF-8
    let shift_jis = b"\x82\xe6\x82\xa8\x82\xb1\x82\xbb"; // "ようこそ" in SHIFT-JIS

    // But then they can't always be converted to `str`
    match str::from_utf8(shift_jis) {
        Ok(my_str) => println!("Conversion successful: '{}'", my_str),
        Err(e) => println!("Conversion failed: {:?}", e),
    };
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* bytestring : M.Val (ref (array u8.t)) :=
    let* α0 : ref (array u8.t) :=
      M.read (UnsupportedLiteral : M.Val (ref (array u8.t))) in
    M.alloc α0 in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "A byte string: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow bytestring)) in
      let* α4 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α3 ] in
      let* α5 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α4))) in
      let* α6 : unit := M.call (std.io.stdio._print α5) in
      M.alloc α6 in
    M.alloc tt in
  let* escaped : M.Val (ref (array u8.t)) :=
    M.copy (UnsupportedLiteral : M.Val (ref (array u8.t))) in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "Some escaped bytes: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow escaped)) in
      let* α4 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α3 ] in
      let* α5 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α4))) in
      let* α6 : unit := M.call (std.io.stdio._print α5) in
      M.alloc α6 in
    M.alloc tt in
  let* raw_bytestring : M.Val (ref (array u8.t)) :=
    M.copy (UnsupportedLiteral : M.Val (ref (array u8.t))) in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : core.fmt.rt.Argument.t :=
        M.call
          (core.fmt.rt.Argument.t::["new_debug"] (borrow raw_bytestring)) in
      let* α4 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α3 ] in
      let* α5 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α4))) in
      let* α6 : unit := M.call (std.io.stdio._print α5) in
      M.alloc α6 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* α0 : ref (array u8.t) := M.read raw_bytestring in
    let* α1 : core.result.Result.t (ref str.t) core.str.error.Utf8Error.t :=
      M.call (core.str.converts.from_utf8 (pointer_coercion "Unsize" α0)) in
    let* α2 :
        M.Val (core.result.Result.t (ref str.t) core.str.error.Utf8Error.t) :=
      M.alloc α1 in
    match_operator
      α2
      [
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | core.result.Result.Ok _ =>
            let γ0_0 := core.result.Result.Get_Ok_0 γ in
            let* my_str := M.copy γ0_0 in
            let* _ : M.Val unit :=
              let* _ : M.Val unit :=
                let* α0 : ref str.t :=
                  M.read (mk_str "And the same as text: '") in
                let* α1 : ref str.t := M.read (mk_str "'
") in
                let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
                let* α3 : core.fmt.rt.Argument.t :=
                  M.call
                    (core.fmt.rt.Argument.t::["new_display"] (borrow my_str)) in
                let* α4 : M.Val (array core.fmt.rt.Argument.t) :=
                  M.alloc [ α3 ] in
                let* α5 : core.fmt.Arguments.t :=
                  M.call
                    (core.fmt.Arguments.t::["new_v1"]
                      (pointer_coercion "Unsize" (borrow α2))
                      (pointer_coercion "Unsize" (borrow α4))) in
                let* α6 : unit := M.call (std.io.stdio._print α5) in
                M.alloc α6 in
              M.alloc tt in
            M.alloc tt
          | _ => M.break_match
          end) :
          M (M.Val unit);
        fun γ => (M.alloc tt) : M (M.Val unit)
      ] in
  let* _quotes : M.Val (ref (array u8.t)) :=
    M.copy (UnsupportedLiteral : M.Val (ref (array u8.t))) in
  let* shift_jis : M.Val (ref (array u8.t)) :=
    M.copy (UnsupportedLiteral : M.Val (ref (array u8.t))) in
  let* _ : M.Val unit :=
    let* α0 : ref (array u8.t) := M.read shift_jis in
    let* α1 : core.result.Result.t (ref str.t) core.str.error.Utf8Error.t :=
      M.call (core.str.converts.from_utf8 (pointer_coercion "Unsize" α0)) in
    let* α2 :
        M.Val (core.result.Result.t (ref str.t) core.str.error.Utf8Error.t) :=
      M.alloc α1 in
    match_operator
      α2
      [
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | core.result.Result.Ok _ =>
            let γ0_0 := core.result.Result.Get_Ok_0 γ in
            let* my_str := M.copy γ0_0 in
            let* _ : M.Val unit :=
              let* α0 : ref str.t :=
                M.read (mk_str "Conversion successful: '") in
              let* α1 : ref str.t := M.read (mk_str "'
") in
              let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
              let* α3 : core.fmt.rt.Argument.t :=
                M.call
                  (core.fmt.rt.Argument.t::["new_display"] (borrow my_str)) in
              let* α4 : M.Val (array core.fmt.rt.Argument.t) :=
                M.alloc [ α3 ] in
              let* α5 : core.fmt.Arguments.t :=
                M.call
                  (core.fmt.Arguments.t::["new_v1"]
                    (pointer_coercion "Unsize" (borrow α2))
                    (pointer_coercion "Unsize" (borrow α4))) in
              let* α6 : unit := M.call (std.io.stdio._print α5) in
              M.alloc α6 in
            M.alloc tt
          | _ => M.break_match
          end) :
          M (M.Val unit);
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | core.result.Result.Err _ =>
            let γ0_0 := core.result.Result.Get_Err_0 γ in
            let* e := M.copy γ0_0 in
            let* _ : M.Val unit :=
              let* α0 : ref str.t := M.read (mk_str "Conversion failed: ") in
              let* α1 : ref str.t := M.read (mk_str "
") in
              let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
              let* α3 : core.fmt.rt.Argument.t :=
                M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow e)) in
              let* α4 : M.Val (array core.fmt.rt.Argument.t) :=
                M.alloc [ α3 ] in
              let* α5 : core.fmt.Arguments.t :=
                M.call
                  (core.fmt.Arguments.t::["new_v1"]
                    (pointer_coercion "Unsize" (borrow α2))
                    (pointer_coercion "Unsize" (borrow α4))) in
              let* α6 : unit := M.call (std.io.stdio._print α5) in
              M.alloc α6 in
            M.alloc tt
          | _ => M.break_match
          end) :
          M (M.Val unit)
      ] in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
