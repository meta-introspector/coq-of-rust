(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  let person :=
    {| Person.name := String::["from"] "Alice"; Person.age := Box::["new"] 20;
    |} in
  let '{| Person.name := name; Person.age := age; |} := person in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "The person's age is "; "
" ]
          [ format_argument::["new_display"] age ]) in
    tt in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "The person's name is "; "
" ]
          [ format_argument::["new_display"] name ]) in
    tt in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "The person's age from person struct is "; "
" ]
          [ format_argument::["new_display"] person.["age"] ]) in
    tt in
  tt.

Module Person.
  Record t : Set := {
    name : String;
    age : Box u8;
  }.
  
  Global Instance Get_name : Notation.Dot "name" := {
    Notation.dot '(Build_t x0 _) := x0;
  }.
  Global Instance Get_age : Notation.Dot "age" := {
    Notation.dot '(Build_t _ x1) := x1;
  }.
End Person.
Definition Person : Set := Person.t.

Module Impl__crate_fmt_Debug_for_Person.
  Definition Self := Person.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref _crate.fmt.Formatter)
      : _crate.fmt.Result :=
    _crate.fmt.Formatter::["debug_struct_field2_finish"]
      f
      "Person"
      "name"
      self.["name"]
      "age"
      self.["age"].
  
  Global Instance Method_fmt : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : _crate.fmt.Debug.Trait Self := {
    _crate.fmt.Debug.fmt := fmt;
  }.
End Impl__crate_fmt_Debug_for_Person.
