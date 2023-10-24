(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Empty.
  Section Empty.
    Context `{State.Trait}.
    
    Inductive t : Set := Build.
  End Empty.
End Empty.
Definition Empty := @Empty.t.

Module Null.
  Section Null.
    Context `{State.Trait}.
    
    Inductive t : Set := Build.
  End Null.
End Null.
Definition Null := @Null.t.

Module DoubleDrop.
  Section DoubleDrop.
    Context `{State.Trait}.
    
    Class Trait (Self : Set) {T : Set} : Type := {
      double_drop : Self -> T -> M unit;
    }.
    
  End DoubleDrop.
End DoubleDrop.

Module Impl_generics_traits_DoubleDrop_for_U.
  Section Impl_generics_traits_DoubleDrop_for_U.
    Context `{State.Trait}.
    
    Context {T U : Set}.
    
    Definition Self : Set := U.
    
    Definition double_drop (self : Self) (Pattern : T) : M unit := M.alloc tt.
    
    Global Instance AssociatedFunction_double_drop :
      Notation.DoubleColon Self "double_drop" := {
      Notation.double_colon := double_drop;
    }.
    
    Global Instance I : generics_traits.DoubleDrop.Trait Self (T := T) := {
      generics_traits.DoubleDrop.double_drop := double_drop;
    }.
  End Impl_generics_traits_DoubleDrop_for_U.
  Global Hint Resolve I : core.
End Impl_generics_traits_DoubleDrop_for_U.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{State.Trait} : M unit :=
  let empty := generics_traits.Empty.Build_t tt in
  let null := generics_traits.Null.Build_t tt in
  let* _ := generics_traits.DoubleDrop.double_drop empty null in
  M.alloc tt.
