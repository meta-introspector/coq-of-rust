(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition id (x : u64) : M u64 := Pure x.

Definition tri (a : u64) (b : u64) (c : u64) : M unit := Pure tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let* _ := id 0 in
  let* _ :=
    let* α0 := id 0 in
    id α0 in
  let* _ :=
    let* α0 := id 0 in
    let* α1 := id α0 in
    id α1 in
  let* _ :=
    let* α0 := id 0 in
    let* α1 := id α0 in
    let* α2 := id α1 in
    id α2 in
  let* _ :=
    let* α0 := id 1 in
    let* α1 := id 2 in
    tri α0 α1 3 in
  Pure tt.
