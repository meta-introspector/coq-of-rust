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
Definition main : M (M.Val unit) :=
  M.function_body
    (let* bytestring : ltac:(refine (M.Val (ref (array u8.t)))) :=
      let* α0 : ltac:(refine (M.Val (ref (array u8.t)))) :=
        [116, 104, 105, 115, 32, 105, 115, 32, 97, 32, 98, 121, 116, 101, 32, 115, 116, 114, 105, 110, 103] in
      let* α1 : ltac:(refine (M.Val (array u8.t))) := deref α0 in
      let* α2 : ltac:(refine (M.Val (ref (array u8.t)))) := borrow α1 in
      M.copy α2 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "A byte string: "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref (ref (array u8.t))))) :=
          borrow bytestring in
        let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_debug"] α3 in
        let* α5 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α4 ] in
        let* α6 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α5 in
        let* α7 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α7 in
        std.io.stdio._print α8 in
      M.alloc tt in
    let* escaped : ltac:(refine (M.Val (ref (array u8.t)))) :=
      let* α0 : ltac:(refine (M.Val (ref (array u8.t)))) :=
        [82, 117, 115, 116, 32, 97, 115, 32, 98, 121, 116, 101, 115] in
      M.copy α0 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "Some escaped bytes: "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref (ref (array u8.t))))) :=
          borrow escaped in
        let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_debug"] α3 in
        let* α5 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α4 ] in
        let* α6 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α5 in
        let* α7 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α7 in
        std.io.stdio._print α8 in
      M.alloc tt in
    let* raw_bytestring : ltac:(refine (M.Val (ref (array u8.t)))) :=
      let* α0 : ltac:(refine (M.Val (ref (array u8.t)))) :=
        [92, 117, 123, 50, 49, 49, 68, 125, 32, 105, 115, 32, 110, 111, 116, 32, 101, 115, 99, 97, 112, 101, 100, 32, 104, 101, 114, 101] in
      M.copy α0 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str ""; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref (ref (array u8.t))))) :=
          borrow raw_bytestring in
        let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_debug"] α3 in
        let* α5 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α4 ] in
        let* α6 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α5 in
        let* α7 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α7 in
        std.io.stdio._print α8 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* α0 : ltac:(refine (M.Val (array u8.t))) := deref raw_bytestring in
      let* α1 : ltac:(refine (M.Val (ref (array u8.t)))) := borrow α0 in
      let* α2 : ltac:(refine (M.Val (ref (slice u8.t)))) :=
        pointer_coercion "Unsize" α1 in
      let* α3 :
          ltac:(refine
            (M.Val
              (core.result.Result.t (ref str.t) core.str.error.Utf8Error.t))) :=
        core.str.converts.from_utf8 α2 in
      let* α4 : ltac:(refine (M.Val bool.t)) :=
        let_if core.result.Result.Ok my_str := α3 in
      let* α5 := M.read α4 in
      if (α5 : bool) then
        let* _ : ltac:(refine (M.Val unit)) :=
          let* _ : ltac:(refine (M.Val unit)) :=
            let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
              M.alloc [ mk_str "And the same as text: '"; mk_str "'
" ] in
            let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
              borrow α0 in
            let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
              pointer_coercion "Unsize" α1 in
            let* α3 : ltac:(refine (M.Val (ref (ref str.t)))) :=
              borrow my_str in
            let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
              core.fmt.rt.Argument.t::["new_display"] α3 in
            let* α5 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
              M.alloc [ α4 ] in
            let* α6 :
                ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
              borrow α5 in
            let* α7 :
                ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
              pointer_coercion "Unsize" α6 in
            let* α8 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
              core.fmt.Arguments.t::["new_v1"] α2 α7 in
            std.io.stdio._print α8 in
          M.alloc tt in
        M.alloc tt
      else
        M.alloc tt in
    let* _quotes : ltac:(refine (M.Val (ref (array u8.t)))) :=
      let* α0 : ltac:(refine (M.Val (ref (array u8.t)))) :=
        [89, 111, 117, 32, 99, 97, 110, 32, 97, 108, 115, 111, 32, 117, 115, 101, 32, 34, 102, 97, 110, 99, 105, 101, 114, 34, 32, 102, 111, 114, 109, 97, 116, 116, 105, 110, 103, 44, 32, 92, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 105, 107, 101, 32, 119, 105, 116, 104, 32, 110, 111, 114, 109, 97, 108, 32, 114, 97, 119, 32, 115, 116, 114, 105, 110, 103, 115] in
      M.copy α0 in
    let* shift_jis : ltac:(refine (M.Val (ref (array u8.t)))) :=
      let* α0 : ltac:(refine (M.Val (ref (array u8.t)))) :=
        [130, 230, 130, 168, 130, 177, 130, 187] in
      M.copy α0 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* α0 : ltac:(refine (M.Val (array u8.t))) := deref shift_jis in
      let* α1 : ltac:(refine (M.Val (ref (array u8.t)))) := borrow α0 in
      let* α2 : ltac:(refine (M.Val (ref (slice u8.t)))) :=
        pointer_coercion "Unsize" α1 in
      let* α3 :
          ltac:(refine
            (M.Val
              (core.result.Result.t (ref str.t) core.str.error.Utf8Error.t))) :=
        core.str.converts.from_utf8 α2 in
      let* α4 := M.read α3 in
      match α4 with
      | core.result.Result.Ok my_str =>
        let* my_str := M.alloc my_str in
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
            M.alloc [ mk_str "Conversion successful: '"; mk_str "'
" ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (M.Val (ref (ref str.t)))) := borrow my_str in
          let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
            core.fmt.rt.Argument.t::["new_display"] α3 in
          let* α5 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
            M.alloc [ α4 ] in
          let* α6 :
              ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
            borrow α5 in
          let* α7 :
              ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
            pointer_coercion "Unsize" α6 in
          let* α8 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
            core.fmt.Arguments.t::["new_v1"] α2 α7 in
          std.io.stdio._print α8 in
        M.alloc tt
      | core.result.Result.Err e =>
        let* e := M.alloc e in
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
            M.alloc [ mk_str "Conversion failed: "; mk_str "
" ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (M.Val (ref core.str.error.Utf8Error.t))) :=
            borrow e in
          let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
            core.fmt.rt.Argument.t::["new_debug"] α3 in
          let* α5 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
            M.alloc [ α4 ] in
          let* α6 :
              ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
            borrow α5 in
          let* α7 :
              ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
            pointer_coercion "Unsize" α6 in
          let* α8 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
            core.fmt.Arguments.t::["new_v1"] α2 α7 in
          std.io.stdio._print α8 in
        M.alloc tt
      end in
    M.alloc tt).
