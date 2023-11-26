(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    use std::arch::asm;

    fn mul(a: u64, b: u64) -> u128 {
        let lo: u64;
        let hi: u64;

        unsafe {
            asm!(
                // The x86 mul instruction takes rax as an implicit input and writes
                // the 128-bit result of the multiplication to rax:rdx.
                "mul {}",
                in(reg) a,
                inlateout("rax") b => lo,
                lateout("rdx") hi
            );
        }

        ((hi as u128) << 64) + lo as u128
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit := M.function_body (M.alloc tt).

(*
    fn mul(a: u64, b: u64) -> u128 {
        let lo: u64;
        let hi: u64;

        unsafe {
            asm!(
                // The x86 mul instruction takes rax as an implicit input and writes
                // the 128-bit result of the multiplication to rax:rdx.
                "mul {}",
                in(reg) a,
                inlateout("rax") b => lo,
                lateout("rdx") hi
            );
        }

        ((hi as u128) << 64) + lo as u128
    }
*)
Definition mul (a : u64.t) (b : u64.t) : M u128.t :=
  let* a := M.alloc a in
  let* b := M.alloc b in
  M.function_body
    (let* lo : M.Val unit := M.alloc tt in
    let* hi : M.Val unit := M.alloc tt in
    let* _ : M.Val unit :=
      let _ := InlineAssembly in
      M.alloc tt in
    let* α0 : M.Val u128.t := cast hi in
    let* α1 : M.Val i32.t := M.alloc 64 in
    let* α2 : M.Val u128.t := BinOp.shl α0 α1 in
    let* α3 : M.Val u128.t := cast lo in
    BinOp.add α2 α3).
