(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Debug := std.fmt.Debug.

Module PrintInOption.
  Class Trait (Self : Set) : Set := {
    print_in_option : Self -> _;
  }.
  
  Global Instance Method_print_in_option `(Trait)
    : Notation.Dot "print_in_option" := {
    Notation.dot := print_in_option;
  }.
End PrintInOption.

Module Impl_PrintInOption_for_T.
  Definition Self := T.
  
  Definition print_in_option (self : Self) :=
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"]
        [ ""; "\n" ]
        [ _crate.fmt.ArgumentV1::["new_debug"] (Some self) ]) ;;
    tt ;;
    tt.
  
  Global Instance Method_print_in_option : Notation.Dot "print_in_option" := {
    Notation.dot := print_in_option;
  }.
  
  Global Instance I T : PrintInOption.Trait Self := {
    PrintInOption.print_in_option := print_in_option;
  }.
End Impl_PrintInOption_for_T.

Definition main (_ : unit) : unit :=
  let vec := Slice::["into_vec"] [ 1; 2; 3 ] in
  vec.["print_in_option"] ;;
  tt.

Definition main (_ : unit) : unit := test.
