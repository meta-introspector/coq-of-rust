(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  Unit.
Section Unit.
  Context `{ℋ : State.Trait}.
  
  Inductive t : Set := Build.
End Unit.
End Unit.
Definition Unit := @Unit.t.

Module  Impl_core_fmt_Debug_for_clone_Unit.
Section Impl_core_fmt_Debug_for_clone_Unit.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := clone.Unit.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 := deref f core.fmt.Formatter in
      let* α1 := borrow_mut α0 core.fmt.Formatter in
      let* α2 := deref (mk_str "Unit") str in
      let* α3 := borrow α2 str in
      core.fmt.Formatter::["write_str"] α1 α3).
  
  Global Instance AssociatedFunction_fmt : Notation.DoubleColon Self "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_clone_Unit.
End Impl_core_fmt_Debug_for_clone_Unit.

Module  Impl_core_clone_Clone_for_clone_Unit.
Section Impl_core_clone_Clone_for_clone_Unit.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := clone.Unit.
  
  Definition clone (self : ref Self) : M clone.Unit :=
    M.function_body (deref self clone.Unit).
  
  Global Instance AssociatedFunction_clone :
    Notation.DoubleColon Self "clone" := {
    Notation.double_colon := clone;
  }.
  
  Global Instance ℐ : core.clone.Clone.Required.Trait Self := {
    core.clone.Clone.clone := clone;
    core.clone.Clone.clone_from := Datatypes.None;
  }.
End Impl_core_clone_Clone_for_clone_Unit.
End Impl_core_clone_Clone_for_clone_Unit.

Module  Impl_core_marker_Copy_for_clone_Unit.
Section Impl_core_marker_Copy_for_clone_Unit.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := clone.Unit.
  
  Global Instance ℐ : core.marker.Copy.Trait Self := {
  }.
End Impl_core_marker_Copy_for_clone_Unit.
End Impl_core_marker_Copy_for_clone_Unit.

Module  Pair.
Section Pair.
  Context `{ℋ : State.Trait}.
  
  Unset Primitive Projections.
  Record t : Set := {
    x0 : alloc.boxed.Box i32 alloc.boxed.Box.Default.A;
    x1 : alloc.boxed.Box i32 alloc.boxed.Box.Default.A;
  }.
  Global Set Primitive Projections.
  
  Global Instance Get_0 : Notation.Dot "0" := {
    Notation.dot x := let* x := M.read x in M.pure x.(x0) : M _;
  }.
  Global Instance Get_1 : Notation.Dot "1" := {
    Notation.dot x := let* x := M.read x in M.pure x.(x1) : M _;
  }.
End Pair.
End Pair.
Definition Pair `{ℋ : State.Trait} : Set := M.Val Pair.t.

Module  Impl_core_clone_Clone_for_clone_Pair.
Section Impl_core_clone_Clone_for_clone_Pair.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := clone.Pair.
  
  Definition clone (self : ref Self) : M clone.Pair :=
    M.function_body
      (let* α0 := deref self clone.Pair in
      let* α1 := α0.["0"] in
      let* α2 := borrow α1 (alloc.boxed.Box i32 alloc.alloc.Global) in
      let* α3 := deref α2 (alloc.boxed.Box i32 alloc.alloc.Global) in
      let* α4 := borrow α3 (alloc.boxed.Box i32 alloc.alloc.Global) in
      let* α5 :=
        (core.clone.Clone.clone
            (Self := alloc.boxed.Box i32 alloc.alloc.Global)
            (Trait := ltac:(refine _)))
          α4 in
      let* α6 := deref self clone.Pair in
      let* α7 := α6.["1"] in
      let* α8 := borrow α7 (alloc.boxed.Box i32 alloc.alloc.Global) in
      let* α9 := deref α8 (alloc.boxed.Box i32 alloc.alloc.Global) in
      let* α10 := borrow α9 (alloc.boxed.Box i32 alloc.alloc.Global) in
      let* α11 :=
        (core.clone.Clone.clone
            (Self := alloc.boxed.Box i32 alloc.alloc.Global)
            (Trait := ltac:(refine _)))
          α10 in
      M.alloc (clone.Pair.Build_t α5 α11)).
  
  Global Instance AssociatedFunction_clone :
    Notation.DoubleColon Self "clone" := {
    Notation.double_colon := clone;
  }.
  
  Global Instance ℐ : core.clone.Clone.Required.Trait Self := {
    core.clone.Clone.clone := clone;
    core.clone.Clone.clone_from := Datatypes.None;
  }.
End Impl_core_clone_Clone_for_clone_Pair.
End Impl_core_clone_Clone_for_clone_Pair.

Module  Impl_core_fmt_Debug_for_clone_Pair.
Section Impl_core_fmt_Debug_for_clone_Pair.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := clone.Pair.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 := deref f core.fmt.Formatter in
      let* α1 := borrow_mut α0 core.fmt.Formatter in
      let* α2 := deref (mk_str "Pair") str in
      let* α3 := borrow α2 str in
      let* α4 := deref self clone.Pair in
      let* α5 := α4.["0"] in
      let* α6 := borrow α5 (alloc.boxed.Box i32 alloc.alloc.Global) in
      let* α7 := deref α6 (alloc.boxed.Box i32 alloc.alloc.Global) in
      let* α8 := borrow α7 (alloc.boxed.Box i32 alloc.alloc.Global) in
      let* α9 := pointer_coercion "Unsize" α8 in
      let* α10 := deref self clone.Pair in
      let* α11 := α10.["1"] in
      let* α12 := borrow α11 (alloc.boxed.Box i32 alloc.alloc.Global) in
      let* α13 := borrow α12 (ref (alloc.boxed.Box i32 alloc.alloc.Global)) in
      let* α14 := deref α13 (ref (alloc.boxed.Box i32 alloc.alloc.Global)) in
      let* α15 := borrow α14 (ref (alloc.boxed.Box i32 alloc.alloc.Global)) in
      let* α16 := pointer_coercion "Unsize" α15 in
      core.fmt.Formatter::["debug_tuple_field2_finish"] α1 α3 α9 α16).
  
  Global Instance AssociatedFunction_fmt : Notation.DoubleColon Self "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_clone_Pair.
End Impl_core_fmt_Debug_for_clone_Pair.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* unit := M.alloc clone.Unit.Build_t in
    let copied_unit := unit in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow [ mk_str "original: "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow unit clone.Unit in
        let* α5 := deref α4 clone.Unit in
        let* α6 := borrow α5 clone.Unit in
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
        let* α0 := borrow [ mk_str "copy: "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow copied_unit clone.Unit in
        let* α5 := deref α4 clone.Unit in
        let* α6 := borrow α5 clone.Unit in
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
      let* α1 := (alloc.boxed.Box i32 alloc.alloc.Global)::["new"] α0 in
      let* α2 := M.alloc 2 in
      let* α3 := (alloc.boxed.Box i32 alloc.alloc.Global)::["new"] α2 in
      M.alloc (clone.Pair.Build_t α1 α3) in
    let* _ :=
      let* _ :=
        let* α0 :=
          borrow [ mk_str "original: "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow pair clone.Pair in
        let* α5 := deref α4 clone.Pair in
        let* α6 := borrow α5 clone.Pair in
        let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
        let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
        let* α9 := deref α8 (list core.fmt.rt.Argument) in
        let* α10 := borrow α9 (list core.fmt.rt.Argument) in
        let* α11 := pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
        std.io.stdio._print α12 in
      M.alloc tt in
    let moved_pair := pair in
    let* _ :=
      let* _ :=
        let* α0 := borrow [ mk_str "moved: "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow moved_pair clone.Pair in
        let* α5 := deref α4 clone.Pair in
        let* α6 := borrow α5 clone.Pair in
        let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
        let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
        let* α9 := deref α8 (list core.fmt.rt.Argument) in
        let* α10 := borrow α9 (list core.fmt.rt.Argument) in
        let* α11 := pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
        std.io.stdio._print α12 in
      M.alloc tt in
    let* cloned_pair :=
      let* α0 := borrow moved_pair clone.Pair in
      (core.clone.Clone.clone (Self := clone.Pair) (Trait := ltac:(refine _)))
        α0 in
    let* _ := core.mem.drop moved_pair in
    let* _ :=
      let* _ :=
        let* α0 := borrow [ mk_str "clone: "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow cloned_pair clone.Pair in
        let* α5 := deref α4 clone.Pair in
        let* α6 := borrow α5 clone.Pair in
        let* α7 := core.fmt.rt.Argument::["new_debug"] α6 in
        let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
        let* α9 := deref α8 (list core.fmt.rt.Argument) in
        let* α10 := borrow α9 (list core.fmt.rt.Argument) in
        let* α11 := pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
        std.io.stdio._print α12 in
      M.alloc tt in
    M.alloc tt).
