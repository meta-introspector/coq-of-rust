(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* name_buf : ltac:(refine (array u8)) :=
      let* α0 : ltac:(refine u8) := M.alloc 0 in
      repeat α0 12 in
    let* _ : ltac:(refine unit) :=
      let _ := InlineAssembly in
      M.alloc tt in
    let* name : ltac:(refine (ref str)) :=
      let* α0 : ltac:(refine (ref (array u8))) := borrow name_buf in
      let* α1 : ltac:(refine (array u8)) := deref α0 in
      let* α2 : ltac:(refine (ref (array u8))) := borrow α1 in
      let* α3 : ltac:(refine (ref (slice u8))) :=
        pointer_coercion "Unsize" α2 in
      let*
          α4 :
          ltac:(refine
            (core.result.Result (ref str) core.str.error.Utf8Error)) :=
        core.str.converts.from_utf8 α3 in
      (core.result.Result (ref str) core.str.error.Utf8Error)::["unwrap"] α4 in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "CPU Manufacturer ID: "; mk_str "
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine (ref (ref str))) := borrow name in
        let* α6 : ltac:(refine (ref str)) := deref α5 in
        let* α7 : ltac:(refine (ref (ref str))) := borrow α6 in
        let* α8 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_display"] α7 in
        let* α9 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α8 ] in
        let* α10 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α9 in
        let* α11 : ltac:(refine (array core.fmt.rt.Argument)) := deref α10 in
        let* α12 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α11 in
        let* α13 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α12 in
        let* α14 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α4 α13 in
        std.io.stdio._print α14 in
      M.alloc tt in
    M.alloc tt).
