(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Ref.
Section Ref.
  Context `{ℋ : State.Trait}.
  
  Context {T : Set}.
  
  Unset Primitive Projections.
  Record t : Set := {
    x0 : ref T;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_0 : Notation.Dot "0" := {
    Notation.dot x := let* x := M.read x in Pure x.(x0) : M _;
  }.
End Ref.
End Ref.
Definition Ref `{ℋ : State.Trait} (T : Set) : Set := M.val (Ref.t (T := T)).

Module  Impl_core_fmt_Debug_for_scoping_rules_lifetimes_bounds_Ref_T.
Section Impl_core_fmt_Debug_for_scoping_rules_lifetimes_bounds_Ref_T.
  Context `{ℋ : State.Trait}.
  
  Context {T : Set}.
  
  Context {ℋ_0 : core.fmt.Debug.Trait T}.
  Definition Self : Set := scoping_rules_lifetimes_bounds.Ref T.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M ltac:(core.fmt.Result) :=
    let* α0 := deref f core.fmt.Formatter in
    let* α1 := borrow_mut α0 core.fmt.Formatter in
    let* α2 := deref (mk_str "Ref") str in
    let* α3 := borrow α2 str in
    let* α4 := deref self (scoping_rules_lifetimes_bounds.Ref T) in
    let* α5 := α4.["0"] in
    let* α6 := borrow α5 (ref T) in
    let* α7 := borrow α6 (ref (ref T)) in
    let* α8 := deref α7 (ref (ref T)) in
    let* α9 := borrow α8 (ref (ref T)) in
    let* α10 := pointer_coercion "Unsize" α9 in
    core.fmt.Formatter::["debug_tuple_field1_finish"] α1 α3 α10.
  
  Global Instance AssociatedFunction_fmt : Notation.DoubleColon Self "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_scoping_rules_lifetimes_bounds_Ref_T.
End Impl_core_fmt_Debug_for_scoping_rules_lifetimes_bounds_Ref_T.

Definition print
    `{ℋ : State.Trait}
    {T : Set}
    {ℋ_0 : core.fmt.Debug.Trait T}
    (t : T)
    : M unit :=
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow [ mk_str "`print`: t is "; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := borrow t T in
      let* α5 := deref α4 T in
      let* α6 := borrow α5 T in
      let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
      let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
      let* α9 := deref α8 (list core.fmt.rt.Argument) in
      let* α10 := borrow α9 (list core.fmt.rt.Argument) in
      let* α11 := pointer_coercion "Unsize" α10 in
      let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
      std.io.stdio._print α12 in
    M.alloc tt in
  M.alloc tt.

Definition print_ref
    `{ℋ : State.Trait}
    {T : Set}
    {ℋ_0 : core.fmt.Debug.Trait T}
    (t : ref T)
    : M unit :=
  let* _ :=
    let* _ :=
      let* α0 :=
        borrow [ mk_str "`print_ref`: t is "; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := borrow t (ref T) in
      let* α5 := deref α4 (ref T) in
      let* α6 := borrow α5 (ref T) in
      let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
      let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
      let* α9 := deref α8 (list core.fmt.rt.Argument) in
      let* α10 := borrow α9 (list core.fmt.rt.Argument) in
      let* α11 := pointer_coercion "Unsize" α10 in
      let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
      std.io.stdio._print α12 in
    M.alloc tt in
  M.alloc tt.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  let* x := M.alloc 7 in
  let* ref_x :=
    let* α0 := borrow x i32 in
    let* α1 := deref α0 i32 in
    let* α2 := borrow α1 i32 in
    M.alloc (scoping_rules_lifetimes_bounds.Ref.Build_t α2) in
  let* _ :=
    let* α0 := borrow ref_x (scoping_rules_lifetimes_bounds.Ref i32) in
    let* α1 := deref α0 (scoping_rules_lifetimes_bounds.Ref i32) in
    let* α2 := borrow α1 (scoping_rules_lifetimes_bounds.Ref i32) in
    scoping_rules_lifetimes_bounds.print_ref α2 in
  let* _ := scoping_rules_lifetimes_bounds.print ref_x in
  M.alloc tt.
