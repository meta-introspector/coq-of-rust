(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  let* counter := M.alloc 0 in
  let* result :=
    loop
      (let* _ :=
        let* α0 := M.alloc 1 in
        assign_op add counter α0 in
      let* α0 := M.alloc 10 in
      let* α1 := eq counter α0 in
      let* α2 := use α1 in
      if (α2 : bool) then
        let* _ := Break in
        let* α0 := M.alloc tt in
        never_to_any α0
      else
        M.alloc tt) in
  let* _ :=
    let* α0 := borrow result i32 in
    let* α1 := M.alloc 20 in
    let* α2 := borrow α1 i32 in
    match (α0, α2) with
    | (left_val, right_val) =>
      let* α0 := deref left_val i32 in
      let* α1 := deref right_val i32 in
      let* α2 := eq α0 α1 in
      let* α3 := not α2 in
      let* α4 := use α3 in
      if (α4 : bool) then
        let kind := core.panicking.AssertKind.Eq tt in
        let* _ :=
          let* α0 := deref left_val i32 in
          let* α1 := borrow α0 i32 in
          let* α2 := deref α1 i32 in
          let* α3 := borrow α2 i32 in
          let* α4 := deref right_val i32 in
          let* α5 := borrow α4 i32 in
          let* α6 := deref α5 i32 in
          let* α7 := borrow α6 i32 in
          core.panicking.assert_failed
            kind
            α3
            α7
            (core.option.Option.None tt) in
        let* α0 := M.alloc tt in
        never_to_any α0
      else
        M.alloc tt
    end in
  M.alloc tt.
