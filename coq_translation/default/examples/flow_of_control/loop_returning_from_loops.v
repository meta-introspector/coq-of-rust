(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* counter : ltac:(refine i32) := M.alloc 0 in
    let* result : ltac:(refine i32) :=
      loop
        (let* _ : ltac:(refine unit) :=
          let* α0 : ltac:(refine i32) := M.alloc 1 in
          assign_op add counter α0 in
        let* α0 : ltac:(refine i32) := M.alloc 10 in
        let* α1 : ltac:(refine bool) := BinOp.eq counter α0 in
        let* α2 : ltac:(refine bool) := use α1 in
        if (α2 : bool) then
          let* _ : ltac:(refine never) := Break in
          let* α0 : ltac:(refine unit) := M.alloc tt in
          never_to_any α0
        else
          M.alloc tt) in
    let* _ : ltac:(refine unit) :=
      let* α0 : ltac:(refine (ref i32)) := borrow result in
      let* α1 : ltac:(refine i32) := M.alloc 20 in
      let* α2 : ltac:(refine (ref i32)) := borrow α1 in
      let* α3 : ltac:(refine (M.Val ((ref i32) * (ref i32)))) :=
        M.alloc (α0, α2) in
      let* α4 := M.read α3 in
      match α4 with
      | (left_val, right_val) =>
        let* α0 : ltac:(refine i32) := deref left_val in
        let* α1 : ltac:(refine i32) := deref right_val in
        let* α2 : ltac:(refine bool) := BinOp.eq α0 α1 in
        let* α3 : ltac:(refine bool) := UnOp.not α2 in
        let* α4 : ltac:(refine bool) := use α3 in
        if (α4 : bool) then
          let* kind : ltac:(refine core.panicking.AssertKind) :=
            M.alloc core.panicking.AssertKind.Eq in
          let* _ : ltac:(refine never) :=
            let* α0 : ltac:(refine i32) := deref left_val in
            let* α1 : ltac:(refine (ref i32)) := borrow α0 in
            let* α2 : ltac:(refine i32) := deref α1 in
            let* α3 : ltac:(refine (ref i32)) := borrow α2 in
            let* α4 : ltac:(refine i32) := deref right_val in
            let* α5 : ltac:(refine (ref i32)) := borrow α4 in
            let* α6 : ltac:(refine i32) := deref α5 in
            let* α7 : ltac:(refine (ref i32)) := borrow α6 in
            let* α8 : ltac:(refine (core.option.Option core.fmt.Arguments)) :=
              M.alloc core.option.Option.None in
            core.panicking.assert_failed kind α3 α7 α8 in
          let* α0 : ltac:(refine unit) := M.alloc tt in
          never_to_any α0
        else
          M.alloc tt
      end in
    M.alloc tt).
