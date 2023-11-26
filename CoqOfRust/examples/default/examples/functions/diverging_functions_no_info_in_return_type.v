(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn some_fn() {
    ()
}
*)
Definition some_fn : M unit := M.function_body (M.alloc tt).

(*
fn main() {
    let a: () = some_fn();
    println!("This function returns and you can see this line.")
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* a : M.Val unit :=
      let* α0 : unit := diverging_functions_no_info_in_return_type.some_fn in
      M.alloc α0 in
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc
          [ mk_str "This function returns and you can see this line.
" ] in
      let* α1 : ref (array (ref str.t)) := borrow α0 in
      let* α2 : M.Val (array (ref str.t)) := deref α1 in
      let* α3 : ref (array (ref str.t)) := borrow α2 in
      let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
      let* α5 : M.Val (ref (slice (ref str.t))) :=
        pointer_coercion "Unsize" α4 in
      let* α6 := M.read α5 in
      let* α7 : core.fmt.Arguments.t :=
        core.fmt.Arguments.t::["new_const"] α6 in
      let* α8 : unit := std.io.stdio._print α7 in
      M.alloc α8 in
    M.alloc tt).
