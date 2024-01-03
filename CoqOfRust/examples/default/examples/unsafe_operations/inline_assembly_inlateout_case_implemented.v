(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    use std::arch::asm;

    let mut a: u64 = 4;
    let b: u64 = 4;
    unsafe {
        asm!("add {0}, {1}", inlateout(reg) a, in(reg) b);
    }
    assert_eq!(a, 8);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* a : M.Val u64.t := M.alloc (Integer.of_Z 4) in
  let* b : M.Val u64.t := M.alloc (Integer.of_Z 4) in
  let* _ : M.Val unit :=
    let _ : M.Val unit := InlineAssembly in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* α0 : M.Val u64.t := M.alloc (Integer.of_Z 8) in
    let* α1 : M.Val ((ref u64.t) * (ref u64.t)) :=
      M.alloc (borrow a, borrow α0) in
    match_operator
      α1
      [
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | (_, _) =>
            let γ0_0 := Tuple.Access.left γ in
            let γ0_1 := Tuple.Access.right γ in
            let* left_val := M.copy γ0_0 in
            let* right_val := M.copy γ0_1 in
            let* α0 : ref u64.t := M.read left_val in
            let* α1 : u64.t := M.read (deref α0) in
            let* α2 : ref u64.t := M.read right_val in
            let* α3 : u64.t := M.read (deref α2) in
            let* α4 : M.Val bool.t :=
              M.alloc (UnOp.not (BinOp.Pure.eq α1 α3)) in
            let* α5 : bool.t := M.read (use α4) in
            if α5 then
              let* kind : M.Val core.panicking.AssertKind.t :=
                M.alloc core.panicking.AssertKind.Eq in
              let* _ : M.Val never.t :=
                let* α0 : core.panicking.AssertKind.t := M.read kind in
                let* α1 : ref u64.t := M.read left_val in
                let* α2 : ref u64.t := M.read right_val in
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
          end) :
          M (M.Val unit)
      ] in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
