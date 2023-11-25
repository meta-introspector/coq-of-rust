(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    use std::arch::asm;

    // Multiply x by 6 using shifts and adds
    let mut x: u64 = 4;
    unsafe {
        asm!(
            "mov {tmp}, {x}",
            "shl {tmp}, 1",
            "shl {x}, 2",
            "add {x}, {tmp}",
            x = inout(reg) x,
            tmp = out(reg) _,
        );
    }
    assert_eq!(x, 4 * 6);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M (M.Val unit) :=
  M.function_body
    (let* x : ltac:(refine (M.Val u64.t)) :=
      let* α0 : ltac:(refine (M.Val u64.t)) := M.alloc 4 in
      M.copy α0 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let _ := InlineAssembly in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* α0 : ltac:(refine (M.Val (ref u64.t))) := borrow x in
      let* α1 := M.read α0 in
      let* α2 : ltac:(refine (M.Val u64.t)) := M.alloc 4 in
      let* α3 : ltac:(refine (M.Val u64.t)) := M.alloc 6 in
      let* α4 : ltac:(refine (M.Val u64.t)) := BinOp.mul α2 α3 in
      let* α5 : ltac:(refine (M.Val (ref u64.t))) := borrow α4 in
      let* α6 := M.read α5 in
      let* α7 : ltac:(refine (M.Val ((ref u64.t) * (ref u64.t)))) :=
        M.alloc (α1, α6) in
      let* α8 := M.read α7 in
      match α8 with
      | (left_val, right_val) =>
        let* right_val := M.alloc right_val in
        let* left_val := M.alloc left_val in
        let* α0 : ltac:(refine (M.Val u64.t)) := deref left_val in
        let* α1 : ltac:(refine (M.Val u64.t)) := deref right_val in
        let* α2 : ltac:(refine (M.Val bool.t)) := BinOp.eq α0 α1 in
        let* α3 : ltac:(refine (M.Val bool.t)) := UnOp.not α2 in
        let* α4 : ltac:(refine (M.Val bool.t)) := use α3 in
        let* α5 := M.read α4 in
        if (α5 : bool) then
          let* kind : ltac:(refine (M.Val core.panicking.AssertKind.t)) :=
            M.alloc core.panicking.AssertKind.Eq in
          let* _ : ltac:(refine (M.Val never.t)) :=
            let* α0 : ltac:(refine (M.Val u64.t)) := deref left_val in
            let* α1 : ltac:(refine (M.Val (ref u64.t))) := borrow α0 in
            let* α2 : ltac:(refine (M.Val u64.t)) := deref right_val in
            let* α3 : ltac:(refine (M.Val (ref u64.t))) := borrow α2 in
            let* α4 :
                ltac:(refine
                  (M.Val (core.option.Option.t core.fmt.Arguments.t))) :=
              M.alloc core.option.Option.None in
            core.panicking.assert_failed kind α1 α3 α4 in
          let* α0 : ltac:(refine (M.Val unit)) := M.alloc tt in
          never_to_any α0
        else
          M.alloc tt
      end in
    M.alloc tt).
