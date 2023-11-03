(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition reverse `{ℋ : State.Trait} (pair : i32 * bool) : M (bool * i32) :=
  M.function_body
    (let '(int_param, bool_param) := pair in
    M.pure (bool_param, int_param)).

Module  Matrix.
Section Matrix.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    x0 : f32;
    x1 : f32;
    x2 : f32;
    x3 : f32;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_0 : Notation.Dot "0" := {
    Notation.dot x := let* x := M.read x in M.pure x.(x0) : M _;
  }.
  Global Instance Get_1 : Notation.Dot "1" := {
    Notation.dot x := let* x := M.read x in M.pure x.(x1) : M _;
  }.
  Global Instance Get_2 : Notation.Dot "2" := {
    Notation.dot x := let* x := M.read x in M.pure x.(x2) : M _;
  }.
  Global Instance Get_3 : Notation.Dot "3" := {
    Notation.dot x := let* x := M.read x in M.pure x.(x3) : M _;
  }.
End Matrix.
End Matrix.
Definition Matrix `{ℋ : State.Trait} : Set := M.Val Matrix.t.

Module  Impl_core_fmt_Debug_for_tuples_Matrix.
Section Impl_core_fmt_Debug_for_tuples_Matrix.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := tuples.Matrix.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 := deref f core.fmt.Formatter in
      let* α1 := borrow_mut α0 core.fmt.Formatter in
      let* α2 := deref (mk_str "Matrix") str in
      let* α3 := borrow α2 str in
      let* α4 := deref self tuples.Matrix in
      let* α5 := α4.["0"] in
      let* α6 := borrow α5 f32 in
      let* α7 := deref α6 f32 in
      let* α8 := borrow α7 f32 in
      let* α9 := pointer_coercion "Unsize" α8 in
      let* α10 := deref self tuples.Matrix in
      let* α11 := α10.["1"] in
      let* α12 := borrow α11 f32 in
      let* α13 := deref α12 f32 in
      let* α14 := borrow α13 f32 in
      let* α15 := pointer_coercion "Unsize" α14 in
      let* α16 := deref self tuples.Matrix in
      let* α17 := α16.["2"] in
      let* α18 := borrow α17 f32 in
      let* α19 := deref α18 f32 in
      let* α20 := borrow α19 f32 in
      let* α21 := pointer_coercion "Unsize" α20 in
      let* α22 := deref self tuples.Matrix in
      let* α23 := α22.["3"] in
      let* α24 := borrow α23 f32 in
      let* α25 := borrow α24 (ref f32) in
      let* α26 := deref α25 (ref f32) in
      let* α27 := borrow α26 (ref f32) in
      let* α28 := pointer_coercion "Unsize" α27 in
      core.fmt.Formatter::["debug_tuple_field4_finish"] α1 α3 α9 α15 α21 α28).
  
  Global Instance AssociatedFunction_fmt : Notation.DoubleColon Self "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_tuples_Matrix.
