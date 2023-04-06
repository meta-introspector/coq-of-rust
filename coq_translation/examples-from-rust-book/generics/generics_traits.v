(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Error StructUnit.

Error StructUnit.

Module DoubleDrop.
  Class Trait (T Self : Set) : Set := {
    double_drop : Self -> (T -> _);
  }.
  
  Global Instance Method_double_drop `(Trait) : Notation.Dot "double_drop" := {|
    Notation.dot := double_drop;
  |}.
End DoubleDrop.

Module Impl_DoubleDrop_for_U.
  Definition Self := U.
  
  Definition double_drop (self : Self) (Pattern : T) := tt.
  
  Global Instance Method_double_drop : Notation.Dot "double_drop" := {|
    Notation.dot := double_drop;
  |}.
  
  Global Instance I T U : DoubleDrop.Trait T Self := {|
    DoubleDrop.double_drop := double_drop;
  |}.
End Impl_DoubleDrop_for_U.

Definition main (_ : unit) : unit :=
  let empty := Empty in
  let null := Null in
  empty.["double_drop"] null ;;
  tt.
