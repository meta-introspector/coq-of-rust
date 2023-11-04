(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Color.
  Inductive t `{ℋ : State.Trait} : Set :=
  | Red
  | Blue
  | Green
  | RGB (_ : u32) (_ : u32) (_ : u32)
  | HSV (_ : u32) (_ : u32) (_ : u32)
  | HSL (_ : u32) (_ : u32) (_ : u32)
  | CMY (_ : u32) (_ : u32) (_ : u32)
  | CMYK (_ : u32) (_ : u32) (_ : u32) (_ : u32).
End Color.
Definition Color `{ℋ : State.Trait} : Set := M.Val Color.t.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{ℋ : State.Trait}, M unit.
