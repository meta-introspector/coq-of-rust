(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition id (x : u64) : M u64 := Pure x.

Definition tri (a : u64) (b : u64) (c : u64) : M unit := Pure tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let* _ :=
    let* α0 := Pure id in
    let* α1 := Pure 0 in
    α0 α1 in
  let* _ :=
    let* α2 := Pure id in
    let* α0 := Pure id in
    let* α1 := Pure 0 in
    let* α3 := α0 α1 in
    α2 α3 in
  let* _ :=
    let* α4 := Pure id in
    let* α2 := Pure id in
    let* α0 := Pure id in
    let* α1 := Pure 0 in
    let* α6 := Pure α0 in
    let* α7 := Pure α1 in
    let* α3 := α6 α7 in
    let* α5 := α2 α3 in
    α4 α5 in
  let* _ :=
    let* α8 := Pure id in
    let* α4 := Pure id in
    let* α2 := Pure id in
    let* α0 := Pure id in
    let* α1 := Pure 0 in
    let* α6 := Pure α0 in
    let* α7 := Pure α1 in
    let* α10 := Pure α6 in
    let* α11 := Pure α7 in
    let* α3 := α10 α11 in
    let* α12 := Pure α2 in
    let* α13 := Pure α3 in
    let* α5 := α12 α13 in
    let* α9 := α4 α5 in
    α8 α9 in
  let* _ :=
    let* α4 := Pure tri in
    let* α0 := Pure id in
    let* α1 := Pure 1 in
    let* α5 := α0 α1 in
    let* α2 := Pure id in
    let* α3 := Pure 2 in
    let* α6 := α2 α3 in
    let* α7 := Pure 3 in
    α4 α5 α6 α7 in
  Pure tt.