End Impl_core_fmt_Debug_for_tuples_Matrix.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* long_tuple :=
      let* α0 := M.alloc 1 in
      let* α1 := M.alloc 2 in
      let* α2 := M.alloc 3 in
      let* α3 := M.alloc 4 in
      let* α4 := M.alloc (- 1) in
      let* α5 := M.alloc (- 2) in
      let* α6 := M.alloc (- 3) in
      let* α7 := M.alloc (- 4) in
      let* α8 := M.alloc 0 (* 0.1 *) in
      let* α9 := M.alloc 0 (* 0.2 *) in
      let* α10 := M.alloc "a"%char in
      let* α11 := M.alloc true in
      M.pure (α0, α1, α2, α3, α4, α5, α6, α7, α8, α9, α10, α11) in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow
            [ mk_str "long tuple first value: "; mk_str "
" ]
            (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow "Unknown Field" u8 in
        let* α5 := deref α4 u8 in
        let* α6 := borrow α5 u8 in
        let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
        let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
        let* α9 := deref α8 (list core.fmt.rt.Argument) in
        let* α10 := borrow α9 (list core.fmt.rt.Argument) in
        let* α11 := pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
        std.io.stdio._print α12 in
      M.alloc tt in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow
            [ mk_str "long tuple second value: "; mk_str "
" ]
            (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow "Unknown Field" u16 in
        let* α5 := deref α4 u16 in
        let* α6 := borrow α5 u16 in
        let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
        let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
        let* α9 := deref α8 (list core.fmt.rt.Argument) in
        let* α10 := borrow α9 (list core.fmt.rt.Argument) in
        let* α11 := pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
        std.io.stdio._print α12 in
      M.alloc tt in
    let* tuple_of_tuples :=
      let* α0 := M.alloc 1 in
      let* α1 := M.alloc 2 in
      let* α2 := M.alloc 2 in
      let* α3 := M.alloc 4 in
      let* α4 := M.alloc (- 1) in
      let* α5 := M.alloc (- 2) in
      M.pure ((α0, α1, α2), (α3, α4), α5) in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow [ mk_str "tuple of tuples: "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 :=
          borrow tuple_of_tuples ((u8 * u16 * u32) * (u64 * i8) * i16) in
        let* α5 := deref α4 ((u8 * u16 * u32) * (u64 * i8) * i16) in
        let* α6 := borrow α5 ((u8 * u16 * u32) * (u64 * i8) * i16) in
        let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
        let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
        let* α9 := deref α8 (list core.fmt.rt.Argument) in
        let* α10 := borrow α9 (list core.fmt.rt.Argument) in
        let* α11 := pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
        std.io.stdio._print α12 in
      M.alloc tt in
    let* pair :=
      let* α0 := M.alloc 1 in
      let* α1 := M.alloc true in
      M.pure (α0, α1) in
    let* _ :=
      let* _ :=
        let* α0 := borrow [ mk_str "pair is "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow pair (i32 * bool) in
        let* α5 := deref α4 (i32 * bool) in
        let* α6 := borrow α5 (i32 * bool) in
        let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
        let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
        let* α9 := deref α8 (list core.fmt.rt.Argument) in
        let* α10 := borrow α9 (list core.fmt.rt.Argument) in
        let* α11 := pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
        std.io.stdio._print α12 in
      M.alloc tt in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow
            [ mk_str "the reversed pair is "; mk_str "
" ]
            (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := tuples.reverse pair in
        let* α5 := borrow α4 (bool * i32) in
        let* α6 := deref α5 (bool * i32) in
        let* α7 := borrow α6 (bool * i32) in
        let* α8 := core.fmt.rt.Argument::["new_debug"] α7 in
        let* α9 := borrow [ α8 ] (list core.fmt.rt.Argument) in
        let* α10 := deref α9 (list core.fmt.rt.Argument) in
        let* α11 := borrow α10 (list core.fmt.rt.Argument) in
        let* α12 := pointer_coercion "Unsize" α11 in
        let* α13 := core.fmt.Arguments::["new_v1"] α3 α12 in
        std.io.stdio._print α13 in
      M.alloc tt in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow
            [ mk_str "one element tuple: "; mk_str "
" ]
            (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := M.alloc 5 in
        let* α5 := borrow (α4) (u32) in
        let* α6 := deref α5 (u32) in
        let* α7 := borrow α6 (u32) in
        let* α8 := core.fmt.rt.Argument::["new_debug"] α7 in
        let* α9 := borrow [ α8 ] (list core.fmt.rt.Argument) in
        let* α10 := deref α9 (list core.fmt.rt.Argument) in
        let* α11 := borrow α10 (list core.fmt.rt.Argument) in
        let* α12 := pointer_coercion "Unsize" α11 in
        let* α13 := core.fmt.Arguments::["new_v1"] α3 α12 in
        std.io.stdio._print α13 in
      M.alloc tt in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow [ mk_str "just an integer: "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := M.alloc 5 in
        let* α5 := borrow α4 u32 in
        let* α6 := deref α5 u32 in
        let* α7 := borrow α6 u32 in
        let* α8 := core.fmt.rt.Argument::["new_debug"] α7 in
        let* α9 := borrow [ α8 ] (list core.fmt.rt.Argument) in
        let* α10 := deref α9 (list core.fmt.rt.Argument) in
        let* α11 := borrow α10 (list core.fmt.rt.Argument) in
        let* α12 := pointer_coercion "Unsize" α11 in
        let* α13 := core.fmt.Arguments::["new_v1"] α3 α12 in
        std.io.stdio._print α13 in
      M.alloc tt in
    let* tuple :=
      let* α0 := M.alloc 1 in
      let* α1 := M.alloc 5 (* 4.5 *) in
      let* α2 := M.alloc true in
      M.pure (α0, mk_str "hello", α1, α2) in
    let '(a, b, c, d) := tuple in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow
            [ mk_str ""; mk_str ", "; mk_str ", "; mk_str ", "; mk_str "
" ]
            (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow a i32 in
        let* α5 := deref α4 i32 in
        let* α6 := borrow α5 i32 in
        let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
        let* α8 := borrow b (ref str) in
        let* α9 := deref α8 (ref str) in
        let* α10 := borrow α9 (ref str) in
        let* α11 := core.fmt.rt.Argument::["new_debug"] α10 in
        let* α12 := borrow c f64 in
        let* α13 := deref α12 f64 in
        let* α14 := borrow α13 f64 in
        let* α15 := core.fmt.rt.Argument::["new_debug"] α14 in
        let* α16 := borrow d bool in
        let* α17 := deref α16 bool in
        let* α18 := borrow α17 bool in
        let* α19 := core.fmt.rt.Argument::["new_debug"] α18 in
        let* α20 := borrow [ α7; α11; α15; α19 ] (list core.fmt.rt.Argument) in
        let* α21 := deref α20 (list core.fmt.rt.Argument) in
        let* α22 := borrow α21 (list core.fmt.rt.Argument) in
        let* α23 := pointer_coercion "Unsize" α22 in
        let* α24 := core.fmt.Arguments::["new_v1"] α3 α23 in
        std.io.stdio._print α24 in
      M.alloc tt in
    let* matrix :=
      let* α0 := M.alloc 1 (* 1.1 *) in
      let* α1 := M.alloc 1 (* 1.2 *) in
      let* α2 := M.alloc 2 (* 2.1 *) in
      let* α3 := M.alloc 2 (* 2.2 *) in
      M.alloc (tuples.Matrix.Build_t α0 α1 α2 α3) in
    let* _ :=
      let* _ :=
        let* α0 := borrow [ mk_str ""; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow matrix tuples.Matrix in
        let* α5 := deref α4 tuples.Matrix in
        let* α6 := borrow α5 tuples.Matrix in
        let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
        let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
        let* α9 := deref α8 (list core.fmt.rt.Argument) in
        let* α10 := borrow α9 (list core.fmt.rt.Argument) in
        let* α11 := pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
        std.io.stdio._print α12 in
      M.alloc tt in
    M.alloc tt).
