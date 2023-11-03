(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Years.
Section Years.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    x0 : i64;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_0 : Notation.Dot "0" := {
    Notation.dot x := let* x := M.read x in M.pure x.(x0) : M _;
  }.
End Years.
End Years.
Definition Years `{ℋ : State.Trait} : Set := M.Val Years.t.

Module  Days.
Section Days.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    x0 : i64;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_0 : Notation.Dot "0" := {
    Notation.dot x := let* x := M.read x in M.pure x.(x0) : M _;
  }.
End Days.
End Days.
Definition Days `{ℋ : State.Trait} : Set := M.Val Days.t.

Module  Impl_generics_new_type_idiom_Years.
Section Impl_generics_new_type_idiom_Years.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := generics_new_type_idiom.Years.
  
  Definition to_days (self : ref Self) : M generics_new_type_idiom.Days :=
    M.function_body
      (let* α0 := deref self generics_new_type_idiom.Years in
      let* α1 := α0.["0"] in
      let* α2 := M.alloc 365 in
      let* α3 := BinOp.mul α1 α2 in
      M.alloc (generics_new_type_idiom.Days.Build_t α3)).
  
  Global Instance AssociatedFunction_to_days :
    Notation.DoubleColon Self "to_days" := {
    Notation.double_colon := to_days;
  }.
End Impl_generics_new_type_idiom_Years.
End Impl_generics_new_type_idiom_Years.

Module  Impl_generics_new_type_idiom_Days.
Section Impl_generics_new_type_idiom_Days.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := generics_new_type_idiom.Days.
  
  Definition to_years (self : ref Self) : M generics_new_type_idiom.Years :=
    M.function_body
      (let* α0 := deref self generics_new_type_idiom.Days in
      let* α1 := α0.["0"] in
      let* α2 := M.alloc 365 in
      let* α3 := BinOp.div α1 α2 in
      M.alloc (generics_new_type_idiom.Years.Build_t α3)).
  
  Global Instance AssociatedFunction_to_years :
    Notation.DoubleColon Self "to_years" := {
    Notation.double_colon := to_years;
  }.
End Impl_generics_new_type_idiom_Days.
End Impl_generics_new_type_idiom_Days.

Definition old_enough
    `{ℋ : State.Trait}
    (age : ref generics_new_type_idiom.Years)
    : M bool :=
  M.function_body
    (let* α0 := deref age generics_new_type_idiom.Years in
    let* α1 := α0.["0"] in
    let* α2 := M.alloc 18 in
    BinOp.ge α1 α2).

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* age :=
      let* α0 := M.alloc 5 in
      M.alloc (generics_new_type_idiom.Years.Build_t α0) in
    let* age_days :=
      let* α0 := borrow age generics_new_type_idiom.Years in
      generics_new_type_idiom.Years::["to_days"] α0 in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow [ mk_str "Old enough "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow age generics_new_type_idiom.Years in
        let* α5 := deref α4 generics_new_type_idiom.Years in
        let* α6 := borrow α5 generics_new_type_idiom.Years in
        let* α7 := generics_new_type_idiom.old_enough α6 in
        let* α8 := borrow α7 bool in
        let* α9 := deref α8 bool in
        let* α10 := borrow α9 bool in
        let* α11 := core.fmt.rt.Argument::["new_display"] α10 in
        let* α12 := borrow [ α11 ] (list core.fmt.rt.Argument) in
        let* α13 := deref α12 (list core.fmt.rt.Argument) in
        let* α14 := borrow α13 (list core.fmt.rt.Argument) in
        let* α15 := pointer_coercion "Unsize" α14 in
        let* α16 := core.fmt.Arguments::["new_v1"] α3 α15 in
        std.io.stdio._print α16 in
      M.alloc tt in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow [ mk_str "Old enough "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow age_days generics_new_type_idiom.Days in
        let* α5 := generics_new_type_idiom.Days::["to_years"] α4 in
        let* α6 := borrow α5 generics_new_type_idiom.Years in
        let* α7 := deref α6 generics_new_type_idiom.Years in
        let* α8 := borrow α7 generics_new_type_idiom.Years in
        let* α9 := generics_new_type_idiom.old_enough α8 in
        let* α10 := borrow α9 bool in
        let* α11 := deref α10 bool in
        let* α12 := borrow α11 bool in
        let* α13 := core.fmt.rt.Argument::["new_display"] α12 in
        let* α14 := borrow [ α13 ] (list core.fmt.rt.Argument) in
        let* α15 := deref α14 (list core.fmt.rt.Argument) in
        let* α16 := borrow α15 (list core.fmt.rt.Argument) in
        let* α17 := pointer_coercion "Unsize" α16 in
        let* α18 := core.fmt.Arguments::["new_v1"] α3 α17 in
        std.io.stdio._print α18 in
      M.alloc tt in
    M.alloc tt).
