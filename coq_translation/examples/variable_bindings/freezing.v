(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  let _mutable_integer := 7 in
  let _ :=
    let _mutable_integer := _mutable_integer in
    tt in
  let _ := assign _mutable_integer 3 in
  tt.
