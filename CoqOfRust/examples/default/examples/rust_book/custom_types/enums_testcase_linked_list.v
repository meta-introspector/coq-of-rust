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
  Definition new : M enums_testcase_linked_list.List.t :=
    M.pure enums_testcase_linked_list.List.Nil.
  
  Global Instance AssociatedFunction_new : Notations.DoubleColon Self "new" := {
    Notations.double_colon := new;
  }.
  
  (*
      fn prepend(self, elem: u32) -> List {
          // `Cons` also has type List
          Cons(elem, Box::new(self))
      }
  *)
  Definition prepend
      (self : Self)
      (elem : u32.t)
      : M enums_testcase_linked_list.List.t :=
    let* self := M.alloc self in
    let* elem := M.alloc elem in
    let* α0 : u32.t := M.read elem in
    let* α1 : enums_testcase_linked_list.List.t := M.read self in
    let* α2 :
        alloc.boxed.Box.t
          enums_testcase_linked_list.List.t
          alloc.alloc.Global.t :=
      M.call
        ((alloc.boxed.Box.t
              enums_testcase_linked_list.List.t
              alloc.alloc.Global.t)::["new"]
          α1) in
    M.pure (enums_testcase_linked_list.List.Cons α0 α2).
  
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
  Definition len (self : ref Self) : M u32.t :=
    let* self := M.alloc self in
    let* α0 : ref enums_testcase_linked_list.List.t := M.read self in
    let* α1 : M.Val u32.t :=
      match_operator
        (deref α0)
        [
          fun γ =>
            (let* α0 := M.read γ in
            match α0 with
            | enums_testcase_linked_list.List.Cons _ _ =>
              let γ0_0 := enums_testcase_linked_list.List.Get_Cons_0 γ in
              let γ0_1 := enums_testcase_linked_list.List.Get_Cons_1 γ in
              let* tail := M.alloc (borrow γ0_1) in
              let* α0 :
                  ref
                    (alloc.boxed.Box.t
                      enums_testcase_linked_list.List.t
                      alloc.alloc.Global.t) :=
                M.read tail in
              let* α1 :
                  alloc.boxed.Box.t
                    enums_testcase_linked_list.List.t
                    alloc.alloc.Global.t :=
                M.read (deref α0) in
              let* α2 : u32.t :=
                M.call
                  (enums_testcase_linked_list.List.t::["len"]
                    (borrow (deref α1))) in
              let* α3 : u32.t :=
                BinOp.Panic.add ((Integer.of_Z 1) : u32.t) α2 in
              M.alloc α3
            | _ => M.break_match
            end) :
            M (M.Val u32.t);
          fun γ =>
            (let* α0 := M.read γ in
            match α0 with
            | enums_testcase_linked_list.List.Nil =>
              M.alloc ((Integer.of_Z 0) : u32.t)
            | _ => M.break_match
            end) :
            M (M.Val u32.t)
        ] in
    M.read α1.
  
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
  Definition stringify (self : ref Self) : M alloc.string.String.t :=
    let* self := M.alloc self in
    let* α0 : ref enums_testcase_linked_list.List.t := M.read self in
    let* α1 : M.Val alloc.string.String.t :=
      match_operator
        (deref α0)
        [
          fun γ =>
            (let* α0 := M.read γ in
            match α0 with
            | enums_testcase_linked_list.List.Cons _ _ =>
              let γ0_0 := enums_testcase_linked_list.List.Get_Cons_0 γ in
              let γ0_1 := enums_testcase_linked_list.List.Get_Cons_1 γ in
              let* head := M.copy γ0_0 in
              let* tail := M.alloc (borrow γ0_1) in
              let* res : M.Val alloc.string.String.t :=
                let* α0 : ref str.t := M.read (mk_str "") in
                let* α1 : ref str.t := M.read (mk_str ", ") in
                let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
                let* α3 : core.fmt.rt.Argument.t :=
                  M.call
                    (core.fmt.rt.Argument.t::["new_display"] (borrow head)) in
                let* α4 :
                    ref
                      (alloc.boxed.Box.t
                        enums_testcase_linked_list.List.t
                        alloc.alloc.Global.t) :=
                  M.read tail in
                let* α5 :
                    alloc.boxed.Box.t
                      enums_testcase_linked_list.List.t
                      alloc.alloc.Global.t :=
                  M.read (deref α4) in
                let* α6 : alloc.string.String.t :=
                  M.call
                    (enums_testcase_linked_list.List.t::["stringify"]
                      (borrow (deref α5))) in
                let* α7 : M.Val alloc.string.String.t := M.alloc α6 in
                let* α8 : core.fmt.rt.Argument.t :=
                  M.call
                    (core.fmt.rt.Argument.t::["new_display"] (borrow α7)) in
                let* α9 : M.Val (array core.fmt.rt.Argument.t) :=
                  M.alloc [ α3; α8 ] in
                let* α10 : core.fmt.Arguments.t :=
                  M.call
                    (core.fmt.Arguments.t::["new_v1"]
                      (pointer_coercion "Unsize" (borrow α2))
                      (pointer_coercion "Unsize" (borrow α9))) in
                let* α11 : alloc.string.String.t :=
                  M.call (alloc.fmt.format α10) in
                M.alloc α11 in
              M.pure res
            | _ => M.break_match
            end) :
            M (M.Val alloc.string.String.t);
          fun γ =>
            (let* α0 := M.read γ in
            match α0 with
            | enums_testcase_linked_list.List.Nil =>
              let* res : M.Val alloc.string.String.t :=
                let* α0 : ref str.t := M.read (mk_str "Nil") in
                let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
                let* α2 : core.fmt.Arguments.t :=
                  M.call
                    (core.fmt.Arguments.t::["new_const"]
                      (pointer_coercion "Unsize" (borrow α1))) in
                let* α3 : alloc.string.String.t :=
                  M.call (alloc.fmt.format α2) in
                M.alloc α3 in
              M.pure res
            | _ => M.break_match
            end) :
            M (M.Val alloc.string.String.t)
        ] in
    M.read α1.
  
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
Definition main : M unit :=
  let* list : M.Val enums_testcase_linked_list.List.t :=
    let* α0 : enums_testcase_linked_list.List.t :=
      M.call enums_testcase_linked_list.List.t::["new"] in
    M.alloc α0 in
  let* _ : M.Val unit :=
    let* α0 : enums_testcase_linked_list.List.t := M.read list in
    let* α1 : enums_testcase_linked_list.List.t :=
      M.call
        (enums_testcase_linked_list.List.t::["prepend"]
          α0
          ((Integer.of_Z 1) : u32.t)) in
    assign list α1 in
  let* _ : M.Val unit :=
    let* α0 : enums_testcase_linked_list.List.t := M.read list in
    let* α1 : enums_testcase_linked_list.List.t :=
      M.call
        (enums_testcase_linked_list.List.t::["prepend"]
          α0
          ((Integer.of_Z 2) : u32.t)) in
    assign list α1 in
  let* _ : M.Val unit :=
    let* α0 : enums_testcase_linked_list.List.t := M.read list in
    let* α1 : enums_testcase_linked_list.List.t :=
      M.call
        (enums_testcase_linked_list.List.t::["prepend"]
          α0
          ((Integer.of_Z 3) : u32.t)) in
    assign list α1 in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "linked list has length: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : u32.t :=
        M.call (enums_testcase_linked_list.List.t::["len"] (borrow list)) in
      let* α4 : M.Val u32.t := M.alloc α3 in
      let* α5 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α4)) in
      let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
      let* α7 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α6))) in
      let* α8 : unit := M.call (std.io.stdio._print α7) in
      M.alloc α8 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : alloc.string.String.t :=
        M.call
          (enums_testcase_linked_list.List.t::["stringify"] (borrow list)) in
      let* α4 : M.Val alloc.string.String.t := M.alloc α3 in
      let* α5 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α4)) in
      let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
      let* α7 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α6))) in
      let* α8 : unit := M.call (std.io.stdio._print α7) in
      M.alloc α8 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
