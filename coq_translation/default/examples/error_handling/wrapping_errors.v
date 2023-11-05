(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Ltac Result T := refine (core.result.Result T wrapping_errors.DoubleError).

Module DoubleError.
  Inductive t `{ℋ : State.Trait} : Set :=
  | EmptyVec
  | Parse (_ : core.num.error.ParseIntError).
End DoubleError.
Definition DoubleError `{ℋ : State.Trait} : Set := M.Val DoubleError.t.

Module  Impl_core_fmt_Debug_for_wrapping_errors_DoubleError.
Section Impl_core_fmt_Debug_for_wrapping_errors_DoubleError.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := wrapping_errors.DoubleError.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 := M.read self in
      match α0 with
      | wrapping_errors.DoubleError.EmptyVec  =>
        let* α0 : ltac:(refine core.fmt.Formatter) := deref f in
        let* α1 : ltac:(refine (mut_ref core.fmt.Formatter)) := borrow_mut α0 in
        let* α2 : ltac:(refine str) := deref (mk_str "EmptyVec") in
        let* α3 : ltac:(refine (ref str)) := borrow α2 in
        core.fmt.Formatter::["write_str"] α1 α3
      | wrapping_errors.DoubleError.Parse __self_0 =>
        let* α0 : ltac:(refine core.fmt.Formatter) := deref f in
        let* α1 : ltac:(refine (mut_ref core.fmt.Formatter)) := borrow_mut α0 in
        let* α2 : ltac:(refine str) := deref (mk_str "Parse") in
        let* α3 : ltac:(refine (ref str)) := borrow α2 in
        let* α4 : ltac:(refine (ref (ref core.num.error.ParseIntError))) :=
          borrow __self_0 in
        let* α5 : ltac:(refine (ref core.num.error.ParseIntError)) :=
          deref α4 in
        let* α6 : ltac:(refine (ref (ref core.num.error.ParseIntError))) :=
          borrow α5 in
        let* α7 : ltac:(refine (ref type not implemented)) :=
          pointer_coercion "Unsize" α6 in
        core.fmt.Formatter::["debug_tuple_field1_finish"] α1 α3 α7
      end).
  
  Global Instance AssociatedFunction_fmt : Notation.DoubleColon Self "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait Self := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_wrapping_errors_DoubleError.
End Impl_core_fmt_Debug_for_wrapping_errors_DoubleError.

