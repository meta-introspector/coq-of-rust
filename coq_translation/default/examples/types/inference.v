(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* elem := M.alloc 5 in
    let* vec := (alloc.vec.Vec u8 alloc.alloc.Global)::["new"] in
    let* _ :=
      let* α0 := borrow_mut vec (alloc.vec.Vec u8 alloc.alloc.Global) in
      (alloc.vec.Vec u8 alloc.alloc.Global)::["push"] α0 elem in
    let* _ :=
      let* _ :=
        let* α0 := borrow [ mk_str ""; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow vec (alloc.vec.Vec u8 alloc.alloc.Global) in
        let* α5 := deref α4 (alloc.vec.Vec u8 alloc.alloc.Global) in
        let* α6 := borrow α5 (alloc.vec.Vec u8 alloc.alloc.Global) in
        let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
        let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
        let* α9 := deref α8 (list core.fmt.rt.Argument) in
        let* α10 := borrow α9 (list core.fmt.rt.Argument) in
        let* α11 := pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
        std.io.stdio._print α12 in
      M.alloc tt in
    M.alloc tt).
