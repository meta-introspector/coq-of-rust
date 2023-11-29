(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    let mut counter = 0;

    let result = loop {
        counter += 1;

        if counter == 10 {
            break counter * 2;
        }
    };

    assert_eq!(result, 20);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* counter : M.Val i32.t := M.alloc (Integer.of_Z 0) in
  let* result : M.Val i32.t :=
    let* α0 : M.Val i32.t :=
      loop
        (let* _ : M.Val unit :=
          let* α0 : M.Val i32.t := M.alloc (Integer.of_Z 1) in
          assign_op BinOp.Panic.add counter α0 in
        let* α0 : i32.t := M.read counter in
        if (use (BinOp.Pure.eq α0 (Integer.of_Z 10)) : bool) then
          let* _ : M.Val never.t := Break in
          let* α0 : M.Val unit := M.alloc tt in
          let* α1 := M.read α0 in
          let* α2 : unit := never_to_any α1 in
          M.alloc α2
        else
          M.alloc tt) in
    M.copy α0 in
  let* _ : M.Val unit :=
    let* α0 : M.Val i32.t := M.alloc (Integer.of_Z 20) in
    match (borrow result, borrow α0) with
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
            core.panicking.assert_failed α0 α1 α2 core.option.Option.None in
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
