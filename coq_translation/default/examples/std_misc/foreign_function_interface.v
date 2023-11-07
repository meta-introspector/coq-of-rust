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
    (let* z : ltac:(refine foreign_function_interface.Complex) :=
      let* α0 : ltac:(refine f32) := M.alloc (- 1 (* 1. *)) in
      let* α1 : ltac:(refine f32) := M.alloc 0 (* 0. *) in
      M.alloc
        {|
          foreign_function_interface.Complex.re := α0;
          foreign_function_interface.Complex.im := α1;
        |} in
    let* z_sqrt : ltac:(refine foreign_function_interface.Complex) :=
      "unimplemented parent_kind" z in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "the square root of "; mk_str " is "; mk_str "
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (ref foreign_function_interface.Complex)) :=
          borrow z in
        let* α4 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_debug"] α3 in
        let* α5 : ltac:(refine (ref foreign_function_interface.Complex)) :=
          borrow z_sqrt in
        let* α6 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_debug"] α5 in
        let* α7 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α4; α6 ] in
        let* α8 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α7 in
        let* α9 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α8 in
        let* α10 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α2 α9 in
        std.io.stdio._print α10 in
      M.alloc tt in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "cos("; mk_str ") = "; mk_str "
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (ref foreign_function_interface.Complex)) :=
          borrow z in
        let* α4 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_debug"] α3 in
        let* α5 : ltac:(refine foreign_function_interface.Complex) :=
          foreign_function_interface.cos z in
        let* α6 : ltac:(refine (ref foreign_function_interface.Complex)) :=
          borrow α5 in
        let* α7 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_debug"] α6 in
        let* α8 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α4; α7 ] in
        let* α9 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α8 in
        let* α10 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α9 in
        let* α11 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α2 α10 in
        std.io.stdio._print α11 in
      M.alloc tt in
    M.alloc tt).

Module  Complex.
Section Complex.
  Context `{ℋ : State.Trait}.
  
  Record t : Set := {
    re : f32;
    im : f32;
  }.
  
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
      (let* _ : ltac:(refine unit) := M.alloc tt in
      deref self).
  
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
      (let* α0 : ltac:(refine foreign_function_interface.Complex) :=
        deref self in
      let* α1 : ltac:(refine f32) := α0.["im"] in
      let* α2 : ltac:(refine f32) := M.alloc 0 (* 0. *) in
      let* α3 : ltac:(refine bool) := BinOp.lt α1 α2 in
      let* α4 : ltac:(refine bool) := use α3 in
      if (α4 : bool) then
        let* α0 : ltac:(refine core.fmt.Formatter) := deref f in
        let* α1 : ltac:(refine (mut_ref core.fmt.Formatter)) := borrow_mut α0 in
        let* α2 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str ""; mk_str "-"; mk_str "i" ] in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine foreign_function_interface.Complex) :=
          deref self in
        let* α6 : ltac:(refine f32) := α5.["re"] in
        let* α7 : ltac:(refine (ref f32)) := borrow α6 in
        let* α8 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_display"] α7 in
        let* α9 : ltac:(refine foreign_function_interface.Complex) :=
          deref self in
        let* α10 : ltac:(refine f32) := α9.["im"] in
        let* α11 : ltac:(refine f32) := UnOp.neg α10 in
        let* α12 : ltac:(refine (ref f32)) := borrow α11 in
        let* α13 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_display"] α12 in
        let* α14 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α8; α13 ] in
        let* α15 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α14 in
        let* α16 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α15 in
        let* α17 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α4 α16 in
        core.fmt.Formatter::["write_fmt"] α1 α17
      else
        let* α0 : ltac:(refine core.fmt.Formatter) := deref f in
        let* α1 : ltac:(refine (mut_ref core.fmt.Formatter)) := borrow_mut α0 in
        let* α2 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str ""; mk_str "+"; mk_str "i" ] in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine foreign_function_interface.Complex) :=
          deref self in
        let* α6 : ltac:(refine f32) := α5.["re"] in
        let* α7 : ltac:(refine (ref f32)) := borrow α6 in
        let* α8 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_display"] α7 in
        let* α9 : ltac:(refine foreign_function_interface.Complex) :=
          deref self in
        let* α10 : ltac:(refine f32) := α9.["im"] in
        let* α11 : ltac:(refine (ref f32)) := borrow α10 in
        let* α12 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_display"] α11 in
        let* α13 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α8; α12 ] in
        let* α14 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α13 in
        let* α15 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α14 in
        let* α16 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α4 α15 in
        core.fmt.Formatter::["write_fmt"] α1 α16).
  
  Global Instance AssociatedFunction_fmt : Notation.DoubleColon Self "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_foreign_function_interface_Complex.
End Impl_core_fmt_Debug_for_foreign_function_interface_Complex.
