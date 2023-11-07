(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* haystack : ltac:(refine (alloc.vec.Vec i32 alloc.alloc.Global)) :=
      let* α0 : ltac:(refine i32) := M.alloc 1 in
      let* α1 : ltac:(refine i32) := M.alloc 2 in
      let* α2 : ltac:(refine i32) := M.alloc 3 in
      let* α3 : ltac:(refine (array i32)) := M.alloc [ α0; α1; α2 ] in
      let* α4 :
          ltac:(refine (alloc.boxed.Box (array i32) alloc.alloc.Global)) :=
        (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α3 in
      let* α5 :
          ltac:(refine (alloc.boxed.Box (slice i32) alloc.alloc.Global)) :=
        pointer_coercion "Unsize" α4 in
      (slice i32)::["into_vec"] α5 in
    let contains :=
      let* α0 : ltac:(refine (ref (alloc.vec.Vec i32 alloc.alloc.Global))) :=
        borrow haystack in
      let* α1 : ltac:(refine (ref (slice i32))) :=
        (core.ops.deref.Deref.deref
            (Self := alloc.vec.Vec i32 alloc.alloc.Global)
            (Trait := ltac:(refine _)))
          α0 in
      let* α2 : ltac:(refine (slice i32)) := deref α1 in
      let* α3 : ltac:(refine (ref (slice i32))) := borrow α2 in
      (slice i32)::["contains"] α3 needle in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str ""; mk_str "
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (ref type not implemented)) := borrow contains in
        let* α4 : ltac:(refine i32) := M.alloc 1 in
        let* α5 : ltac:(refine (ref i32)) := borrow α4 in
        let* α6 : ltac:(refine (M.Val ((ref i32)))) := M.alloc (α5) in
        let* α7 : ltac:(refine bool) :=
          (core.ops.function.Fn.call
              (Self := type not implemented)
              (Trait := ltac:(refine _)))
            α3
            α6 in
        let* α8 : ltac:(refine (ref bool)) := borrow α7 in
        let* α9 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_display"] α8 in
        let* α10 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α9 ] in
        let* α11 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α10 in
        let* α12 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α11 in
        let* α13 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α2 α12 in
        std.io.stdio._print α13 in
      M.alloc tt in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str ""; mk_str "
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (ref type not implemented)) := borrow contains in
        let* α4 : ltac:(refine i32) := M.alloc 4 in
        let* α5 : ltac:(refine (ref i32)) := borrow α4 in
        let* α6 : ltac:(refine (M.Val ((ref i32)))) := M.alloc (α5) in
        let* α7 : ltac:(refine bool) :=
          (core.ops.function.Fn.call
              (Self := type not implemented)
              (Trait := ltac:(refine _)))
            α3
            α6 in
        let* α8 : ltac:(refine (ref bool)) := borrow α7 in
        let* α9 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_display"] α8 in
        let* α10 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α9 ] in
        let* α11 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α10 in
        let* α12 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α11 in
        let* α13 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α2 α12 in
        std.io.stdio._print α13 in
      M.alloc tt in
    M.alloc tt).
