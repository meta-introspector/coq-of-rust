(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module List.
  Inductive t : Set :=
  |
    Cons
    (_ : u32.t)
    (_ :
      alloc.boxed.Box.t
        enums_testcase_linked_list.List.t
        alloc.boxed.Box.Default.A)
  | Nil.
  
  Definition Get_Cons_0 :=
    Ref.map
      (fun α => match α with | Cons α0 _ => Some α0 | _ => None end)
      (fun β α => match α with | Cons _ α1 => Some (Cons β α1) | _ => None end).
  
  Definition Get_Cons_1 :=
    Ref.map
      (fun α => match α with | Cons _ α1 => Some α1 | _ => None end)
      (fun β α => match α with | Cons α0 _ => Some (Cons α0 β) | _ => None end).
End List.

Module  Impl_enums_testcase_linked_list_List_t.
Section Impl_enums_testcase_linked_list_List_t.
  Definition Self : Set := enums_testcase_linked_list.List.t.
  
  (*
      fn new() -> List {
          // `Nil` has type `List`
          Nil
      }
  *)
  Parameter new : M enums_testcase_linked_list.List.t.
  
  Global Instance AssociatedFunction_new : Notations.DoubleColon Self "new" := {
    Notations.double_colon := new;
  }.
  
  (*
      fn prepend(self, elem: u32) -> List {
          // `Cons` also has type List
          Cons(elem, Box::new(self))
      }
  *)
  Parameter prepend : Self -> u32.t -> M enums_testcase_linked_list.List.t.
  
  Global Instance AssociatedFunction_prepend :
    Notations.DoubleColon Self "prepend" := {
    Notations.double_colon := prepend;
  }.
  
  (*
      fn len(&self) -> u32 {
          // `self` has to be matched, because the behavior of this method
          // depends on the variant of `self`
          // `self` has type `&List`, and `*self` has type `List`, matching on a
          // concrete type `T` is preferred over a match on a reference `&T`
          // after Rust 2018 you can use self here and tail (with no ref) below as well,
          // rust will infer &s and ref tail.
          // See https://doc.rust-lang.org/edition-guide/rust-2018/ownership-and-lifetimes/default-match-bindings.html
          match *self {
              // Can't take ownership of the tail, because `self` is borrowed;
              // instead take a reference to the tail
              Cons(_, ref tail) => 1 + tail.len(),
              // Base Case: An empty list has zero length
              Nil => 0,
          }
      }
  *)
  Parameter len : (ref Self) -> M u32.t.
  
  Global Instance AssociatedFunction_len : Notations.DoubleColon Self "len" := {
    Notations.double_colon := len;
  }.
  
  (*
      fn stringify(&self) -> String {
          match *self {
              Cons(head, ref tail) => {
                  // `format!` is similar to `print!`, but returns a heap
                  // allocated string instead of printing to the console
                  format!("{}, {}", head, tail.stringify())
              }
              Nil => {
                  format!("Nil")
              }
          }
      }
  *)
  Parameter stringify : (ref Self) -> M alloc.string.String.t.
  
  Global Instance AssociatedFunction_stringify :
    Notations.DoubleColon Self "stringify" := {
    Notations.double_colon := stringify;
  }.
End Impl_enums_testcase_linked_list_List_t.
End Impl_enums_testcase_linked_list_List_t.

(*
fn main() {
    // Create an empty linked list
    let mut list = List::new();

    // Prepend some elements
    list = list.prepend(1);
    list = list.prepend(2);
    list = list.prepend(3);

    // Show the final state of the list
    println!("linked list has length: {}", list.len());
    println!("{}", list.stringify());
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : M unit.
