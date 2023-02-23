(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module PhantomTuple.
  Inductive t : Set := Build (_ : A) (_ : PhantomData).
  
  Global Instance Get_0 : IndexedField.Class t 0 A := {|
    IndexedField.get '(Build x0 _) := x0;
  |}.
  Global Instance Get_1 : IndexedField.Class t 1 PhantomData := {|
    IndexedField.get '(Build _ x1) := x1;
  |}.
End PhantomTuple.
Definition PhantomTuple := PhantomTuple.t.

Module Impl__crate_marker_StructuralPartialEq_for_PhantomTuple.
  Definition Self := PhantomTuple.
  
  Global Instance I : _crate.marker.StructuralPartialEq.Class Self :=
      _crate.marker.StructuralPartialEq.Build_Class _.
Module ImplPhantomTuple.

Module Impl__crate_cmp_PartialEq_for_PhantomTuple.
  Definition Self := PhantomTuple.
  
  Global Instance I : _crate.cmp.PartialEq.Class Self := {|
    _crate.cmp.PartialEq.eq
        (self : ref PhantomTuple<A, B>)
        (other : ref PhantomTuple) :=
      andb
        (eqb
          (IndexedField.get (index := 0) self)
          (IndexedField.get (index := 0) other))
        (eqb
          (IndexedField.get (index := 1) self)
          (IndexedField.get (index := 1) other));
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
  
  Global Instance I : _crate.marker.StructuralPartialEq.Class Self :=
      _crate.marker.StructuralPartialEq.Build_Class _.
Module ImplPhantomStruct.

Module Impl__crate_cmp_PartialEq_for_PhantomStruct.
  Definition Self := PhantomStruct.
  
  Global Instance I : _crate.cmp.PartialEq.Class Self := {|
    _crate.cmp.PartialEq.eq
        (self : ref PhantomStruct<A, B>)
        (other : ref PhantomStruct) :=
      andb (eqb self.first other.first) (eqb self.phantom other.phantom);
  |}.
Module ImplPhantomStruct.

Definition main (_ : unit) :=
  let _tuple1 := PhantomTuple Q PhantomData in
  let _tuple2 := PhantomTuple Q PhantomData in
  let _struct1 :=
    {| PhantomStruct.first := Q; PhantomStruct.phantom := PhantomData; |} in
  let _struct2 :=
    {| PhantomStruct.first := Q; PhantomStruct.phantom := PhantomData; |} in
  tt.
