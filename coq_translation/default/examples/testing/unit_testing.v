(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition add `{State.Trait} (a : i32) (b : i32) : M i32 := add a b.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition bad_add `{State.Trait} (a : i32) (b : i32) : M i32 := sub a b.

Module tests.
  Definition test_add `{State.Trait} : M unit :=
    let* _ :=
      let* α0 := M.alloc 1 in
      let* α1 := M.alloc 2 in
      let* α2 := unit_testing.add α0 α1 in
      let* α3 := borrow α2 i32 in
      let* α4 := M.alloc 3 in
      let* α5 := borrow α4 i32 in
      match (α3, α5) with
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
  
  Definition test_bad_add `{State.Trait} : M unit :=
    let* _ :=
      let* α0 := M.alloc 1 in
      let* α1 := M.alloc 2 in
      let* α2 := unit_testing.bad_add α0 α1 in
      let* α3 := borrow α2 i32 in
      let* α4 := M.alloc 3 in
      let* α5 := borrow α4 i32 in
      match (α3, α5) with
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
End tests.

Definition test_add `{State.Trait} : M unit :=
  let* _ :=
    let* α0 := M.alloc 1 in
    let* α1 := M.alloc 2 in
    let* α2 := unit_testing.add α0 α1 in
    let* α3 := borrow α2 i32 in
    let* α4 := M.alloc 3 in
    let* α5 := borrow α4 i32 in
    match (α3, α5) with
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

Definition test_bad_add `{State.Trait} : M unit :=
  let* _ :=
    let* α0 := M.alloc 1 in
    let* α1 := M.alloc 2 in
    let* α2 := unit_testing.bad_add α0 α1 in
    let* α3 := borrow α2 i32 in
    let* α4 := M.alloc 3 in
    let* α5 := borrow α4 i32 in
    match (α3, α5) with
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
