(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Droppable.
  Record t : Set := {
    name : ref str;
  }.
  
  Global Instance Get_name : Notation.Dot "name" := {
    Notation.dot '(Build_t x0) := x0;
  }.
End Droppable.
Definition Droppable : Set := Droppable.t.

Module Impl_Drop_for_Droppable.
  Definition Self := Droppable.
  
  Definition drop (self : mut_ref Self) : M unit :=
    let* _ :=
      let* _ :=
        let* α0 := format_argument::["new_display"] (addr_of self.["name"]) in
        let* α1 :=
          format_arguments::["new_v1"]
            (addr_of [ "> Dropping "; "
" ])
            (addr_of [ α0 ]) in
        _crate.io._print α1 in
      Pure tt in
    Pure tt.
  
  Global Instance Method_drop : Notation.Dot "drop" := {
    Notation.dot := drop;
  }.
  
  Global Instance I : Drop.Trait Self := {
    Drop.drop := drop;
  }.
End Impl_Drop_for_Droppable.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let _a := {| Droppable.name := "a"; |} in
  let* _ :=
    let _b := {| Droppable.name := "b"; |} in
    let* _ :=
      let _c := {| Droppable.name := "c"; |} in
      let _d := {| Droppable.name := "d"; |} in
      let* _ :=
        let* _ :=
          let* α0 :=
            format_arguments::["new_const"] (addr_of [ "Exiting block B
" ]) in
          _crate.io._print α0 in
        Pure tt in
      Pure tt in
    let* _ :=
      let* _ :=
        let* α0 :=
          format_arguments::["new_const"]
            (addr_of [ "Just exited block B
" ]) in
        _crate.io._print α0 in
      Pure tt in
    let* _ :=
      let* _ :=
        let* α0 :=
          format_arguments::["new_const"] (addr_of [ "Exiting block A
" ]) in
        _crate.io._print α0 in
      Pure tt in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 :=
        format_arguments::["new_const"] (addr_of [ "Just exited block A
" ]) in
      _crate.io._print α0 in
    Pure tt in
  let* _ := drop _a in
  let* _ :=
    let* _ :=
      let* α0 :=
        format_arguments::["new_const"]
          (addr_of [ "end of the main function
" ]) in
      _crate.io._print α0 in
    Pure tt in
  Pure tt.
