(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Fruit.
  Inductive t : Set :=
  | Apple
  | Orange
  | Banana
  | Kiwi
  | Lemon.
End Fruit.

Module  Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_get_or_insert_Fruit_t.
Section Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_get_or_insert_Fruit_t.
  Definition Self : Set :=
    unpacking_options_and_defaults_via_get_or_insert.Fruit.t.
  
  (*
  Debug
  *)
  Parameter fmt :
      (ref Self) -> (mut_ref core.fmt.Formatter.t) -> M ltac:(core.fmt.Result).
  
  Global Instance AssociatedFunction_fmt : Notations.DoubleColon Self "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_get_or_insert_Fruit_t.
End Impl_core_fmt_Debug_for_unpacking_options_and_defaults_via_get_or_insert_Fruit_t.

(*
fn main() {
    let mut my_fruit: Option<Fruit> = None;
    let apple = Fruit::Apple;
    let first_available_fruit = my_fruit.get_or_insert(apple);
    println!("my_fruit is: {:?}", first_available_fruit);
    println!("first_available_fruit is: {:?}", first_available_fruit);
    // my_fruit is: Apple
    // first_available_fruit is: Apple
    //println!("Variable named `apple` is moved: {:?}", apple);
    // TODO: uncomment the line above to see the compiler error
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.