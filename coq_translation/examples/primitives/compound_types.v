(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  let logical := true in
  let a_float := 1 (* 1.0 *) in
  let an_integer := 5 in
  let default_float := 3 (* 3.0 *) in
  let default_integer := 7 in
  let inferred_type := 12 in
  assign inferred_type 4294967296 ;;
  let mutable := 12 in
  assign mutable 21 ;;
  let mutable := true in
  tt.