(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let _ := (1, 2, 3, 4) in
  let* α0 := _crate.boxed.Box::["new"] [ 5; 6; 7; 8 ] in
  let* _ := Slice::["into_vec"] α0 in
  Pure tt.
