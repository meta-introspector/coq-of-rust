(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Error StructUnit.

Module Single.
  Inductive t : Set := Build (_ : A).
  
  Global Instance Get_0 : IndexedField.Class t 0 A := {|
    IndexedField.get '(Build x0) := x0;
  |}.
End Single.
Definition Single := Single.t.

Module SingleGen.
  Inductive t : Set := Build (_ : T).
  
  Global Instance Get_0 : IndexedField.Class t 0 T := {|
    IndexedField.get '(Build x0) := x0;
  |}.
End SingleGen.
Definition SingleGen := SingleGen.t.

Definition main (_ : unit) : unit :=
  let _s := Single A in
  let _char := SingleGen a in
  let _t := SingleGen A in
  let _i32 := SingleGen 6 in
  let _char := SingleGen a in
  tt.
