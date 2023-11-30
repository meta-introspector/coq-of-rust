(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    "12".parse::<i32>();
    "true".parse::<bool>();
    "unparsable".parse::<u32>();
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* _ : M.Val (core.result.Result.t i32.t core.num.error.ParseIntError.t) :=
    let* α0 : ref str.t := M.read (mk_str "12") in
    let* α1 : core.result.Result.t i32.t core.num.error.ParseIntError.t :=
      M.call (str.t::["parse"] α0) in
    M.alloc α1 in
  let* _ :
      M.Val (core.result.Result.t bool.t core.str.error.ParseBoolError.t) :=
    let* α0 : ref str.t := M.read (mk_str "true") in
    let* α1 : core.result.Result.t bool.t core.str.error.ParseBoolError.t :=
      M.call (str.t::["parse"] α0) in
    M.alloc α1 in
  let* _ : M.Val (core.result.Result.t u32.t core.num.error.ParseIntError.t) :=
    let* α0 : ref str.t := M.read (mk_str "unparsable") in
    let* α1 : core.result.Result.t u32.t core.num.error.ParseIntError.t :=
      M.call (str.t::["parse"] α0) in
    M.alloc α1 in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
