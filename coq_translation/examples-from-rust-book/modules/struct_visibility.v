(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module my.
  Module OpenBox.
    Record t : Set := {
      contents : T;
    }.
    
    Global Instance Get_contents : Notation.Dot "contents" := {
      Notation.dot '(Build_t x0) := x0;
    }.
  End OpenBox.
  Definition OpenBox : Set := OpenBox.t.
  
  Module ClosedBox.
    Record t : Set := {
      contents : T;
    }.
    
    Global Instance Get_contents : Notation.Dot "contents" := {
      Notation.dot '(Build_t x0) := x0;
    }.
  End ClosedBox.
  Definition ClosedBox : Set := ClosedBox.t.
  
  Module ImplClosedBox T.
    Definition Self := ClosedBox T.
    
    Definition new (contents : T) :=
      ltac:(function ({| ClosedBox.contents := contents; |} : ClosedBox T)).
    
    Global Instance AssociatedFunction_new :
      Notation.DoubleColon Self "new" := {
      Notation.double_colon := new;
    }.
  End ImplClosedBox T.
End my.

Module OpenBox.
  Record t : Set := {
    contents : T;
  }.
  
  Global Instance Get_contents : Notation.Dot "contents" := {
    Notation.dot '(Build_t x0) := x0;
  }.
End OpenBox.
Definition OpenBox : Set := OpenBox.t.

Module ClosedBox.
  Record t : Set := {
    contents : T;
  }.
  
  Global Instance Get_contents : Notation.Dot "contents" := {
    Notation.dot '(Build_t x0) := x0;
  }.
End ClosedBox.
Definition ClosedBox : Set := ClosedBox.t.

Module ImplClosedBox T_2.
  Definition Self := ClosedBox T.
  
  Definition new (contents : T) :=
    ltac:(function ({| ClosedBox.contents := contents; |} : ClosedBox T)).
  
  Global Instance AssociatedFunction_new : Notation.DoubleColon Self "new" := {
    Notation.double_colon := new;
  }.
End ImplClosedBox T_2.

Definition main :=
  ltac:(function (
    let open_box := {| my.OpenBox.contents := "public information"; |} in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "The open box contains: "; "
" ],
            [ format_argument::["new_display"](| open_box.["contents"] |) ]
          |)
        |) in
      tt in
    let _closed_box := my.ClosedBox::["new"](| "classified information" |) in
    tt
    : unit)).
