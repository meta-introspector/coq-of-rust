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
      let* α1 : ltac:(refine (ref (slice u8))) :=
        pointer_coercion "Unsize" α0 in
      let* α2 :
          ltac:(refine
            (core.result.Result (ref str) core.str.error.Utf8Error)) :=
        core.str.converts.from_utf8 α1 in
      (core.result.Result (ref str) core.str.error.Utf8Error)::["unwrap"] α2 in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "CPU Manufacturer ID: "; mk_str "
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (ref (ref str))) := borrow name in
        let* α4 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_display"] α3 in
        let* α5 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α4 ] in
        let* α6 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α5 in
        let* α7 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α6 in
        let* α8 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α2 α7 in
        std.io.stdio._print α8 in
      M.alloc tt in
    M.alloc tt).
