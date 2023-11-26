(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
pub fn add(a: i32, b: i32) -> i32 {
    a + b
}
*)
Definition add (a : M.Val i32.t) (b : M.Val i32.t) : M i32.t :=
  M.function_body (BinOp.add a b).

(*
fn bad_add(a: i32, b: i32) -> i32 {
    a - b
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition bad_add (a : M.Val i32.t) (b : M.Val i32.t) : M i32.t :=
  M.function_body (BinOp.sub a b).

Module tests.
  (*
      fn test_add() {
          assert_eq!(add(1, 2), 3);
      }
  *)
  Definition test_add : M unit :=
    M.function_body
      (let* _ : M.Val unit :=
        let* α0 : M.Val i32.t := M.alloc 1 in
        let* α1 : M.Val i32.t := M.alloc 2 in
        let* α2 := unit_testing.add α0 α1 in
        let* α3 : M.Val i32.t := M.alloc α2 in
        let* α4 : M.Val (ref i32.t) := borrow α3 in
        let* α5 := M.read α4 in
        let* α6 : M.Val i32.t := M.alloc 3 in
        let* α7 : M.Val (ref i32.t) := borrow α6 in
        let* α8 := M.read α7 in
        let* α9 : M.Val ((ref i32.t) * (ref i32.t)) := M.alloc (α5, α8) in
        let* α10 := M.read α9 in
        match α10 with
        | (left_val, right_val) =>
          let* right_val := M.alloc right_val in
          let* left_val := M.alloc left_val in
          let* α0 : M.Val i32.t := deref left_val in
          let* α1 : M.Val i32.t := deref right_val in
          let* α2 : M.Val bool.t := BinOp.eq α0 α1 in
          let* α3 : M.Val bool.t := UnOp.not α2 in
          let* α4 : M.Val bool.t := use α3 in
          let* α5 := M.read α4 in
          if (α5 : bool) then
            let* kind : M.Val core.panicking.AssertKind.t :=
              M.alloc core.panicking.AssertKind.Eq in
            let* _ : M.Val never.t :=
              let* α0 : M.Val i32.t := deref left_val in
              let* α1 : M.Val (ref i32.t) := borrow α0 in
              let* α2 : M.Val i32.t := deref right_val in
              let* α3 : M.Val (ref i32.t) := borrow α2 in
              let* α4 : M.Val (core.option.Option.t core.fmt.Arguments.t) :=
                M.alloc core.option.Option.None in
              let* α5 := core.panicking.assert_failed kind α1 α3 α4 in
              M.alloc α5 in
            let* α0 : M.Val unit := M.alloc tt in
            never_to_any α0
          else
            M.alloc tt
        end in
      M.alloc tt).
  
  (*
      fn test_bad_add() {
          // This assert would fire and test will fail.
          // Please note, that private functions can be tested too!
          assert_eq!(bad_add(1, 2), 3);
      }
  *)
  Definition test_bad_add : M unit :=
    M.function_body
      (let* _ : M.Val unit :=
        let* α0 : M.Val i32.t := M.alloc 1 in
        let* α1 : M.Val i32.t := M.alloc 2 in
        let* α2 := unit_testing.bad_add α0 α1 in
        let* α3 : M.Val i32.t := M.alloc α2 in
        let* α4 : M.Val (ref i32.t) := borrow α3 in
        let* α5 := M.read α4 in
        let* α6 : M.Val i32.t := M.alloc 3 in
        let* α7 : M.Val (ref i32.t) := borrow α6 in
        let* α8 := M.read α7 in
        let* α9 : M.Val ((ref i32.t) * (ref i32.t)) := M.alloc (α5, α8) in
        let* α10 := M.read α9 in
        match α10 with
        | (left_val, right_val) =>
          let* right_val := M.alloc right_val in
          let* left_val := M.alloc left_val in
          let* α0 : M.Val i32.t := deref left_val in
          let* α1 : M.Val i32.t := deref right_val in
          let* α2 : M.Val bool.t := BinOp.eq α0 α1 in
          let* α3 : M.Val bool.t := UnOp.not α2 in
          let* α4 : M.Val bool.t := use α3 in
          let* α5 := M.read α4 in
          if (α5 : bool) then
            let* kind : M.Val core.panicking.AssertKind.t :=
              M.alloc core.panicking.AssertKind.Eq in
            let* _ : M.Val never.t :=
              let* α0 : M.Val i32.t := deref left_val in
              let* α1 : M.Val (ref i32.t) := borrow α0 in
              let* α2 : M.Val i32.t := deref right_val in
              let* α3 : M.Val (ref i32.t) := borrow α2 in
              let* α4 : M.Val (core.option.Option.t core.fmt.Arguments.t) :=
                M.alloc core.option.Option.None in
              let* α5 := core.panicking.assert_failed kind α1 α3 α4 in
              M.alloc α5 in
            let* α0 : M.Val unit := M.alloc tt in
            never_to_any α0
          else
            M.alloc tt
        end in
      M.alloc tt).
End tests.

(*
    fn test_add() {
        assert_eq!(add(1, 2), 3);
    }
*)
Definition test_add : M unit :=
  M.function_body
    (let* _ : M.Val unit :=
      let* α0 : M.Val i32.t := M.alloc 1 in
      let* α1 : M.Val i32.t := M.alloc 2 in
      let* α2 := unit_testing.add α0 α1 in
      let* α3 : M.Val i32.t := M.alloc α2 in
      let* α4 : M.Val (ref i32.t) := borrow α3 in
      let* α5 := M.read α4 in
      let* α6 : M.Val i32.t := M.alloc 3 in
      let* α7 : M.Val (ref i32.t) := borrow α6 in
      let* α8 := M.read α7 in
      let* α9 : M.Val ((ref i32.t) * (ref i32.t)) := M.alloc (α5, α8) in
      let* α10 := M.read α9 in
      match α10 with
      | (left_val, right_val) =>
        let* right_val := M.alloc right_val in
        let* left_val := M.alloc left_val in
        let* α0 : M.Val i32.t := deref left_val in
        let* α1 : M.Val i32.t := deref right_val in
        let* α2 : M.Val bool.t := BinOp.eq α0 α1 in
        let* α3 : M.Val bool.t := UnOp.not α2 in
        let* α4 : M.Val bool.t := use α3 in
        let* α5 := M.read α4 in
        if (α5 : bool) then
          let* kind : M.Val core.panicking.AssertKind.t :=
            M.alloc core.panicking.AssertKind.Eq in
          let* _ : M.Val never.t :=
            let* α0 : M.Val i32.t := deref left_val in
            let* α1 : M.Val (ref i32.t) := borrow α0 in
            let* α2 : M.Val i32.t := deref right_val in
            let* α3 : M.Val (ref i32.t) := borrow α2 in
            let* α4 : M.Val (core.option.Option.t core.fmt.Arguments.t) :=
              M.alloc core.option.Option.None in
            let* α5 := core.panicking.assert_failed kind α1 α3 α4 in
            M.alloc α5 in
          let* α0 : M.Val unit := M.alloc tt in
          never_to_any α0
        else
          M.alloc tt
      end in
    M.alloc tt).

(*
    fn test_bad_add() {
        // This assert would fire and test will fail.
        // Please note, that private functions can be tested too!
        assert_eq!(bad_add(1, 2), 3);
    }
*)
Definition test_bad_add : M unit :=
  M.function_body
    (let* _ : M.Val unit :=
      let* α0 : M.Val i32.t := M.alloc 1 in
      let* α1 : M.Val i32.t := M.alloc 2 in
      let* α2 := unit_testing.bad_add α0 α1 in
      let* α3 : M.Val i32.t := M.alloc α2 in
      let* α4 : M.Val (ref i32.t) := borrow α3 in
      let* α5 := M.read α4 in
      let* α6 : M.Val i32.t := M.alloc 3 in
      let* α7 : M.Val (ref i32.t) := borrow α6 in
      let* α8 := M.read α7 in
      let* α9 : M.Val ((ref i32.t) * (ref i32.t)) := M.alloc (α5, α8) in
      let* α10 := M.read α9 in
      match α10 with
      | (left_val, right_val) =>
        let* right_val := M.alloc right_val in
        let* left_val := M.alloc left_val in
        let* α0 : M.Val i32.t := deref left_val in
        let* α1 : M.Val i32.t := deref right_val in
        let* α2 : M.Val bool.t := BinOp.eq α0 α1 in
        let* α3 : M.Val bool.t := UnOp.not α2 in
        let* α4 : M.Val bool.t := use α3 in
        let* α5 := M.read α4 in
        if (α5 : bool) then
          let* kind : M.Val core.panicking.AssertKind.t :=
            M.alloc core.panicking.AssertKind.Eq in
          let* _ : M.Val never.t :=
            let* α0 : M.Val i32.t := deref left_val in
            let* α1 : M.Val (ref i32.t) := borrow α0 in
            let* α2 : M.Val i32.t := deref right_val in
            let* α3 : M.Val (ref i32.t) := borrow α2 in
            let* α4 : M.Val (core.option.Option.t core.fmt.Arguments.t) :=
              M.alloc core.option.Option.None in
            let* α5 := core.panicking.assert_failed kind α1 α3 α4 in
            M.alloc α5 in
          let* α0 : M.Val unit := M.alloc tt in
          never_to_any α0
        else
          M.alloc tt
      end in
    M.alloc tt).
