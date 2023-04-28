(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition add (a : i32) (b : i32) : i32 := a.["add"] b.

Definition div (a : i32) (b : i32) : i32 :=
  if (b.["eq"] 0 : bool) then
    _crate.rt.begin_panic "Divide-by-zero error" ;;
    tt
  else
    tt ;;
  a.["div"] b.

Definition main (_ : unit) : unit := test.
