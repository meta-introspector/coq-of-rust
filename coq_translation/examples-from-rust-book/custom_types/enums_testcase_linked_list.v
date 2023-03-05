(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Import crate.List.

Module List.
  Inductive t : Set :=
  | Cons (_ : u32) (_ : Box)
  | Nil.
End List.
Definition List := List.t.

Module ImplList.
  Definition Self := List.
  
  Definition new (_ : unit) : List := Nil.
  
  Definition prepend (self : Self) (elem : u32) : List :=
    Cons elem (ImplBox.new self).
  
  Definition len (self : ref Self) : u32 :=
    match deref self with
    | Cons (_, tail) => add 1 (method "len" tail)
    | Nil => 0
    end.
  
  Definition stringify (self : ref Self) : String :=
    match deref self with
    | Cons (head, tail) =>
      let res :=
        _crate.fmt.format
          (_crate.fmt.ImplArguments.new_v1
            [ ""; ", " ]
            [
              _crate.fmt.ImplArgumentV1.new_display head;
              _crate.fmt.ImplArgumentV1.new_display (method "stringify" tail)
            ]) in
      res
    | Nil =>
      let res :=
        _crate.fmt.format (_crate.fmt.ImplArguments.new_v1 [ "Nil" ] [  ]) in
      res
    end.
End ImplList.

Definition main (_ : unit) : unit :=
  let list := ImplList.new tt in
  assign list (method "prepend" list 1) ;;
  assign list (method "prepend" list 2) ;;
  assign list (method "prepend" list 3) ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ "linked list has length: "; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_display (method "len" list) ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.ImplArguments.new_v1
      [ ""; "\n" ]
      [ _crate.fmt.ImplArgumentV1.new_display (method "stringify" list) ]) ;;
  tt ;;
  tt.
