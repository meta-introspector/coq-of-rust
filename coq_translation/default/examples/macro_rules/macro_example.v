(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    // This call will expand into `println!("Hello");`
    say_hello!()
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M (M.Val unit) :=
  M.function_body
    (let* _ : ltac:(refine (M.Val unit)) :=
      let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
        M.alloc [ mk_str "Hello!
" ] in
      let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
      let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
        pointer_coercion "Unsize" α1 in
      let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
        core.fmt.Arguments.t::["new_const"] α2 in
      std.io.stdio._print α3 in
    M.alloc tt).
