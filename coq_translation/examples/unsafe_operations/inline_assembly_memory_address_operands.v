(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit := Pure tt.

Definition load_fpu_control_word (control : u16) : M unit :=
  let _ := InlineAsm in
  Pure tt.
