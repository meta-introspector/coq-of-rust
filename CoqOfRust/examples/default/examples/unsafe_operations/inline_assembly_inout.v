(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    use std::arch::asm;

    let x: u64 = 3;
    let y: u64;
    unsafe {
        asm!("add {0}, 5", inout(reg) x => y);
    }
    assert_eq!(y, 8);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* x : M.Val u64.t :=
      let* α0 : M.Val u64.t := M.alloc 3 in
      M.copy α0 in
    let* y : M.Val unit := M.alloc tt in
    let* _ : M.Val unit :=
      let _ := InlineAssembly in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* α0 : M.Val (ref u64.t) := borrow y in
      let* α1 := M.read α0 in
      let* α2 : M.Val u64.t := M.alloc 8 in
      let* α3 : M.Val (ref u64.t) := borrow α2 in
      let* α4 := M.read α3 in
      let* α5 : M.Val ((ref u64.t) * (ref u64.t)) := M.alloc (α1, α4) in
      let* α6 := M.read α5 in
      match α6 with
      | (left_val, right_val) =>
        let* right_val := M.alloc right_val in
        let* left_val := M.alloc left_val in
        let* α0 : M.Val u64.t := deref left_val in
        let* α1 : M.Val u64.t := deref right_val in
        let* α2 : M.Val bool.t := BinOp.eq α0 α1 in
        let* α3 : M.Val bool.t := UnOp.not α2 in
        let* α4 : M.Val bool.t := use α3 in
        let* α5 := M.read α4 in
        if (α5 : bool) then
          let* kind : M.Val core.panicking.AssertKind.t :=
            M.alloc core.panicking.AssertKind.Eq in
          let* _ : M.Val never.t :=
            let* α0 := M.read kind in
            let* α1 : M.Val u64.t := deref left_val in
            let* α2 : M.Val (ref u64.t) := borrow α1 in
            let* α3 := M.read α2 in
            let* α4 : M.Val u64.t := deref right_val in
            let* α5 : M.Val (ref u64.t) := borrow α4 in
            let* α6 := M.read α5 in
            let* α7 :=
              core.panicking.assert_failed α0 α3 α6 core.option.Option.None in
            M.alloc α7 in
          let* α0 : M.Val unit := M.alloc tt in
          never_to_any α0
        else
          M.alloc tt
      end in
    M.alloc tt).
