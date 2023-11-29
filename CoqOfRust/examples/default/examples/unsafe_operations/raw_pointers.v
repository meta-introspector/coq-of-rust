(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    let raw_p: *const u32 = &10;

    unsafe {
        assert!( *raw_p == 10);
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* raw_p : M.Val (ref u32.t) :=
    let* α0 : M.Val u32.t := M.alloc (Integer.of_Z 10) in
    M.copy (addr_of α0) in
  let* _ : M.Val unit :=
    let* α0 : ref u32.t := M.read raw_p in
    let* α1 : u32.t := M.read (deref α0) in
    if (use (UnOp.not (BinOp.Pure.eq α1 (Integer.of_Z 10))) : bool) then
      let* α0 : ref str.t := M.read (mk_str "assertion failed: *raw_p == 10") in
      let* α1 : never.t := core.panicking.panic α0 in
      let* α2 : unit := never_to_any α1 in
      M.alloc α2
    else
      M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
