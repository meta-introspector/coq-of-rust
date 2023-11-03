(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Error ForeignMod.

Definition cos
    `{ℋ : State.Trait}
    (z : foreign_function_interface.Complex)
    : M foreign_function_interface.Complex :=
  M.function_body ("unimplemented parent_kind" z).

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* z :=
      let* α0 := M.alloc (- 1 (* 1. *)) in
      let* α1 := M.alloc 0 (* 0. *) in
      M.alloc
        {|
          foreign_function_interface.Complex.re := α0;
          foreign_function_interface.Complex.im := α1;
        |} in
    let* z_sqrt := "unimplemented parent_kind" z in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow
            [ mk_str "the square root of "; mk_str " is "; mk_str "
" ]
            (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow z foreign_function_interface.Complex in
        let* α5 := deref α4 foreign_function_interface.Complex in
        let* α6 := borrow α5 foreign_function_interface.Complex in
        let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
        let* α8 := borrow z_sqrt foreign_function_interface.Complex in
        let* α9 := deref α8 foreign_function_interface.Complex in
        let* α10 := borrow α9 foreign_function_interface.Complex in
        let* α11 := core.fmt.rt.Argument::["new_debug"] α10 in
        let* α12 := borrow [ α7; α11 ] (list core.fmt.rt.Argument) in
        let* α13 := deref α12 (list core.fmt.rt.Argument) in
        let* α14 := borrow α13 (list core.fmt.rt.Argument) in
        let* α15 := pointer_coercion "Unsize" α14 in
        let* α16 := core.fmt.Arguments::["new_v1"] α3 α15 in
        std.io.stdio._print α16 in
      M.alloc tt in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow
            [ mk_str "cos("; mk_str ") = "; mk_str "
" ]
            (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow z foreign_function_interface.Complex in
        let* α5 := deref α4 foreign_function_interface.Complex in
        let* α6 := borrow α5 foreign_function_interface.Complex in
        let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
        let* α8 := foreign_function_interface.cos z in
        let* α9 := borrow α8 foreign_function_interface.Complex in
        let* α10 := deref α9 foreign_function_interface.Complex in
        let* α11 := borrow α10 foreign_function_interface.Complex in
        let* α12 := core.fmt.rt.Argument::["new_debug"] α11 in
        let* α13 := borrow [ α7; α12 ] (list core.fmt.rt.Argument) in
        let* α14 := deref α13 (list core.fmt.rt.Argument) in
        let* α15 := borrow α14 (list core.fmt.rt.Argument) in
        let* α16 := pointer_coercion "Unsize" α15 in
        let* α17 := core.fmt.Arguments::["new_v1"] α3 α16 in
        std.io.stdio._print α17 in
      M.alloc tt in
    M.alloc tt).

Module  Complex.
Section Complex.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    re : f32;
    im : f32;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_re : Notation.Dot "re" := {
    Notation.dot x := let* x := M.read x in M.pure x.(re) : M _;
  }.
  Global Instance Get_AF_re : Notation.DoubleColon t "re" := {
    Notation.double_colon x := let* x := M.read x in M.pure x.(re) : M _;
  }.
  Global Instance Get_im : Notation.Dot "im" := {
    Notation.dot x := let* x := M.read x in M.pure x.(im) : M _;
  }.
  Global Instance Get_AF_im : Notation.DoubleColon t "im" := {
    Notation.double_colon x := let* x := M.read x in M.pure x.(im) : M _;
  }.
End Complex.
End Complex.
Definition Complex `{ℋ : State.Trait} : Set := M.Val Complex.t.

Module  Impl_core_clone_Clone_for_foreign_function_interface_Complex.
Section Impl_core_clone_Clone_for_foreign_function_interface_Complex.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := foreign_function_interface.Complex.
  
  Definition clone (self : ref Self) : M foreign_function_interface.Complex :=
    M.function_body
      (let* _ := M.alloc tt in
      deref self foreign_function_interface.Complex).
  
  Global Instance AssociatedFunction_clone :
    Notation.DoubleColon Self "clone" := {
    Notation.double_colon := clone;
  }.
  
  Global Instance ℐ : core.clone.Clone.Required.Trait Self := {
    core.clone.Clone.clone := clone;
    core.clone.Clone.clone_from := Datatypes.None;
  }.
End Impl_core_clone_Clone_for_foreign_function_interface_Complex.
End Impl_core_clone_Clone_for_foreign_function_interface_Complex.

Module  Impl_core_marker_Copy_for_foreign_function_interface_Complex.
Section Impl_core_marker_Copy_for_foreign_function_interface_Complex.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := foreign_function_interface.Complex.
  
  Global Instance ℐ : core.marker.Copy.Trait Self := {
  }.
End Impl_core_marker_Copy_for_foreign_function_interface_Complex.
End Impl_core_marker_Copy_for_foreign_function_interface_Complex.

Module  Impl_core_fmt_Debug_for_foreign_function_interface_Complex.
Section Impl_core_fmt_Debug_for_foreign_function_interface_Complex.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := foreign_function_interface.Complex.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 := deref self foreign_function_interface.Complex in
      let* α1 := α0.["im"] in
      let* α2 := M.alloc 0 (* 0. *) in
      let* α3 := BinOp.lt α1 α2 in
      let* α4 := use α3 in
      if (α4 : bool) then
        let* α0 := deref f core.fmt.Formatter in
        let* α1 := borrow_mut α0 core.fmt.Formatter in
        let* α2 :=
          borrow [ mk_str ""; mk_str "-"; mk_str "i" ] (list (ref str)) in
        let* α3 := deref α2 (list (ref str)) in
        let* α4 := borrow α3 (list (ref str)) in
        let* α5 := pointer_coercion "Unsize" α4 in
        let* α6 := deref self foreign_function_interface.Complex in
        let* α7 := α6.["re"] in
        let* α8 := borrow α7 f32 in
        let* α9 := deref α8 f32 in
        let* α10 := borrow α9 f32 in
        let* α11 := core.fmt.rt.Argument::["new_display"] α10 in
        let* α12 := deref self foreign_function_interface.Complex in
        let* α13 := α12.["im"] in
        let* α14 := UnOp.neg α13 in
        let* α15 := borrow α14 f32 in
        let* α16 := deref α15 f32 in
        let* α17 := borrow α16 f32 in
        let* α18 := core.fmt.rt.Argument::["new_display"] α17 in
        let* α19 := borrow [ α11; α18 ] (list core.fmt.rt.Argument) in
        let* α20 := deref α19 (list core.fmt.rt.Argument) in
        let* α21 := borrow α20 (list core.fmt.rt.Argument) in
        let* α22 := pointer_coercion "Unsize" α21 in
        let* α23 := core.fmt.Arguments::["new_v1"] α5 α22 in
        core.fmt.Formatter::["write_fmt"] α1 α23
      else
        let* α0 := deref f core.fmt.Formatter in
        let* α1 := borrow_mut α0 core.fmt.Formatter in
        let* α2 :=
          borrow [ mk_str ""; mk_str "+"; mk_str "i" ] (list (ref str)) in
        let* α3 := deref α2 (list (ref str)) in
        let* α4 := borrow α3 (list (ref str)) in
        let* α5 := pointer_coercion "Unsize" α4 in
        let* α6 := deref self foreign_function_interface.Complex in
        let* α7 := α6.["re"] in
        let* α8 := borrow α7 f32 in
        let* α9 := deref α8 f32 in
        let* α10 := borrow α9 f32 in
        let* α11 := core.fmt.rt.Argument::["new_display"] α10 in
        let* α12 := deref self foreign_function_interface.Complex in
        let* α13 := α12.["im"] in
        let* α14 := borrow α13 f32 in
        let* α15 := deref α14 f32 in
        let* α16 := borrow α15 f32 in
        let* α17 := core.fmt.rt.Argument::["new_display"] α16 in
        let* α18 := borrow [ α11; α17 ] (list core.fmt.rt.Argument) in
        let* α19 := deref α18 (list core.fmt.rt.Argument) in
        let* α20 := borrow α19 (list core.fmt.rt.Argument) in
        let* α21 := pointer_coercion "Unsize" α20 in
        let* α22 := core.fmt.Arguments::["new_v1"] α5 α21 in
        core.fmt.Formatter::["write_fmt"] α1 α22).
  
  Global Instance AssociatedFunction_fmt : Notation.DoubleColon Self "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_foreign_function_interface_Complex.
End Impl_core_fmt_Debug_for_foreign_function_interface_Complex.
