(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module  DoubleError.
Section DoubleError.
  Context `{ℋ : State.Trait}.
  
  Inductive t : Set := Build.
End DoubleError.
End DoubleError.
Definition DoubleError `{ℋ : State.Trait} := M.Val DoubleError.t.

Module  Impl_core_fmt_Debug_for_defining_an_error_type_DoubleError.
Section Impl_core_fmt_Debug_for_defining_an_error_type_DoubleError.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := defining_an_error_type.DoubleError.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 : ltac:(refine core.fmt.Formatter) := deref f in
      let* α1 : ltac:(refine (mut_ref core.fmt.Formatter)) := borrow_mut α0 in
      let* α2 : ltac:(refine str) := deref (mk_str "DoubleError") in
      let* α3 : ltac:(refine (ref str)) := borrow α2 in
      core.fmt.Formatter::["write_str"] α1 α3).
  
  Global Instance AssociatedFunction_fmt : Notation.DoubleColon Self "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_defining_an_error_type_DoubleError.
End Impl_core_fmt_Debug_for_defining_an_error_type_DoubleError.

Module  Impl_core_clone_Clone_for_defining_an_error_type_DoubleError.
Section Impl_core_clone_Clone_for_defining_an_error_type_DoubleError.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := defining_an_error_type.DoubleError.
  
  Definition clone (self : ref Self) : M defining_an_error_type.DoubleError :=
    M.function_body (M.alloc defining_an_error_type.DoubleError.Build_t).
  
  Global Instance AssociatedFunction_clone :
    Notation.DoubleColon Self "clone" := {
    Notation.double_colon := clone;
  }.
  
  Global Instance ℐ : core.clone.Clone.Required.Trait Self := {
    core.clone.Clone.clone := clone;
    core.clone.Clone.clone_from := Datatypes.None;
  }.
End Impl_core_clone_Clone_for_defining_an_error_type_DoubleError.
End Impl_core_clone_Clone_for_defining_an_error_type_DoubleError.

Ltac Result T :=
  refine (core.result.Result T defining_an_error_type.DoubleError).

Module  Impl_core_fmt_Display_for_defining_an_error_type_DoubleError.
Section Impl_core_fmt_Display_for_defining_an_error_type_DoubleError.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := defining_an_error_type.DoubleError.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 : ltac:(refine core.fmt.Formatter) := deref f in
      let* α1 : ltac:(refine (mut_ref core.fmt.Formatter)) := borrow_mut α0 in
      let* α2 : ltac:(refine (array (ref str))) :=
        M.alloc [ mk_str "invalid first item to double" ] in
      let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
      let* α4 : ltac:(refine (ref (slice (ref str)))) :=
        pointer_coercion "Unsize" α3 in
      let* α5 : ltac:(refine core.fmt.Arguments) :=
        core.fmt.Arguments::["new_const"] α4 in
      core.fmt.Formatter::["write_fmt"] α1 α5).
  
  Global Instance AssociatedFunction_fmt : Notation.DoubleColon Self "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Display.Trait Self := {
    core.fmt.Display.fmt := fmt;
  }.
End Impl_core_fmt_Display_for_defining_an_error_type_DoubleError.
End Impl_core_fmt_Display_for_defining_an_error_type_DoubleError.

