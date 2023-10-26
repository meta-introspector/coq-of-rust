(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module my.
  Module OpenBox.
    Section OpenBox.
      Context `{ℋ : State.Trait}.
      
      Context {T : Set}.
      
      Unset Primitive Projections.
      Record t : Set := {
        contents : T;
      }.
      Global Set Primitive Projections.
      
      #[refine] Global Instance Get_contents : Notation.Dot "contents" := {
        Notation.dot x := let* x := M.read x in Pure x.(contents) : M _;
      }.
      Admitted.
      #[refine] Global Instance Get_AF_contents :
        Notation.DoubleColon t "contents" := {
        Notation.double_colon x :=
          let* x := M.read x in Pure x.(contents) : M _;
      }.
      Admitted.
    End OpenBox.
  End OpenBox.
  Definition OpenBox (T : Set) `{ℋ : State.Trait} : Set :=
    M.val (OpenBox.t (T := T)).
  
  Module ClosedBox.
    Section ClosedBox.
      Context `{ℋ : State.Trait}.
      
      Context {T : Set}.
      
      Unset Primitive Projections.
      Record t : Set := {
        contents : T;
      }.
      Global Set Primitive Projections.
      
      #[refine] Global Instance Get_contents : Notation.Dot "contents" := {
        Notation.dot x := let* x := M.read x in Pure x.(contents) : M _;
      }.
      Admitted.
      #[refine] Global Instance Get_AF_contents :
        Notation.DoubleColon t "contents" := {
        Notation.double_colon x :=
          let* x := M.read x in Pure x.(contents) : M _;
      }.
      Admitted.
    End ClosedBox.
  End ClosedBox.
  Definition ClosedBox (T : Set) `{ℋ : State.Trait} : Set :=
    M.val (ClosedBox.t (T := T)).
  
  Module Impl_struct_visibility_my_ClosedBox_T.
    Section Impl_struct_visibility_my_ClosedBox_T.
      Context `{ℋ : State.Trait}.
      
      Definition Self : Set := struct_visibility.my.ClosedBox T.
      
      Parameter new : T -> M (struct_visibility.my.ClosedBox T).
      
      Global Instance AssociatedFunction_new :
        Notation.DoubleColon Self "new" := {
        Notation.double_colon := new;
      }.
    End Impl_struct_visibility_my_ClosedBox_T.
  End Impl_struct_visibility_my_ClosedBox_T.
End my.

Module OpenBox.
  Section OpenBox.
    Context `{ℋ : State.Trait}.
    
    Context {T : Set}.
    
    Unset Primitive Projections.
    Record t : Set := {
      contents : T;
    }.
    Global Set Primitive Projections.
    
    #[refine] Global Instance Get_contents : Notation.Dot "contents" := {
      Notation.dot x := let* x := M.read x in Pure x.(contents) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_AF_contents :
      Notation.DoubleColon t "contents" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(contents) : M _;
    }.
    Admitted.
  End OpenBox.
End OpenBox.
Definition OpenBox (T : Set) `{ℋ : State.Trait} : Set :=
  M.val (OpenBox.t (T := T)).

Module ClosedBox.
  Section ClosedBox.
    Context `{ℋ : State.Trait}.
    
    Context {T : Set}.
    
    Unset Primitive Projections.
    Record t : Set := {
      contents : T;
    }.
    Global Set Primitive Projections.
    
    #[refine] Global Instance Get_contents : Notation.Dot "contents" := {
      Notation.dot x := let* x := M.read x in Pure x.(contents) : M _;
    }.
    Admitted.
    #[refine] Global Instance Get_AF_contents :
      Notation.DoubleColon t "contents" := {
      Notation.double_colon x := let* x := M.read x in Pure x.(contents) : M _;
    }.
    Admitted.
  End ClosedBox.
End ClosedBox.
Definition ClosedBox (T : Set) `{ℋ : State.Trait} : Set :=
  M.val (ClosedBox.t (T := T)).

Module Impl_struct_visibility_my_ClosedBox_T_2.
  Section Impl_struct_visibility_my_ClosedBox_T_2.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := struct_visibility.my.ClosedBox T.
    
    Parameter new : T -> M (struct_visibility.my.ClosedBox T).
    
    Global Instance AssociatedFunction_new :
      Notation.DoubleColon Self "new" := {
      Notation.double_colon := new;
    }.
  End Impl_struct_visibility_my_ClosedBox_T_2.
End Impl_struct_visibility_my_ClosedBox_T_2.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Parameter main : forall `{ℋ : State.Trait}, M unit.
