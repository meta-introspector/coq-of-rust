(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Ltac NanoSecond := exact u64.t.

Ltac Inch := exact u64.t.

Ltac U64 := exact u64.t.

(*
fn main() {
    // `NanoSecond` = `Inch` = `U64` = `u64`.
    let nanoseconds: NanoSecond = 5 as U64;
    let inches: Inch = 2 as U64;

    // Note that type aliases *don't* provide any extra type safety, because
    // aliases are *not* new types
    println!(
        "{} nanoseconds + {} inches = {} unit?",
        nanoseconds,
        inches,
        nanoseconds + inches
    );
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* nanoseconds : M.Val u64.t :=
    let* α0 : M.Val u64.t := M.alloc ((Integer.of_Z 5) : u64.t) in
    M.copy (use α0) in
  let* inches : M.Val u64.t :=
    let* α0 : M.Val u64.t := M.alloc ((Integer.of_Z 2) : u64.t) in
    M.copy (use α0) in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "") in
      let* α1 : ref str.t := M.read (mk_str " nanoseconds + ") in
      let* α2 : ref str.t := M.read (mk_str " inches = ") in
      let* α3 : ref str.t := M.read (mk_str " unit?
") in
      let* α4 : M.Val (array (ref str.t)) := M.alloc [ α0; α1; α2; α3 ] in
      let* α5 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow nanoseconds)) in
      let* α6 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow inches)) in
      let* α7 : u64.t := M.read nanoseconds in
      let* α8 : u64.t := M.read inches in
      let* α9 : u64.t := BinOp.Panic.add α7 α8 in
      let* α10 : M.Val u64.t := M.alloc α9 in
      let* α11 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α10)) in
      let* α12 : M.Val (array core.fmt.rt.Argument.t) :=
        M.alloc [ α5; α6; α11 ] in
      let* α13 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α4))
            (pointer_coercion "Unsize" (borrow α12))) in
      let* α14 : unit := M.call (std.io.stdio._print α13) in
      M.alloc α14 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
