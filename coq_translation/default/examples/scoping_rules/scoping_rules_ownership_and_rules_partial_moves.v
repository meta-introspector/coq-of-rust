(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H' : State.Trait} : M (H := H') unit :=
  let* person :=
    let* α0 := alloc.string.String::["from"] "Alice" in
    let* α1 := alloc.boxed.Box::["new"] 20 in
    Pure
      {|
        scoping_rules_ownership_and_rules_partial_moves.main.Person.name := α0;
        scoping_rules_ownership_and_rules_partial_moves.main.Person.age := α1;
      |} in
  let
      '{|
        scoping_rules_ownership_and_rules_partial_moves.main.Person.name
          :=
          name;
        scoping_rules_ownership_and_rules_partial_moves.main.Person.age := age;
      |} :=
    person in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of age) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "The person's age is "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of name) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "The person's name is "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of person.["age"]) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "The person's age from person struct is "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  Pure tt.

Module Person.
  Unset Primitive Projections.
  Record t : Set := {
    name : alloc.string.String;
    age : alloc.boxed.Box u8;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_name : Notation.Dot "name" := {
    Notation.dot '(Build_t x0 _) := x0;
  }.
  Global Instance Get_age : Notation.Dot "age" := {
    Notation.dot '(Build_t _ x1) := x1;
  }.
End Person.
Definition Person : Set := Person.t.

Module
  Impl_core_fmt_Debug_for_scoping_rules_ownership_and_rules_partial_moves_main_Person.
  Definition Self :=
    scoping_rules_ownership_and_rules_partial_moves.main.Person.
  
  Parameter debug_struct_field2_finish :
      core.fmt.Formatter ->
        string ->
          string ->
          alloc_string_String ->
          string ->
          alloc_boxed_Box_u8 ->
          M (H := H') core.fmt.Result.
  
  Global Instance Deb_debug_struct_field2_finish : Notation.DoubleColon
    core.fmt.Formatter "debug_struct_field2_finish" := {
    Notation.double_colon := debug_struct_field2_finish; }.
  
  Definition fmt
      `{H' : State.Trait}
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M (H := H') core.fmt.Result :=
    core.fmt.Formatter::["debug_struct_field2_finish"]
      f
      "Person"
      "name"
      (addr_of self.["name"])
      "age"
      (addr_of (addr_of self.["age"])).
  
  Global Instance Method_fmt `{H' : State.Trait} : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt `{H' : State.Trait} := fmt;
  }.
  Global Hint Resolve I : core.
End
  Impl_core_fmt_Debug_for_scoping_rules_ownership_and_rules_partial_moves_main_Person.
