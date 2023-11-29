(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    // This binding lives in the main function
    let long_lived_binding = 1;

    // This is a block, and has a smaller scope than the main function
    {
        // This binding only exists in this block
        let short_lived_binding = 2;

        println!("inner short: {}", short_lived_binding);
    }
    // End of the block

    // Error! `short_lived_binding` doesn't exist in this scope
    // println!("outer short: {}", short_lived_binding);
    // FIXME ^ Comment out this line

    println!("outer long: {}", long_lived_binding);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* long_lived_binding : M.Val i32.t := M.alloc (Integer.of_Z 1) in
  let* _ : M.Val unit :=
    let* short_lived_binding : M.Val i32.t := M.alloc (Integer.of_Z 2) in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "inner short: "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_display"]
            (borrow short_lived_binding) in
        let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
        let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
        let* α6 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α5) in
        let* α7 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α6) in
        let* α8 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α2 α7 in
        let* α9 : unit := std.io.stdio._print α8 in
        M.alloc α9 in
      M.alloc tt in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "outer long: "; mk_str "
" ] in
      let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
      let* α2 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α1) in
      let* α3 : core.fmt.rt.Argument.t :=
        core.fmt.rt.Argument.t::["new_display"] (borrow long_lived_binding) in
      let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
      let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
      let* α6 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α5) in
      let* α7 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α6) in
      let* α8 : core.fmt.Arguments.t :=
        core.fmt.Arguments.t::["new_v1"] α2 α7 in
      let* α9 : unit := std.io.stdio._print α8 in
      M.alloc α9 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
