(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module PrintInOption.
  Class Trait (Self : Set) : Set := {
    print_in_option `{H : State.Trait} : Self -> (M (H := H) unit);
  }.
  
  Global Instance Method_print_in_option `{H : State.Trait} `(Trait)
    : Notation.Dot "print_in_option" := {
    Notation.dot := print_in_option;
  }.
End PrintInOption.

Module Impl_generics_where_clauses_PrintInOption_for_T.
Section Impl_generics_where_clauses_PrintInOption_for_T.
  Context {T : Set}.
  
  Definition Self := T.
  
  Definition print_in_option
      `{H : State.Trait}
      (self : Self)
      : M (H := H) unit :=
    let* _ :=
      let* _ :=
        let* α0 :=
          format_argument::["new_debug"]
            (addr_of (core.option.Option.Some self)) in
        let* α1 :=
          format_arguments::["new_v1"] (addr_of [ ""; "
" ]) (addr_of [ α0 ]) in
        std.io.stdio._print α1 in
      Pure tt in
    Pure tt.
  
  Global Instance Method_print_in_option `{H : State.Trait} :
    Notation.Dot "print_in_option" := {
    Notation.dot := print_in_option;
  }.
  
  Global Instance I : generics_where_clauses.PrintInOption.Trait Self := {
    generics_where_clauses.PrintInOption.print_in_option
      `{H : State.Trait}
      :=
      print_in_option;
  }.
End Impl_generics_where_clauses_PrintInOption_for_T.
End Impl_generics_where_clauses_PrintInOption_for_T.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H : State.Trait} : M (H := H) unit :=
  let* vec :=
    let* α0 := alloc.boxed.Box::["new"] [ 1; 2; 3 ] in
    (Slice _)::["into_vec"] α0 in
  let* _ := vec.["print_in_option"] in
  Pure tt.