Definition double_first
    `{ℋ : State.Trait}
    (vec : alloc.vec.Vec (ref str) alloc.vec.Vec.Default.A)
    : M ltac:(defining_an_error_type.Result constr:(i32)) :=
  M.function_body
    (let* α0 :
        ltac:(refine (ref (alloc.vec.Vec (ref str) alloc.alloc.Global))) :=
      borrow vec in
    let* α1 : ltac:(refine (ref (slice (ref str)))) :=
      (core.ops.deref.Deref.deref
          (Self := alloc.vec.Vec (ref str) alloc.alloc.Global)
          (Trait := ltac:(refine _)))
        α0 in
    let* α2 : ltac:(refine (slice (ref str))) := deref α1 in
    let* α3 : ltac:(refine (ref (slice (ref str)))) := borrow α2 in
    let* α4 : ltac:(refine (core.option.Option (ref (ref str)))) :=
      (slice (ref str))::["first"] α3 in
    let* α5 : ltac:(refine defining_an_error_type.DoubleError) :=
      M.alloc defining_an_error_type.DoubleError.Build_t in
    let* α6 :
        ltac:(refine
          (core.result.Result
            (ref (ref str))
            defining_an_error_type.DoubleError)) :=
      (core.option.Option (ref (ref str)))::["ok_or"] α4 α5 in
    (core.result.Result
          (ref (ref str))
          defining_an_error_type.DoubleError)::["and_then"]
      α6
      (let* α0 : ltac:(refine (ref str)) := deref s in
      let* α1 : ltac:(refine str) := deref α0 in
      let* α2 : ltac:(refine (ref str)) := borrow α1 in
      let* α3 :
          ltac:(refine (core.result.Result i32 core.num.error.ParseIntError)) :=
        str::["parse"] α2 in
      let* α4 :
          ltac:(refine
            (core.result.Result i32 defining_an_error_type.DoubleError)) :=
        (core.result.Result i32 core.num.error.ParseIntError)::["map_err"]
          α3
          (M.alloc defining_an_error_type.DoubleError.Build_t) in
      (core.result.Result i32 defining_an_error_type.DoubleError)::["map"]
        α4
        (let* α0 : ltac:(refine i32) := M.alloc 2 in
        BinOp.mul α0 i))).

Definition print
    `{ℋ : State.Trait}
    (result : ltac:(defining_an_error_type.Result constr:(i32)))
    : M unit :=
  M.function_body
    (let* α0 := M.read result in
    match α0 with
    | core.result.Result.Ok n =>
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "The first doubled is "; mk_str "
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (ref i32)) := borrow n in
        let* α4 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_display"] α3 in
        let* α5 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α4 ] in
        let* α6 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α5 in
        let* α7 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α6 in
        let* α8 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α2 α7 in
        std.io.stdio._print α8 in
      M.alloc tt
    | core.result.Result.Err e =>
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "Error: "; mk_str "
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (ref defining_an_error_type.DoubleError)) :=
          borrow e in
        let* α4 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_display"] α3 in
        let* α5 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α4 ] in
        let* α6 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α5 in
        let* α7 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α6 in
        let* α8 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α2 α7 in
        std.io.stdio._print α8 in
      M.alloc tt
    end).

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* numbers :
        ltac:(refine (alloc.vec.Vec (ref str) alloc.alloc.Global)) :=
      let* α0 : ltac:(refine str) := deref (mk_str "93") in
      let* α1 : ltac:(refine (ref str)) := borrow α0 in
      let* α2 : ltac:(refine str) := deref (mk_str "18") in
      let* α3 : ltac:(refine (ref str)) := borrow α2 in
      let* α4 : ltac:(refine (array (ref str))) :=
        M.alloc [ mk_str "42"; α1; α3 ] in
      let* α5 :
          ltac:(refine
            (alloc.boxed.Box (array (ref str)) alloc.alloc.Global)) :=
        (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α4 in
      let* α6 :
          ltac:(refine
            (alloc.boxed.Box (slice (ref str)) alloc.alloc.Global)) :=
        pointer_coercion "Unsize" α5 in
      (slice (ref str))::["into_vec"] α6 in
    let* empty : ltac:(refine (alloc.vec.Vec (ref str) alloc.alloc.Global)) :=
      (alloc.vec.Vec (ref str) alloc.alloc.Global)::["new"] in
    let* strings : ltac:(refine (alloc.vec.Vec (ref str) alloc.alloc.Global)) :=
      let* α0 : ltac:(refine str) := deref (mk_str "93") in
      let* α1 : ltac:(refine (ref str)) := borrow α0 in
      let* α2 : ltac:(refine str) := deref (mk_str "18") in
      let* α3 : ltac:(refine (ref str)) := borrow α2 in
      let* α4 : ltac:(refine (array (ref str))) :=
        M.alloc [ mk_str "tofu"; α1; α3 ] in
      let* α5 :
          ltac:(refine
            (alloc.boxed.Box (array (ref str)) alloc.alloc.Global)) :=
        (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α4 in
      let* α6 :
          ltac:(refine
            (alloc.boxed.Box (slice (ref str)) alloc.alloc.Global)) :=
        pointer_coercion "Unsize" α5 in
      (slice (ref str))::["into_vec"] α6 in
    let* _ : ltac:(refine unit) :=
      let* α0 :
          ltac:(refine
            (core.result.Result i32 defining_an_error_type.DoubleError)) :=
        defining_an_error_type.double_first numbers in
      defining_an_error_type.print α0 in
    let* _ : ltac:(refine unit) :=
      let* α0 :
          ltac:(refine
            (core.result.Result i32 defining_an_error_type.DoubleError)) :=
        defining_an_error_type.double_first empty in
      defining_an_error_type.print α0 in
    let* _ : ltac:(refine unit) :=
      let* α0 :
          ltac:(refine
            (core.result.Result i32 defining_an_error_type.DoubleError)) :=
        defining_an_error_type.double_first strings in
      defining_an_error_type.print α0 in
    M.alloc tt).
