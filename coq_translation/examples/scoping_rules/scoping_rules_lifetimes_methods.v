(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Owner.
  Record t : Set := { _ : i32;}.
  
  Global Instance Get_0 : Notation.Dot 0 := {
    Notation.dot '(Build_t x0) := x0;
  }.
End Owner.
Definition Owner := Owner.t.

Module ImplOwner.
  Definition Self := Owner.
  
  Definition add_one (self : mut_ref Self) : M unit :=
    let* _ := (self.[0]).["add_assign"] 1 in
    Pure tt.
  
  Global Instance Method_add_one : Notation.Dot "add_one" := {
    Notation.dot := add_one;
  }.
  
  Definition print (self : ref Self) : M unit :=
    let* _ :=
      let* _ :=
        let* α0 := format_argument::["new_display"] (addr_of (self.[0])) in
        let* α1 :=
          format_arguments::["new_v1"]
            (addr_of [ "`print`: "; "
" ])
            (addr_of [ α0 ]) in
        _crate.io._print α1 in
      Pure tt in
    Pure tt.
  
  Global Instance Method_print : Notation.Dot "print" := {
    Notation.dot := print;
  }.
End ImplOwner.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let owner := Owner.Build_t 18 in
  let* _ := owner.["add_one"] in
  let* _ := owner.["print"] in
  Pure tt.