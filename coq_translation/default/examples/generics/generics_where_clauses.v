(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  PrintInOption.
Section PrintInOption.
  Context `{ℋ : State.Trait}.
  
  Class Trait (Self : Set) : Type := {
    print_in_option : Self -> M unit;
  }.
  
End PrintInOption.
End PrintInOption.

Module  Impl_generics_where_clauses_PrintInOption_for_T.
Section Impl_generics_where_clauses_PrintInOption_for_T.
  Context `{ℋ : State.Trait}.
  
  Context {T : Set}.
  
  Context {ℋ_0 : core.fmt.Debug.Trait (core.option.Option T)}.
  Definition Self : Set := T.
  
  Definition print_in_option (self : Self) : M unit :=
    M.function_body
      (let* _ :=
        let* _ :=
          let* α0 := borrow [ mk_str ""; mk_str "
" ] (list (ref str)) in
          let* α1 := deref α0 (list (ref str)) in
          let* α2 := borrow α1 (list (ref str)) in
          let* α3 := pointer_coercion "Unsize" α2 in
          let* α4 := M.alloc (core.option.Option.Some self) in
          let* α5 := borrow α4 (core.option.Option T) in
          let* α6 := deref α5 (core.option.Option T) in
          let* α7 := borrow α6 (core.option.Option T) in
          let* α8 := core.fmt.rt.Argument::["new_debug"] α7 in
          let* α9 := borrow [ α8 ] (list core.fmt.rt.Argument) in
          let* α10 := deref α9 (list core.fmt.rt.Argument) in
          let* α11 := borrow α10 (list core.fmt.rt.Argument) in
          let* α12 := pointer_coercion "Unsize" α11 in
          let* α13 := core.fmt.Arguments::["new_v1"] α3 α12 in
          std.io.stdio._print α13 in
        M.alloc tt in
      M.alloc tt).
  
  Global Instance AssociatedFunction_print_in_option :
    Notation.DoubleColon Self "print_in_option" := {
    Notation.double_colon := print_in_option;
  }.
  
  Global Instance ℐ : generics_where_clauses.PrintInOption.Trait Self := {
    generics_where_clauses.PrintInOption.print_in_option := print_in_option;
  }.
End Impl_generics_where_clauses_PrintInOption_for_T.
End Impl_generics_where_clauses_PrintInOption_for_T.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* vec :=
      let* α0 := M.alloc 1 in
      let* α1 := M.alloc 2 in
      let* α2 := M.alloc 3 in
      let* α3 :=
        (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] [ α0; α1; α2 ] in
      let* α4 := pointer_coercion "Unsize" α3 in
      (Slice i32)::["into_vec"] α4 in
    let* _ :=
      (generics_where_clauses.PrintInOption.print_in_option
          (Self := alloc.vec.Vec i32 alloc.alloc.Global)
          (Trait := ltac:(refine _)))
        vec in
    M.alloc tt).
