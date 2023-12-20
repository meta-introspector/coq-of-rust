(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    #[derive(Debug)]
    struct Person {
        name: String,
        age: Box<u8>,
    }

    let person = Person {
        name: String::from("Alice"),
        age: Box::new(20),
    };

    // `name` is moved out of person, but `age` is referenced
    let Person { name, ref age } = person;

    println!("The person's age is {}", age);

    println!("The person's name is {}", name);

    // Error! borrow of partially moved value: `person` partial move occurs
    //println!("The person struct is {:?}", person);

    // `person` cannot be used but `person.age` can be used as it is not moved
    println!("The person's age from person struct is {}", person.age);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.

Module  Person.
Section Person.
  Record t : Set := {
    name : alloc.string.String.t;
    age : alloc.boxed.Box.t u8.t alloc.boxed.Box.Default.A;
  }.
  
  Global Instance Get_name : Notations.Dot "name" := {
    Notations.dot := Ref.map (fun x => x.(name)) (fun v x => x <| name := v |>);
  }.
  Global Instance Get_AF_name : Notations.DoubleColon t "name" := {
    Notations.double_colon (x : M.Val t) := x.["name"];
  }.
  Global Instance Get_age : Notations.Dot "age" := {
    Notations.dot := Ref.map (fun x => x.(age)) (fun v x => x <| age := v |>);
  }.
  Global Instance Get_AF_age : Notations.DoubleColon t "age" := {
    Notations.double_colon (x : M.Val t) := x.["age"];
  }.
End Person.
End Person.

Module  Impl_core_fmt_Debug_for_scoping_rules_ownership_and_rules_partial_moves_main_Person_t.
Section Impl_core_fmt_Debug_for_scoping_rules_ownership_and_rules_partial_moves_main_Person_t.
  Ltac Self :=
    exact scoping_rules_ownership_and_rules_partial_moves.main.Person.t.
  
  (*
      Debug
  *)
  Parameter fmt :
      (ref ltac:(Self)) ->
        (mut_ref core.fmt.Formatter.t) ->
        M ltac:(core.fmt.Result).
  
  Global Instance AssociatedFunction_fmt :
    Notations.DoubleColon ltac:(Self) "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait ltac:(Self) := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_scoping_rules_ownership_and_rules_partial_moves_main_Person_t.
End Impl_core_fmt_Debug_for_scoping_rules_ownership_and_rules_partial_moves_main_Person_t.