(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Val.
Section Val.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    val : f64;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_val : Notation.Dot "val" := {
    Notation.dot x := let* x := M.read x in M.pure x.(val) : M _;
  }.
  Global Instance Get_AF_val : Notation.DoubleColon t "val" := {
    Notation.double_colon x := let* x := M.read x in M.pure x.(val) : M _;
  }.
End Val.
End Val.
Definition Val `{ℋ : State.Trait} : Set := M.Val Val.t.

Module  GenVal.
Section GenVal.
  Context `{ℋ : State.Trait}.
  
  Context {T : Set}.
  
  Unset Primitive Projections.
  Record t : Set := {
    gen_val : T;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_gen_val : Notation.Dot "gen_val" := {
    Notation.dot x := let* x := M.read x in M.pure x.(gen_val) : M _;
  }.
  Global Instance Get_AF_gen_val : Notation.DoubleColon t "gen_val" := {
    Notation.double_colon x := let* x := M.read x in M.pure x.(gen_val) : M _;
  }.
End GenVal.
End GenVal.
Definition GenVal (T : Set) `{ℋ : State.Trait} : Set :=
  M.Val (GenVal.t (T := T)).

Module  Impl_generics_implementation_Val.
Section Impl_generics_implementation_Val.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := generics_implementation.Val.
  
  Definition value (self : ref Self) : M (ref f64) :=
    M.function_body
      (let* α0 : ltac:(refine generics_implementation.Val) := deref self in
      let* α1 : ltac:(refine f64) := α0.["val"] in
      let* α2 : ltac:(refine (ref f64)) := borrow α1 in
      let* α3 : ltac:(refine f64) := deref α2 in
      borrow α3).
  
  Global Instance AssociatedFunction_value :
    Notation.DoubleColon Self "value" := {
    Notation.double_colon := value;
  }.
End Impl_generics_implementation_Val.
End Impl_generics_implementation_Val.

Module  Impl_generics_implementation_GenVal_T.
Section Impl_generics_implementation_GenVal_T.
  Context `{ℋ : State.Trait}.
  
  Context {T : Set}.
  
  Definition Self : Set := generics_implementation.GenVal T.
  
  Definition value (self : ref Self) : M (ref T) :=
    M.function_body
      (let* α0 : ltac:(refine (generics_implementation.GenVal T)) :=
        deref self in
      let* α1 : ltac:(refine T) := α0.["gen_val"] in
      let* α2 : ltac:(refine (ref T)) := borrow α1 in
      let* α3 : ltac:(refine T) := deref α2 in
      borrow α3).
  
  Global Instance AssociatedFunction_value :
    Notation.DoubleColon Self "value" := {
    Notation.double_colon := value;
  }.
End Impl_generics_implementation_GenVal_T.
End Impl_generics_implementation_GenVal_T.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* x : ltac:(refine generics_implementation.Val) :=
      let* α0 : ltac:(refine f64) := M.alloc 3 (* 3.0 *) in
      M.alloc {| generics_implementation.Val.val := α0; |} in
    let* y : ltac:(refine (generics_implementation.GenVal i32)) :=
      let* α0 : ltac:(refine i32) := M.alloc 3 in
      M.alloc {| generics_implementation.GenVal.gen_val := α0; |} in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str ""; mk_str ", "; mk_str "
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine (ref generics_implementation.Val)) := borrow x in
        let* α6 : ltac:(refine (ref f64)) :=
          generics_implementation.Val::["value"] α5 in
        let* α7 : ltac:(refine (ref (ref f64))) := borrow α6 in
        let* α8 : ltac:(refine (ref f64)) := deref α7 in
        let* α9 : ltac:(refine (ref (ref f64))) := borrow α8 in
        let* α10 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_display"] α9 in
        let* α11 : ltac:(refine (ref (generics_implementation.GenVal i32))) :=
          borrow y in
        let* α12 : ltac:(refine (ref i32)) :=
          (generics_implementation.GenVal i32)::["value"] α11 in
        let* α13 : ltac:(refine (ref (ref i32))) := borrow α12 in
        let* α14 : ltac:(refine (ref i32)) := deref α13 in
        let* α15 : ltac:(refine (ref (ref i32))) := borrow α14 in
        let* α16 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_display"] α15 in
        let* α17 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α10; α16 ] in
        let* α18 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α17 in
        let* α19 : ltac:(refine (array core.fmt.rt.Argument)) := deref α18 in
        let* α20 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α19 in
        let* α21 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α20 in
        let* α22 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α4 α21 in
        std.io.stdio._print α22 in
      M.alloc tt in
    M.alloc tt).
