(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Foo.
  Section Foo.
    Context `{ℋ : State.Trait}.
    
    Unset Primitive Projections.
    Record t : Set := {
      x0 : u32;
    }.
    Global Set Primitive Projections.
    
    #[refine] Global Instance Get_0 : Notation.Dot "0" := {
      Notation.dot x := let* x := M.read x in Pure x.(x0) : M _;
    }.
    Admitted.
  End Foo.
End Foo.
Definition Foo `{ℋ : State.Trait} : Set := M.val Foo.t.

Module Impl_example05_Foo.
  Section Impl_example05_Foo.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := example05.Foo.
    
    Definition plus1 (self : Self) : M u32 :=
      let* α0 := self.["0"] in
      let* α1 := M.alloc 1 in
      add α0 α1.
    
    Global Instance AssociatedFunction_plus1 :
      Notation.DoubleColon Self "plus1" := {
      Notation.double_colon := plus1;
    }.
  End Impl_example05_Foo.
End Impl_example05_Foo.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  let* foo :=
    let* α0 := M.alloc 0 in
    Pure (example05.Foo.Build_t α0) in
  let* _ := example05.Foo::["plus1"] foo in
  M.alloc tt.
