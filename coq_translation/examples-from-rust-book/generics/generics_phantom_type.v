(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition PhantomTuple : Set :=
  A * PhantomData.

Module Impl__crate_marker_StructuralPartialEq_for_PhantomTuple.
  Definition Self := PhantomTuple.
  
  #[global] Instance I : _crate.marker.StructuralPartialEq.Class Self := {|
  |}.
Module ImplPhantomTuple.

Module Impl__crate_cmp_PartialEq_for_PhantomTuple.
  Definition Self := PhantomTuple.
  
  #[global] Instance I : _crate.cmp.PartialEq.Class Self := {|
    eq
      (self : static_ref PhantomTuple<A, B>)
      (other : static_ref PhantomTuple)
      : bool :=
      and (eq self.0 other.0) (eq self.1 other.1);
  |}.
Module ImplPhantomTuple.

Module PhantomStruct.
  Record t : Set := {
    first : A;
    phantom : PhantomData;
  }.
End PhantomStruct.
Definition PhantomStruct : Set := PhantomStruct.t.

Module Impl__crate_marker_StructuralPartialEq_for_PhantomStruct.
  Definition Self := PhantomStruct.
  
  #[global] Instance I : _crate.marker.StructuralPartialEq.Class Self := {|
  |}.
Module ImplPhantomStruct.

Module Impl__crate_cmp_PartialEq_for_PhantomStruct.
  Definition Self := PhantomStruct.
  
  #[global] Instance I : _crate.cmp.PartialEq.Class Self := {|
    eq
      (self : static_ref PhantomStruct<A, B>)
      (other : static_ref PhantomStruct)
      : bool :=
      and (eq self.first other.first) (eq self.phantom other.phantom);
  |}.
Module ImplPhantomStruct.

Definition main (_ : unit) :=
  let _tuple1 := PhantomTuple Q PhantomData in
  let _tuple2 := PhantomTuple Q PhantomData in
  let _struct1 := {|
    PhantomStruct.first := Q;
    PhantomStruct.phantom := PhantomData;
  |} in
  let _struct2 := {|
    PhantomStruct.first := Q;
    PhantomStruct.phantom := PhantomData;
  |} in
  tt.
