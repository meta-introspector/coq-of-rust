(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition NUM : i32 := run (Pure 18).

Parameter coerce_static : ref i32 -> M (ref i32).

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : unit -> M unit.