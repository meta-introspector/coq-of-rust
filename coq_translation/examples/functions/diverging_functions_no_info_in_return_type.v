(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition some_fn (_ : unit) : M unit := Pure tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let* a := diverging_functions_no_info_in_return_type.some_fn tt in
  let* _ :=
    let* α0 :=
      format_arguments::["new_const"]
        (addr_of [ "This function returns and you can see this line.
" ]) in
    std.io.stdio._print α0 in
  Pure tt.
