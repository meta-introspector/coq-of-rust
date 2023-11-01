(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Ltac Result T := refine (core.result.Result T wrapping_errors.DoubleError).

Module DoubleError.
  Inductive t `{ℋ : State.Trait} : Set :=
  | EmptyVec
  | Parse (_ : core.num.error.ParseIntError).
End DoubleError.
Definition DoubleError `{ℋ : State.Trait} : Set := DoubleError.t.

Module Impl_core_fmt_Debug_for_wrapping_errors_DoubleError.
  Section Impl_core_fmt_Debug_for_wrapping_errors_DoubleError.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := wrapping_errors.DoubleError.
    
    Definition fmt
        (self : ref Self)
        (f : mut_ref core.fmt.Formatter)
        : M ltac:(core.fmt.Result) :=
      match self with
      | wrapping_errors.DoubleError  =>
        let* α0 := deref f core.fmt.Formatter in
        let* α1 := borrow_mut α0 core.fmt.Formatter in
        let* α2 := deref (mk_str "EmptyVec") str in
        let* α3 := borrow α2 str in
        core.fmt.Formatter::["write_str"] α1 α3
      | wrapping_errors.DoubleError __self_0 =>
        let* α0 := deref f core.fmt.Formatter in
        let* α1 := borrow_mut α0 core.fmt.Formatter in
        let* α2 := deref (mk_str "Parse") str in
        let* α3 := borrow α2 str in
        let* α4 := borrow __self_0 (ref core.num.error.ParseIntError) in
        let* α5 := deref α4 (ref core.num.error.ParseIntError) in
        let* α6 := borrow α5 (ref core.num.error.ParseIntError) in
        let* α7 := pointer_coercion "Unsize" α6 in
        core.fmt.Formatter::["debug_tuple_field1_finish"] α1 α3 α7
      end.
    
    Global Instance AssociatedFunction_fmt :
      Notation.DoubleColon Self "fmt" := {
      Notation.double_colon := fmt;
    }.
    
    Global Instance ℐ : core.fmt.Debug.Trait Self := {
      core.fmt.Debug.fmt := fmt;
    }.
  End Impl_core_fmt_Debug_for_wrapping_errors_DoubleError.
End Impl_core_fmt_Debug_for_wrapping_errors_DoubleError.

Module Impl_core_fmt_Display_for_wrapping_errors_DoubleError.
  Section Impl_core_fmt_Display_for_wrapping_errors_DoubleError.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := wrapping_errors.DoubleError.
    
    Definition fmt
        (self : ref Self)
        (f : mut_ref core.fmt.Formatter)
        : M ltac:(core.fmt.Result) :=
      let* α0 := deref self wrapping_errors.DoubleError in
      match α0 with
      | wrapping_errors.DoubleError  =>
        let* α0 := deref f core.fmt.Formatter in
        let* α1 := borrow_mut α0 core.fmt.Formatter in
        let* α2 :=
          borrow
            [ mk_str "please use a vector with at least one element" ]
            (list (ref str)) in
        let* α3 := deref α2 (list (ref str)) in
        let* α4 := borrow α3 (list (ref str)) in
        let* α5 := pointer_coercion "Unsize" α4 in
        let* α6 := core.fmt.Arguments::["new_const"] α5 in
        core.fmt.Formatter::["write_fmt"] α1 α6
      | wrapping_errors.DoubleError  =>
        let* α0 := deref f core.fmt.Formatter in
        let* α1 := borrow_mut α0 core.fmt.Formatter in
        let* α2 :=
          borrow
            [ mk_str "the provided string could not be parsed as int" ]
            (list (ref str)) in
        let* α3 := deref α2 (list (ref str)) in
        let* α4 := borrow α3 (list (ref str)) in
        let* α5 := pointer_coercion "Unsize" α4 in
        let* α6 := core.fmt.Arguments::["new_const"] α5 in
        core.fmt.Formatter::["write_fmt"] α1 α6
      end.
    
    Global Instance AssociatedFunction_fmt :
      Notation.DoubleColon Self "fmt" := {
      Notation.double_colon := fmt;
    }.
    
    Global Instance ℐ : core.fmt.Display.Trait Self := {
      core.fmt.Display.fmt := fmt;
    }.
  End Impl_core_fmt_Display_for_wrapping_errors_DoubleError.
End Impl_core_fmt_Display_for_wrapping_errors_DoubleError.

Module Impl_core_error_Error_for_wrapping_errors_DoubleError.
  Section Impl_core_error_Error_for_wrapping_errors_DoubleError.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := wrapping_errors.DoubleError.
    
    Definition source
        (self : ref Self)
        : M (core.option.Option (ref _ (* dyn *))) :=
      let* α0 := deref self wrapping_errors.DoubleError in
      match α0 with
      | wrapping_errors.DoubleError  => M.alloc core.option.Option.None
      | wrapping_errors.DoubleError e =>
        let* α0 := deref e core.num.error.ParseIntError in
        let* α1 := borrow α0 core.num.error.ParseIntError in
        let* α2 := pointer_coercion "Unsize" α1 in
        M.alloc (core.option.Option.Some α2)
      end.
    
    Global Instance AssociatedFunction_source :
      Notation.DoubleColon Self "source" := {
      Notation.double_colon := source;
    }.
    
    Global Instance ℐ : core.error.Error.Trait Self := {
    }.
  End Impl_core_error_Error_for_wrapping_errors_DoubleError.
End Impl_core_error_Error_for_wrapping_errors_DoubleError.

Module
  Impl_core_convert_From_core_num_error_ParseIntError_for_wrapping_errors_DoubleError.
  Section
    Impl_core_convert_From_core_num_error_ParseIntError_for_wrapping_errors_DoubleError.
    Context `{ℋ : State.Trait}.
    
    Definition Self : Set := wrapping_errors.DoubleError.
    
    Definition from
        (err : core.num.error.ParseIntError)
        : M wrapping_errors.DoubleError :=
      M.alloc (wrapping_errors.DoubleError.Parse err).
    
    Global Instance AssociatedFunction_from :
      Notation.DoubleColon Self "from" := {
      Notation.double_colon := from;
    }.
    
    Global Instance ℐ :
      core.convert.From.Trait Self (T := core.num.error.ParseIntError) := {
      core.convert.From.from := from;
    }.
  End
    Impl_core_convert_From_core_num_error_ParseIntError_for_wrapping_errors_DoubleError.
End
  Impl_core_convert_From_core_num_error_ParseIntError_for_wrapping_errors_DoubleError.

Definition double_first
    `{ℋ : State.Trait}
    (vec : alloc.vec.Vec (ref str) alloc.vec.Vec.Default.A)
    : M ltac:(wrapping_errors.Result constr:(i32)) :=
  let* first :=
    let* α0 := borrow vec (alloc.vec.Vec (ref str) alloc.alloc.Global) in
    let* α1 :=
      (core.ops.deref.Deref.deref
          (Self := alloc.vec.Vec (ref str) alloc.alloc.Global)
          (Trait := ltac:(refine _)))
        α0 in
    let* α2 := deref α1 (Slice (ref str)) in
    let* α3 := borrow α2 (Slice (ref str)) in
    let* α4 := (Slice (ref str))::["first"] α3 in
    let* α5 := M.alloc wrapping_errors.DoubleError.EmptyVec in
    let* α6 := (core.option.Option (ref (ref str)))::["ok_or"] α4 α5 in
    let* α7 :=
      (core.ops.try_trait.Try.branch
          (Self :=
            core.result.Result (ref (ref str)) wrapping_errors.DoubleError)
          (Trait := ltac:(refine _)))
        α6 in
    match α7 with
    | core.ops.control_flow.ControlFlow residual =>
      let* α0 :=
        (core.ops.try_trait.FromResidual.from_residual
            (Self := core.result.Result i32 wrapping_errors.DoubleError)
            (Trait := ltac:(refine _)))
          residual in
      let* α1 := Return α0 in
      never_to_any α1
    | core.ops.control_flow.ControlFlow val => Pure val
    end in
  let* parsed :=
    let* α0 := deref first (ref str) in
    let* α1 := deref α0 str in
    let* α2 := borrow α1 str in
    let* α3 := str::["parse"] α2 in
    let* α4 :=
      (core.ops.try_trait.Try.branch
          (Self := core.result.Result i32 core.num.error.ParseIntError)
          (Trait := ltac:(refine _)))
        α3 in
    match α4 with
    | core.ops.control_flow.ControlFlow residual =>
      let* α0 :=
        (core.ops.try_trait.FromResidual.from_residual
            (Self := core.result.Result i32 wrapping_errors.DoubleError)
            (Trait := ltac:(refine _)))
          residual in
      let* α1 := Return α0 in
      never_to_any α1
    | core.ops.control_flow.ControlFlow val => Pure val
    end in
  let* α0 := M.alloc 2 in
  let* α1 := BinOp.mul α0 parsed in
  M.alloc (core.result.Result.Ok α1).

Definition print
    `{ℋ : State.Trait}
    (result : ltac:(wrapping_errors.Result constr:(i32)))
    : M unit :=
  match result with
  | core.result.Result n =>
    let* _ :=
      let* α0 :=
        borrow
          [ mk_str "The first doubled is "; mk_str "
" ]
          (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := borrow n i32 in
      let* α5 := deref α4 i32 in
      let* α6 := borrow α5 i32 in
      let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
      let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
      let* α9 := deref α8 (list core.fmt.rt.Argument) in
      let* α10 := borrow α9 (list core.fmt.rt.Argument) in
      let* α11 := pointer_coercion "Unsize" α10 in
      let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
      std.io.stdio._print α12 in
    M.alloc tt
  | core.result.Result e =>
    let* _ :=
      let* _ :=
        let* α0 := borrow [ mk_str "Error: "; mk_str "
" ] (list (ref str)) in
        let* α1 := deref α0 (list (ref str)) in
        let* α2 := borrow α1 (list (ref str)) in
        let* α3 := pointer_coercion "Unsize" α2 in
        let* α4 := borrow e wrapping_errors.DoubleError in
        let* α5 := deref α4 wrapping_errors.DoubleError in
        let* α6 := borrow α5 wrapping_errors.DoubleError in
        let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
        let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
        let* α9 := deref α8 (list core.fmt.rt.Argument) in
        let* α10 := borrow α9 (list core.fmt.rt.Argument) in
        let* α11 := pointer_coercion "Unsize" α10 in
        let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
        std.io.stdio._print α12 in
      M.alloc tt in
    let* α0 := borrow e wrapping_errors.DoubleError in
    let* α1 :=
      (core.error.Error.source
          (Self := wrapping_errors.DoubleError)
          (Trait := ltac:(refine _)))
        α0 in
    let* α2 := let_if core.option.Option source := α1 in
    if (α2 : bool) then
      let* _ :=
        let* _ :=
          let* α0 :=
            borrow [ mk_str "  Caused by: "; mk_str "
" ] (list (ref str)) in
          let* α1 := deref α0 (list (ref str)) in
          let* α2 := borrow α1 (list (ref str)) in
          let* α3 := pointer_coercion "Unsize" α2 in
          let* α4 := borrow source (ref type not implemented) in
          let* α5 := deref α4 (ref type not implemented) in
          let* α6 := borrow α5 (ref type not implemented) in
          let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
          let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
          let* α9 := deref α8 (list core.fmt.rt.Argument) in
          let* α10 := borrow α9 (list core.fmt.rt.Argument) in
          let* α11 := pointer_coercion "Unsize" α10 in
          let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
          std.io.stdio._print α12 in
        M.alloc tt in
      M.alloc tt
    else
      M.alloc tt
  end.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  let* numbers :=
    let* α0 := deref (mk_str "93") str in
    let* α1 := borrow α0 str in
    let* α2 := deref (mk_str "18") str in
    let* α3 := borrow α2 str in
    let* α4 :=
      (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"]
        [ mk_str "42"; α1; α3 ] in
    let* α5 := pointer_coercion "Unsize" α4 in
    (Slice (ref str))::["into_vec"] α5 in
  let* empty := (alloc.vec.Vec (ref str) alloc.alloc.Global)::["new"] in
  let* strings :=
    let* α0 := deref (mk_str "93") str in
    let* α1 := borrow α0 str in
    let* α2 := deref (mk_str "18") str in
    let* α3 := borrow α2 str in
    let* α4 :=
      (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"]
        [ mk_str "tofu"; α1; α3 ] in
    let* α5 := pointer_coercion "Unsize" α4 in
    (Slice (ref str))::["into_vec"] α5 in
  let* _ :=
    let* α0 := wrapping_errors.double_first numbers in
    wrapping_errors.print α0 in
  let* _ :=
    let* α0 := wrapping_errors.double_first empty in
    wrapping_errors.print α0 in
  let* _ :=
    let* α0 := wrapping_errors.double_first strings in
    wrapping_errors.print α0 in
  M.alloc tt.
