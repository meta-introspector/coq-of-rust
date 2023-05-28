(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Import crate.List.

Module List.
  Inductive t : Set :=
  | Cons (_ : u32) (_ : Box List)
  | Nil.
End List.
Definition List := List.t.

Module ImplList.
  Definition Self := List.
  
  Definition new (_ : unit) : List := Nil.
  
  Global Instance AssociatedFunction_new : Notation.DoubleColon Self "new" := {
    Notation.double_colon := new;
  }.
  
  Definition prepend (self : Self) (elem : u32) : List :=
    Cons elem (Box::["new"] self).
  
  Global Instance Method_prepend : Notation.Dot "prepend" := {
    Notation.dot := prepend;
  }.
  
  Definition len (self : ref Self) : u32 :=
    match self.["deref"] with
    | Cons _ tail => 1.["add"] tail.["len"]
    | Nil => 0
    end.
  
  Global Instance Method_len : Notation.Dot "len" := {
    Notation.dot := len;
  }.
  
  Definition stringify (self : ref Self) : String :=
    match self.["deref"] with
    | Cons head tail =>
      let res :=
        _crate.fmt.format
          (format_arguments::["new_v1"]
            [ ""; ", " ]
            [
              format_argument::["new_display"] head;
              format_argument::["new_display"] tail.["stringify"]
            ]) in
      res
    | Nil =>
      let res :=
        _crate.fmt.format (format_arguments::["new_const"] [ "Nil" ]) in
      res
    end.
  
  Global Instance Method_stringify : Notation.Dot "stringify" := {
    Notation.dot := stringify;
  }.
End ImplList.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  let list := List::["new"] tt in
  let _ := assign list (list.["prepend"] 1) in
  let _ := assign list (list.["prepend"] 2) in
  let _ := assign list (list.["prepend"] 3) in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "linked list has length: "; "
" ]
          [ format_argument::["new_display"] list.["len"] ]) in
    tt in
  let _ :=
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ ""; "
" ]
          [ format_argument::["new_display"] list.["stringify"] ]) in
    tt in
  tt.
