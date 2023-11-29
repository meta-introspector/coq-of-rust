(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    let number: u8 = 4;

    match number {
        i if i == 0 => println!("Zero"),
        i if i > 0 => println!("Greater than zero"),
        _ => unreachable!("Should never happen."),
        // TODO ^ uncomment to fix compilation
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* number : M.Val u8.t := M.alloc (Integer.of_Z 4) in
  let* α0 : u8.t := M.read number in
  let* α0 : M.Val unit :=
    match α0 with
    | i =>
      let* i := M.alloc i in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) := M.alloc [ mk_str "Zero
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_const"] α2 in
        let* α4 : unit := std.io.stdio._print α3 in
        M.alloc α4 in
      M.alloc tt
    | i =>
      let* i := M.alloc i in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Greater than zero
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_const"] α2 in
        let* α4 : unit := std.io.stdio._print α3 in
        M.alloc α4 in
      M.alloc tt
    | _ =>
      let* α0 : never.t :=
        core.panicking.unreachable_display
          (borrow (mk_str "Should never happen.")) in
      let* α1 : unit := never_to_any α0 in
      M.alloc α1
    end in
  M.read α0.
