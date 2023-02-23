(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Owner.
  Inductive t : Set := Build (_ : i32).
  
  Global Instance Get_0 : IndexedField.Class t 0 i32 := {|
    IndexedField.get '(Build x0) := x0;
  |}.
End Owner.
Definition Owner := Owner.t.

(* Impl [Owner] *)
Module ImplOwner.
  Definition add_one (self : mut_ref Owner) :=
    assign
      IndexedField.get (index := 0) self
      :=
      add (IndexedField.get (index := 0) self) 1 ;;
    tt.
  
  Definition print (self : ref Owner) :=
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1
        ["`print`: ";"\n"]
        [_crate::fmt::ImplArgumentV1.new_display
          (IndexedField.get (index := 0) self)]) ;;
    tt ;;
    tt.
End ImplOwner.
(* End impl [Owner] *)

Definition main (_ : unit) : unit :=
  let owner := Owner 18 in
  method "add_one" owner ;;
  method "print" owner ;;
  tt.
