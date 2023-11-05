(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* triple : ltac:(refine (M.Val (i32 * i32 * i32))) :=
      let* α0 : ltac:(refine i32) := M.alloc 0 in
      let* α1 : ltac:(refine i32) := M.alloc (- 2) in
      let* α2 : ltac:(refine i32) := M.alloc 3 in
      M.alloc (α0, α1, α2) in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "Tell me about "; mk_str "
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine (ref (M.Val (i32 * i32 * i32)))) :=
          borrow triple in
        let* α6 : ltac:(refine (M.Val (i32 * i32 * i32))) := deref α5 in
        let* α7 : ltac:(refine (ref (M.Val (i32 * i32 * i32)))) := borrow α6 in
        let* α8 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_debug"] α7 in
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
    let* α0 := M.read triple in
    match α0 with
    | (_, y, z) =>
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc
            [ mk_str "First is `0`, `y` is "; mk_str ", and `z` is "; mk_str "
"
            ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine (ref i32)) := borrow y in
        let* α6 : ltac:(refine i32) := deref α5 in
        let* α7 : ltac:(refine (ref i32)) := borrow α6 in
        let* α8 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_debug"] α7 in
        let* α9 : ltac:(refine (ref i32)) := borrow z in
        let* α10 : ltac:(refine i32) := deref α9 in
        let* α11 : ltac:(refine (ref i32)) := borrow α10 in
        let* α12 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_debug"] α11 in
        let* α13 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α8; α12 ] in
        let* α14 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α13 in
        let* α15 : ltac:(refine (array core.fmt.rt.Argument)) := deref α14 in
        let* α16 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α15 in
        let* α17 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α16 in
        let* α18 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α4 α17 in
        std.io.stdio._print α18 in
      M.alloc tt
    | (_, _, _) =>
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "First is `1` and the rest doesn't matter
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_const"] α4 in
        std.io.stdio._print α5 in
      M.alloc tt
    | (_) =>
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "last is `2` and the rest doesn't matter
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_const"] α4 in
        std.io.stdio._print α5 in
      M.alloc tt
    | (_, _, _) =>
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc
            [ mk_str "First is `3`, last is `4`, and the rest doesn't matter
"
            ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_const"] α4 in
        std.io.stdio._print α5 in
      M.alloc tt
    | _ =>
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "It doesn't matter what they are
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_const"] α4 in
        std.io.stdio._print α5 in
      M.alloc tt
    end).
