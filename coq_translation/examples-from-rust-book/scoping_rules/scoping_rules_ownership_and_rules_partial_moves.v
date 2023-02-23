(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition main (_ : unit) : unit := Stmt_item.

Module Person.
  Record t : Set := {
    name : String;
    age : Box;
  }.
End Person.
Definition Person : Set := Person.t.

Module Impl__crate_fmt_Debug_for_Person.
  Definition Self := Person.
  
  Global Instance I : _crate.fmt.Debug.Class Self := {|
    _crate.fmt.Debug.fmt
        (self : ref main::Person)
        (f : mut_ref _crate.fmt.Formatter) :=
      _crate::fmt::ImplFormatter.debug_struct_field2_finish
        f
        "Person"
        "name"
        self.name
        "age"
        self.age;
  |}.
Module ImplPerson.