Module  Impl_core_fmt_Display_for_wrapping_errors_DoubleError.
Section Impl_core_fmt_Display_for_wrapping_errors_DoubleError.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := wrapping_errors.DoubleError.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref core.fmt.Formatter)
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 : ltac:(refine wrapping_errors.DoubleError) := deref self in
      let* α1 := M.read α0 in
      match α1 with
      | wrapping_errors.DoubleError.EmptyVec  =>
        let* α0 : ltac:(refine core.fmt.Formatter) := deref f in
        let* α1 : ltac:(refine (mut_ref core.fmt.Formatter)) := borrow_mut α0 in
        let* α2 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "please use a vector with at least one element" ] in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (array (ref str))) := deref α3 in
        let* α5 : ltac:(refine (ref (array (ref str)))) := borrow α4 in
        let* α6 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α5 in
        let* α7 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_const"] α6 in
        core.fmt.Formatter::["write_fmt"] α1 α7
      | wrapping_errors.DoubleError.Parse  =>
        let* α0 : ltac:(refine core.fmt.Formatter) := deref f in
        let* α1 : ltac:(refine (mut_ref core.fmt.Formatter)) := borrow_mut α0 in
        let* α2 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "the provided string could not be parsed as int" ] in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (array (ref str))) := deref α3 in
        let* α5 : ltac:(refine (ref (array (ref str)))) := borrow α4 in
        let* α6 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α5 in
        let* α7 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_const"] α6 in
        core.fmt.Formatter::["write_fmt"] α1 α7
      end).
  
  Global Instance AssociatedFunction_fmt : Notation.DoubleColon Self "fmt" := {
    Notation.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Display.Trait Self := {
    core.fmt.Display.fmt := fmt;
  }.
End Impl_core_fmt_Display_for_wrapping_errors_DoubleError.
End Impl_core_fmt_Display_for_wrapping_errors_DoubleError.

Module  Impl_core_error_Error_for_wrapping_errors_DoubleError.
Section Impl_core_error_Error_for_wrapping_errors_DoubleError.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := wrapping_errors.DoubleError.
  
  Definition source
      (self : ref Self)
      : M (core.option.Option (ref _ (* dyn *))) :=
    M.function_body
      (let* α0 : ltac:(refine wrapping_errors.DoubleError) := deref self in
      let* α1 := M.read α0 in
      match α1 with
      | wrapping_errors.DoubleError.EmptyVec  => M.alloc core.option.Option.None
      | wrapping_errors.DoubleError.Parse e =>
        let* α0 : ltac:(refine core.num.error.ParseIntError) := deref e in
        let* α1 : ltac:(refine (ref core.num.error.ParseIntError)) :=
          borrow α0 in
        let* α2 : ltac:(refine (ref type not implemented)) :=
          pointer_coercion "Unsize" α1 in
        M.alloc (core.option.Option.Some α2)
      end).
  
  Global Instance AssociatedFunction_source :
    Notation.DoubleColon Self "source" := {
    Notation.double_colon := source;
  }.
  
  Global Instance ℐ : core.error.Error.Required.Trait Self := {
    core.error.Error.source := Datatypes.Some source;
    core.error.Error.type_id := Datatypes.None;
    core.error.Error.description := Datatypes.None;
    core.error.Error.cause := Datatypes.None;
    core.error.Error.provide := Datatypes.None;
  }.
End Impl_core_error_Error_for_wrapping_errors_DoubleError.
End Impl_core_error_Error_for_wrapping_errors_DoubleError.

Module  Impl_core_convert_From_core_num_error_ParseIntError_for_wrapping_errors_DoubleError.
Section Impl_core_convert_From_core_num_error_ParseIntError_for_wrapping_errors_DoubleError.
  Context `{ℋ : State.Trait}.
  
  Definition Self : Set := wrapping_errors.DoubleError.
  
  Definition from
      (err : core.num.error.ParseIntError)
      : M wrapping_errors.DoubleError :=
    M.function_body (M.alloc (wrapping_errors.DoubleError.Parse err)).
  
  Global Instance AssociatedFunction_from :
    Notation.DoubleColon Self "from" := {
    Notation.double_colon := from;
  }.
  
  Global Instance ℐ :
    core.convert.From.Trait Self (T := core.num.error.ParseIntError) := {
    core.convert.From.from := from;
  }.
End Impl_core_convert_From_core_num_error_ParseIntError_for_wrapping_errors_DoubleError.
End Impl_core_convert_From_core_num_error_ParseIntError_for_wrapping_errors_DoubleError.

Definition double_first
    `{ℋ : State.Trait}
    (vec : alloc.vec.Vec (ref str) alloc.vec.Vec.Default.A)
    : M ltac:(wrapping_errors.Result constr:(i32)) :=
  M.function_body
    (let* first : ltac:(refine (ref (ref str))) :=
      let*
          α0 :
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
      let* α5 : ltac:(refine wrapping_errors.DoubleError) :=
        M.alloc wrapping_errors.DoubleError.EmptyVec in
      let*
          α6 :
          ltac:(refine
            (core.result.Result (ref (ref str)) wrapping_errors.DoubleError)) :=
        (core.option.Option (ref (ref str)))::["ok_or"] α4 α5 in
      let*
          α7 :
          ltac:(refine
            (core.ops.control_flow.ControlFlow
              (core.result.Result
                core.convert.Infallible
                wrapping_errors.DoubleError)
              (ref (ref str)))) :=
        (core.ops.try_trait.Try.branch
            (Self :=
              core.result.Result (ref (ref str)) wrapping_errors.DoubleError)
            (Trait := ltac:(refine _)))
          α6 in
      let* α8 := M.read α7 in
      match α8 with
      | core.ops.control_flow.ControlFlow.Break residual =>
        let*
            α0 :
            ltac:(refine
              (core.result.Result i32 wrapping_errors.DoubleError)) :=
          (core.ops.try_trait.FromResidual.from_residual
              (Self := core.result.Result i32 wrapping_errors.DoubleError)
              (Trait := ltac:(refine _)))
            residual in
        let* α1 : ltac:(refine never) := M.return_ α0 in
        never_to_any α1
      | core.ops.control_flow.ControlFlow.Continue val => M.pure val
      end in
    let* parsed : ltac:(refine i32) :=
      let* α0 : ltac:(refine (ref str)) := deref first in
      let* α1 : ltac:(refine str) := deref α0 in
      let* α2 : ltac:(refine (ref str)) := borrow α1 in
      let*
          α3 :
          ltac:(refine (core.result.Result i32 core.num.error.ParseIntError)) :=
        str::["parse"] α2 in
      let*
          α4 :
          ltac:(refine
            (core.ops.control_flow.ControlFlow
              (core.result.Result
                core.convert.Infallible
                core.num.error.ParseIntError)
              i32)) :=
        (core.ops.try_trait.Try.branch
            (Self := core.result.Result i32 core.num.error.ParseIntError)
            (Trait := ltac:(refine _)))
          α3 in
      let* α5 := M.read α4 in
      match α5 with
      | core.ops.control_flow.ControlFlow.Break residual =>
        let*
            α0 :
            ltac:(refine
              (core.result.Result i32 wrapping_errors.DoubleError)) :=
          (core.ops.try_trait.FromResidual.from_residual
              (Self := core.result.Result i32 wrapping_errors.DoubleError)
              (Trait := ltac:(refine _)))
            residual in
        let* α1 : ltac:(refine never) := M.return_ α0 in
        never_to_any α1
      | core.ops.control_flow.ControlFlow.Continue val => M.pure val
      end in
    let* α0 : ltac:(refine i32) := M.alloc 2 in
    let* α1 : ltac:(refine i32) := BinOp.mul α0 parsed in
    M.alloc (core.result.Result.Ok α1)).

Definition print
    `{ℋ : State.Trait}
    (result : ltac:(wrapping_errors.Result constr:(i32)))
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
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine (ref i32)) := borrow n in
        let* α6 : ltac:(refine i32) := deref α5 in
        let* α7 : ltac:(refine (ref i32)) := borrow α6 in
        let* α8 : ltac:(refine core.fmt.rt.Argument) :=
          core.fmt.rt.Argument::["new_display"] α7 in
        let* α9 : ltac:(refine (array core.fmt.rt.Argument)) :=
          M.alloc [ α8 ] in
        let* α10 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α9 in
        let* α11 : ltac:(refine (array core.fmt.rt.Argument)) := deref α10 in
        let* α12 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
          borrow α11 in
        let* α13 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
          pointer_coercion "Unsize" α12 in
        let* α14 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_v1"] α4 α13 in
        std.io.stdio._print α14 in
      M.alloc tt
    | core.result.Result.Err e =>
      let* _ : ltac:(refine unit) :=
        let* _ : ltac:(refine unit) :=
          let* α0 : ltac:(refine (array (ref str))) :=
            M.alloc [ mk_str "Error: "; mk_str "
" ] in
          let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
          let* α2 : ltac:(refine (array (ref str))) := deref α1 in
          let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
          let* α4 : ltac:(refine (ref (slice (ref str)))) :=
            pointer_coercion "Unsize" α3 in
          let* α5 : ltac:(refine (ref wrapping_errors.DoubleError)) :=
            borrow e in
          let* α6 : ltac:(refine wrapping_errors.DoubleError) := deref α5 in
          let* α7 : ltac:(refine (ref wrapping_errors.DoubleError)) :=
            borrow α6 in
          let* α8 : ltac:(refine core.fmt.rt.Argument) :=
            core.fmt.rt.Argument::["new_display"] α7 in
          let* α9 : ltac:(refine (array core.fmt.rt.Argument)) :=
            M.alloc [ α8 ] in
          let* α10 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
            borrow α9 in
          let* α11 : ltac:(refine (array core.fmt.rt.Argument)) := deref α10 in
          let* α12 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
            borrow α11 in
          let* α13 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
            pointer_coercion "Unsize" α12 in
          let* α14 : ltac:(refine core.fmt.Arguments) :=
            core.fmt.Arguments::["new_v1"] α4 α13 in
          std.io.stdio._print α14 in
        M.alloc tt in
      let* α0 : ltac:(refine (ref wrapping_errors.DoubleError)) := borrow e in
      let* α1 : ltac:(refine (core.option.Option (ref type not implemented))) :=
        (core.error.Error.source
            (Self := wrapping_errors.DoubleError)
            (Trait := ltac:(refine _)))
          α0 in
      let* α2 : ltac:(refine bool) :=
        let_if core.option.Option.Some source := α1 in
      if (α2 : bool) then
        let* _ : ltac:(refine unit) :=
          let* _ : ltac:(refine unit) :=
            let* α0 : ltac:(refine (array (ref str))) :=
              M.alloc [ mk_str "  Caused by: "; mk_str "
" ] in
            let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
            let* α2 : ltac:(refine (array (ref str))) := deref α1 in
            let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
            let* α4 : ltac:(refine (ref (slice (ref str)))) :=
              pointer_coercion "Unsize" α3 in
            let* α5 : ltac:(refine (ref (ref type not implemented))) :=
              borrow source in
            let* α6 : ltac:(refine (ref type not implemented)) := deref α5 in
            let* α7 : ltac:(refine (ref (ref type not implemented))) :=
              borrow α6 in
            let* α8 : ltac:(refine core.fmt.rt.Argument) :=
              core.fmt.rt.Argument::["new_display"] α7 in
            let* α9 : ltac:(refine (array core.fmt.rt.Argument)) :=
              M.alloc [ α8 ] in
            let* α10 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
              borrow α9 in
            let* α11 : ltac:(refine (array core.fmt.rt.Argument)) :=
              deref α10 in
            let* α12 : ltac:(refine (ref (array core.fmt.rt.Argument))) :=
              borrow α11 in
            let* α13 : ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
              pointer_coercion "Unsize" α12 in
            let* α14 : ltac:(refine core.fmt.Arguments) :=
              core.fmt.Arguments::["new_v1"] α4 α13 in
            std.io.stdio._print α14 in
          M.alloc tt in
        M.alloc tt
      else
        M.alloc tt
    end).

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let*
        numbers :
        ltac:(refine (alloc.vec.Vec (ref str) alloc.alloc.Global)) :=
      let* α0 : ltac:(refine str) := deref (mk_str "93") in
      let* α1 : ltac:(refine (ref str)) := borrow α0 in
      let* α2 : ltac:(refine str) := deref (mk_str "18") in
      let* α3 : ltac:(refine (ref str)) := borrow α2 in
      let* α4 : ltac:(refine (array (ref str))) :=
        M.alloc [ mk_str "42"; α1; α3 ] in
      let*
          α5 :
          ltac:(refine
            (alloc.boxed.Box (array (ref str)) alloc.alloc.Global)) :=
        (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α4 in
      let*
          α6 :
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
      let*
          α5 :
          ltac:(refine
            (alloc.boxed.Box (array (ref str)) alloc.alloc.Global)) :=
        (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α4 in
      let*
          α6 :
          ltac:(refine
            (alloc.boxed.Box (slice (ref str)) alloc.alloc.Global)) :=
        pointer_coercion "Unsize" α5 in
      (slice (ref str))::["into_vec"] α6 in
    let* _ : ltac:(refine unit) :=
      let*
          α0 :
          ltac:(refine (core.result.Result i32 wrapping_errors.DoubleError)) :=
        wrapping_errors.double_first numbers in
      wrapping_errors.print α0 in
    let* _ : ltac:(refine unit) :=
      let*
          α0 :
          ltac:(refine (core.result.Result i32 wrapping_errors.DoubleError)) :=
        wrapping_errors.double_first empty in
      wrapping_errors.print α0 in
    let* _ : ltac:(refine unit) :=
      let*
          α0 :
          ltac:(refine (core.result.Result i32 wrapping_errors.DoubleError)) :=
        wrapping_errors.double_first strings in
      wrapping_errors.print α0 in
    M.alloc tt).
