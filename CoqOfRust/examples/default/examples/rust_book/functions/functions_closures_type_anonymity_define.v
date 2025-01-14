(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    // `F` must be generic.
    fn apply<F>(f: F)
    where
        F: FnOnce(),
    {
        f();
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit := M.pure tt.

(*
    fn apply<F>(f: F)
    where
        F: FnOnce(),
    {
        f();
    }
*)
Definition apply
    {F : Set}
    {ℋ_0 : core.ops.function.FnOnce.Trait F (Args := unit)}
    (f : F)
    : M unit :=
  let* f := M.alloc f in
  let* _ : M.Val unit :=
    let* α0 : F -> unit -> M _ :=
      ltac:(M.get_method (fun ℐ =>
        core.ops.function.FnOnce.call_once
          (Self := F)
          (Args := unit)
          (Trait := ℐ))) in
    let* α1 : F := M.read f in
    let* α2 : unit := M.call (α0 α1 tt) in
    M.alloc α2 in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
