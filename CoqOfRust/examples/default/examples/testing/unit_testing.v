(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
pub fn add(a: i32, b: i32) -> i32 {
    a + b
}
*)
Definition add (a : i32.t) (b : i32.t) : M i32.t :=
  let* a : M.Val i32.t := M.alloc a in
  let* b : M.Val i32.t := M.alloc b in
  let* α0 : i32.t := M.read a in
  let* α1 : i32.t := M.read b in
  BinOp.Panic.add α0 α1.

(*
fn bad_add(a: i32, b: i32) -> i32 {
    a - b
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition bad_add (a : i32.t) (b : i32.t) : M i32.t :=
  let* a : M.Val i32.t := M.alloc a in
  let* b : M.Val i32.t := M.alloc b in
  let* α0 : i32.t := M.read a in
  let* α1 : i32.t := M.read b in
  BinOp.Panic.sub α0 α1.

Module tests.
  (*
      fn test_add() {
          assert_eq!(add(1, 2), 3);
      }
  *)
  Definition test_add : M unit :=
    let* _ : M.Val unit :=
      let* α0 : i32.t :=
        M.call (unit_testing.add (Integer.of_Z 1) (Integer.of_Z 2)) in
      let* α1 : M.Val i32.t := M.alloc α0 in
      let* α2 : M.Val i32.t := M.alloc (Integer.of_Z 3) in
      match (borrow α1, borrow α2) with
      | (left_val, right_val) =>
        let* right_val := M.alloc right_val in
        let* left_val := M.alloc left_val in
        let* α0 : ref i32.t := M.read left_val in
        let* α1 : i32.t := M.read (deref α0) in
        let* α2 : ref i32.t := M.read right_val in
        let* α3 : i32.t := M.read (deref α2) in
        if (use (UnOp.not (BinOp.Pure.eq α1 α3)) : bool) then
          let* kind : M.Val core.panicking.AssertKind.t :=
            M.alloc core.panicking.AssertKind.Eq in
          let* _ : M.Val never.t :=
            let* α0 : core.panicking.AssertKind.t := M.read kind in
            let* α1 : ref i32.t := M.read left_val in
            let* α2 : ref i32.t := M.read right_val in
            let* α3 : never.t :=
              M.call
                (core.panicking.assert_failed
                  α0
                  α1
                  α2
                  core.option.Option.None) in
            M.alloc α3 in
          let* α0 : M.Val unit := M.alloc tt in
          let* α1 := M.read α0 in
          let* α2 : unit := never_to_any α1 in
          M.alloc α2
        else
          M.alloc tt
      end in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
  
  (*
      fn test_bad_add() {
          // This assert would fire and test will fail.
          // Please note, that private functions can be tested too!
          assert_eq!(bad_add(1, 2), 3);
      }
  *)
  Definition test_bad_add : M unit :=
    let* _ : M.Val unit :=
      let* α0 : i32.t :=
        M.call (unit_testing.bad_add (Integer.of_Z 1) (Integer.of_Z 2)) in
      let* α1 : M.Val i32.t := M.alloc α0 in
      let* α2 : M.Val i32.t := M.alloc (Integer.of_Z 3) in
      match (borrow α1, borrow α2) with
      | (left_val, right_val) =>
        let* right_val := M.alloc right_val in
        let* left_val := M.alloc left_val in
        let* α0 : ref i32.t := M.read left_val in
        let* α1 : i32.t := M.read (deref α0) in
        let* α2 : ref i32.t := M.read right_val in
        let* α3 : i32.t := M.read (deref α2) in
        if (use (UnOp.not (BinOp.Pure.eq α1 α3)) : bool) then
          let* kind : M.Val core.panicking.AssertKind.t :=
            M.alloc core.panicking.AssertKind.Eq in
          let* _ : M.Val never.t :=
            let* α0 : core.panicking.AssertKind.t := M.read kind in
            let* α1 : ref i32.t := M.read left_val in
            let* α2 : ref i32.t := M.read right_val in
            let* α3 : never.t :=
              M.call
                (core.panicking.assert_failed
                  α0
                  α1
                  α2
                  core.option.Option.None) in
            M.alloc α3 in
          let* α0 : M.Val unit := M.alloc tt in
          let* α1 := M.read α0 in
          let* α2 : unit := never_to_any α1 in
          M.alloc α2
        else
          M.alloc tt
      end in
    let* α0 : M.Val unit := M.alloc tt in
    M.read α0.
End tests.

(*
    fn test_add() {
        assert_eq!(add(1, 2), 3);
    }
*)
Definition test_add : M unit :=
  let* _ : M.Val unit :=
    let* α0 : i32.t :=
      M.call (unit_testing.add (Integer.of_Z 1) (Integer.of_Z 2)) in
    let* α1 : M.Val i32.t := M.alloc α0 in
    let* α2 : M.Val i32.t := M.alloc (Integer.of_Z 3) in
    match (borrow α1, borrow α2) with
    | (left_val, right_val) =>
      let* right_val := M.alloc right_val in
      let* left_val := M.alloc left_val in
      let* α0 : ref i32.t := M.read left_val in
      let* α1 : i32.t := M.read (deref α0) in
      let* α2 : ref i32.t := M.read right_val in
      let* α3 : i32.t := M.read (deref α2) in
      if (use (UnOp.not (BinOp.Pure.eq α1 α3)) : bool) then
        let* kind : M.Val core.panicking.AssertKind.t :=
          M.alloc core.panicking.AssertKind.Eq in
        let* _ : M.Val never.t :=
          let* α0 : core.panicking.AssertKind.t := M.read kind in
          let* α1 : ref i32.t := M.read left_val in
          let* α2 : ref i32.t := M.read right_val in
          let* α3 : never.t :=
            M.call
              (core.panicking.assert_failed α0 α1 α2 core.option.Option.None) in
          M.alloc α3 in
        let* α0 : M.Val unit := M.alloc tt in
        let* α1 := M.read α0 in
        let* α2 : unit := never_to_any α1 in
        M.alloc α2
      else
        M.alloc tt
    end in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

(*
    fn test_bad_add() {
        // This assert would fire and test will fail.
        // Please note, that private functions can be tested too!
        assert_eq!(bad_add(1, 2), 3);
    }
*)
Definition test_bad_add : M unit :=
  let* _ : M.Val unit :=
    let* α0 : i32.t :=
      M.call (unit_testing.bad_add (Integer.of_Z 1) (Integer.of_Z 2)) in
    let* α1 : M.Val i32.t := M.alloc α0 in
    let* α2 : M.Val i32.t := M.alloc (Integer.of_Z 3) in
    match (borrow α1, borrow α2) with
    | (left_val, right_val) =>
      let* right_val := M.alloc right_val in
      let* left_val := M.alloc left_val in
      let* α0 : ref i32.t := M.read left_val in
      let* α1 : i32.t := M.read (deref α0) in
      let* α2 : ref i32.t := M.read right_val in
      let* α3 : i32.t := M.read (deref α2) in
      if (use (UnOp.not (BinOp.Pure.eq α1 α3)) : bool) then
        let* kind : M.Val core.panicking.AssertKind.t :=
          M.alloc core.panicking.AssertKind.Eq in
        let* _ : M.Val never.t :=
          let* α0 : core.panicking.AssertKind.t := M.read kind in
          let* α1 : ref i32.t := M.read left_val in
          let* α2 : ref i32.t := M.read right_val in
          let* α3 : never.t :=
            M.call
              (core.panicking.assert_failed α0 α1 α2 core.option.Option.None) in
          M.alloc α3 in
        let* α0 : M.Val unit := M.alloc tt in
        let* α1 := M.read α0 in
        let* α2 : unit := never_to_any α1 in
        M.alloc α2
      else
        M.alloc tt
    end in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.