(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Ltac Result T := exact (core.result.Result.t T wrapping_errors.DoubleError.t).

Module DoubleError.
  Inductive t : Set :=
  | EmptyVec
  | Parse (_ : core.num.error.ParseIntError.t).
End DoubleError.

Module  Impl_core_fmt_Debug_for_wrapping_errors_DoubleError_t.
Section Impl_core_fmt_Debug_for_wrapping_errors_DoubleError_t.
  Ltac Self := exact wrapping_errors.DoubleError.t.
  
  (*
  Debug
  *)
  Definition fmt
      (self : M.Val (ref ltac:(Self)))
      (f : M.Val (mut_ref core.fmt.Formatter.t))
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 := M.read self in
      match α0 with
      | wrapping_errors.DoubleError.EmptyVec  =>
        let* α0 : M.Val core.fmt.Formatter.t := deref f in
        let* α1 : M.Val (mut_ref core.fmt.Formatter.t) := borrow_mut α0 in
        let* α2 : M.Val str.t := deref (mk_str "EmptyVec") in
        let* α3 : M.Val (ref str.t) := borrow α2 in
        let* α4 := core.fmt.Formatter.t::["write_str"] α1 α3 in
        M.alloc α4
      | wrapping_errors.DoubleError.Parse __self_0 =>
        let* __self_0 := M.alloc __self_0 in
        let* α0 : M.Val core.fmt.Formatter.t := deref f in
        let* α1 : M.Val (mut_ref core.fmt.Formatter.t) := borrow_mut α0 in
        let* α2 : M.Val str.t := deref (mk_str "Parse") in
        let* α3 : M.Val (ref str.t) := borrow α2 in
        let* α4 : M.Val (ref (ref core.num.error.ParseIntError.t)) :=
          borrow __self_0 in
        let* α5 : M.Val (ref type not implemented) :=
          pointer_coercion "Unsize" α4 in
        let* α6 :=
          core.fmt.Formatter.t::["debug_tuple_field1_finish"] α1 α3 α5 in
        M.alloc α6
      end).
  
  Global Instance AssociatedFunction_fmt :
    Notations.DoubleColon ltac:(Self) "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Debug.Trait ltac:(Self) := {
    core.fmt.Debug.fmt := fmt;
  }.
End Impl_core_fmt_Debug_for_wrapping_errors_DoubleError_t.
End Impl_core_fmt_Debug_for_wrapping_errors_DoubleError_t.

Module  Impl_core_fmt_Display_for_wrapping_errors_DoubleError_t.
Section Impl_core_fmt_Display_for_wrapping_errors_DoubleError_t.
  Ltac Self := exact wrapping_errors.DoubleError.t.
  
  (*
      fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
          match *self {
              DoubleError::EmptyVec => write!(f, "please use a vector with at least one element"),
              // The wrapped error contains additional information and is available
              // via the source() method.
              DoubleError::Parse(..) => write!(f, "the provided string could not be parsed as int"),
          }
      }
  *)
  Definition fmt
      (self : M.Val (ref ltac:(Self)))
      (f : M.Val (mut_ref core.fmt.Formatter.t))
      : M ltac:(core.fmt.Result) :=
    M.function_body
      (let* α0 : M.Val wrapping_errors.DoubleError.t := deref self in
      let* α1 := M.read α0 in
      match α1 with
      | wrapping_errors.DoubleError.EmptyVec  =>
        let* α0 : M.Val core.fmt.Formatter.t := deref f in
        let* α1 : M.Val (mut_ref core.fmt.Formatter.t) := borrow_mut α0 in
        let* α2 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "please use a vector with at least one element" ] in
        let* α3 : M.Val (ref (array (ref str.t))) := borrow α2 in
        let* α4 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 := core.fmt.Arguments.t::["new_const"] α4 in
        let* α6 : M.Val core.fmt.Arguments.t := M.alloc α5 in
        let* α7 := core.fmt.Formatter.t::["write_fmt"] α1 α6 in
        M.alloc α7
      | wrapping_errors.DoubleError.Parse  =>
        let* α0 : M.Val core.fmt.Formatter.t := deref f in
        let* α1 : M.Val (mut_ref core.fmt.Formatter.t) := borrow_mut α0 in
        let* α2 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "the provided string could not be parsed as int" ] in
        let* α3 : M.Val (ref (array (ref str.t))) := borrow α2 in
        let* α4 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 := core.fmt.Arguments.t::["new_const"] α4 in
        let* α6 : M.Val core.fmt.Arguments.t := M.alloc α5 in
        let* α7 := core.fmt.Formatter.t::["write_fmt"] α1 α6 in
        M.alloc α7
      end).
  
  Global Instance AssociatedFunction_fmt :
    Notations.DoubleColon ltac:(Self) "fmt" := {
    Notations.double_colon := fmt;
  }.
  
  Global Instance ℐ : core.fmt.Display.Trait ltac:(Self) := {
    core.fmt.Display.fmt := fmt;
  }.
End Impl_core_fmt_Display_for_wrapping_errors_DoubleError_t.
End Impl_core_fmt_Display_for_wrapping_errors_DoubleError_t.

Module  Impl_core_error_Error_for_wrapping_errors_DoubleError_t.
Section Impl_core_error_Error_for_wrapping_errors_DoubleError_t.
  Ltac Self := exact wrapping_errors.DoubleError.t.
  
  (*
      fn source(&self) -> Option<&(dyn error::Error + 'static)> {
          match *self {
              DoubleError::EmptyVec => None,
              // The cause is the underlying implementation error type. Is implicitly
              // cast to the trait object `&error::Error`. This works because the
              // underlying type already implements the `Error` trait.
              DoubleError::Parse(ref e) => Some(e),
          }
      }
  *)
  Definition source
      (self : M.Val (ref ltac:(Self)))
      : M (core.option.Option.t (ref _ (* dyn *))) :=
    M.function_body
      (let* α0 : M.Val wrapping_errors.DoubleError.t := deref self in
      let* α1 := M.read α0 in
      match α1 with
      | wrapping_errors.DoubleError.EmptyVec  => M.alloc core.option.Option.None
      | wrapping_errors.DoubleError.Parse e =>
        let* e := M.alloc e in
        let* α0 : M.Val core.num.error.ParseIntError.t := deref e in
        let* α1 : M.Val (ref core.num.error.ParseIntError.t) := borrow α0 in
        let* α2 : M.Val (ref type not implemented) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := M.read α2 in
        M.alloc (core.option.Option.Some α3)
      end).
  
  Global Instance AssociatedFunction_source :
    Notations.DoubleColon ltac:(Self) "source" := {
    Notations.double_colon := source;
  }.
  
  Global Instance ℐ : core.error.Error.Required.Trait ltac:(Self) := {
    core.error.Error.source := Datatypes.Some source;
    core.error.Error.type_id := Datatypes.None;
    core.error.Error.description := Datatypes.None;
    core.error.Error.cause := Datatypes.None;
    core.error.Error.provide := Datatypes.None;
  }.
End Impl_core_error_Error_for_wrapping_errors_DoubleError_t.
End Impl_core_error_Error_for_wrapping_errors_DoubleError_t.

Module  Impl_core_convert_From_core_num_error_ParseIntError_t_for_wrapping_errors_DoubleError_t.
Section Impl_core_convert_From_core_num_error_ParseIntError_t_for_wrapping_errors_DoubleError_t.
  Ltac Self := exact wrapping_errors.DoubleError.t.
  
  (*
      fn from(err: ParseIntError) -> DoubleError {
          DoubleError::Parse(err)
      }
  *)
  Definition from
      (err : M.Val core.num.error.ParseIntError.t)
      : M wrapping_errors.DoubleError.t :=
    M.function_body
      (let* α0 := M.read err in
      M.alloc (wrapping_errors.DoubleError.Parse α0)).
  
  Global Instance AssociatedFunction_from :
    Notations.DoubleColon ltac:(Self) "from" := {
    Notations.double_colon := from;
  }.
  
  Global Instance ℐ :
    core.convert.From.Trait ltac:(Self)
      (T := core.num.error.ParseIntError.t) := {
    core.convert.From.from := from;
  }.
End Impl_core_convert_From_core_num_error_ParseIntError_t_for_wrapping_errors_DoubleError_t.
End Impl_core_convert_From_core_num_error_ParseIntError_t_for_wrapping_errors_DoubleError_t.

(*
fn double_first(vec: Vec<&str>) -> Result<i32> {
    let first = vec.first().ok_or(DoubleError::EmptyVec)?;
    // Here we implicitly use the `ParseIntError` implementation of `From` (which
    // we defined above) in order to create a `DoubleError`.
    let parsed = first.parse::<i32>()?;

    Ok(2 * parsed)
}
*)
Definition double_first
    (vec : M.Val (alloc.vec.Vec.t (ref str.t) alloc.vec.Vec.Default.A))
    : M ltac:(wrapping_errors.Result i32.t) :=
  let return_ := M.return_ (R := ltac:(wrapping_errors.Result i32.t)) in
  M.function_body
    (let* first : M.Val (ref (ref str.t)) :=
      let* α0 :
          M.Val (ref (alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t)) :=
        borrow vec in
      let* α1 :=
        (core.ops.deref.Deref.deref
            (Self := alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t)
            (Trait := ltac:(refine _)))
          α0 in
      let* α2 : M.Val (ref (slice (ref str.t))) := M.alloc α1 in
      let* α3 : M.Val (slice (ref str.t)) := deref α2 in
      let* α4 : M.Val (ref (slice (ref str.t))) := borrow α3 in
      let* α5 := (slice (ref str.t))::["first"] α4 in
      let* α6 : M.Val (core.option.Option.t (ref (ref str.t))) := M.alloc α5 in
      let* α7 : M.Val wrapping_errors.DoubleError.t :=
        M.alloc wrapping_errors.DoubleError.EmptyVec in
      let* α8 := (core.option.Option.t (ref (ref str.t)))::["ok_or"] α6 α7 in
      let* α9 :
          M.Val
            (core.result.Result.t
              (ref (ref str.t))
              wrapping_errors.DoubleError.t) :=
        M.alloc α8 in
      let* α10 :=
        (core.ops.try_trait.Try.branch
            (Self :=
              core.result.Result.t
                (ref (ref str.t))
                wrapping_errors.DoubleError.t)
            (Trait := ltac:(refine _)))
          α9 in
      let* α11 :
          M.Val
            (core.ops.control_flow.ControlFlow.t
              (core.result.Result.t
                core.convert.Infallible.t
                wrapping_errors.DoubleError.t)
              (ref (ref str.t))) :=
        M.alloc α10 in
      let* α12 := M.read α11 in
      let* α13 : M.Val (ref (ref str.t)) :=
        match α12 with
        | core.ops.control_flow.ControlFlow.Break residual =>
          let* residual := M.alloc residual in
          let* α0 :=
            (core.ops.try_trait.FromResidual.from_residual
                (Self :=
                  core.result.Result.t i32.t wrapping_errors.DoubleError.t)
                (Trait := ltac:(refine _)))
              residual in
          let* α1 : M.Val never.t := return_ α0 in
          never_to_any α1
        | core.ops.control_flow.ControlFlow.Continue val =>
          let* val := M.alloc val in
          M.pure val
        end in
      M.copy α13 in
    let* parsed : M.Val i32.t :=
      let* α0 : M.Val (ref str.t) := deref first in
      let* α1 : M.Val str.t := deref α0 in
      let* α2 : M.Val (ref str.t) := borrow α1 in
      let* α3 := str.t::["parse"] α2 in
      let* α4 :
          M.Val (core.result.Result.t i32.t core.num.error.ParseIntError.t) :=
        M.alloc α3 in
      let* α5 :=
        (core.ops.try_trait.Try.branch
            (Self := core.result.Result.t i32.t core.num.error.ParseIntError.t)
            (Trait := ltac:(refine _)))
          α4 in
      let* α6 :
          M.Val
            (core.ops.control_flow.ControlFlow.t
              (core.result.Result.t
                core.convert.Infallible.t
                core.num.error.ParseIntError.t)
              i32.t) :=
        M.alloc α5 in
      let* α7 := M.read α6 in
      let* α8 : M.Val i32.t :=
        match α7 with
        | core.ops.control_flow.ControlFlow.Break residual =>
          let* residual := M.alloc residual in
          let* α0 :=
            (core.ops.try_trait.FromResidual.from_residual
                (Self :=
                  core.result.Result.t i32.t wrapping_errors.DoubleError.t)
                (Trait := ltac:(refine _)))
              residual in
          let* α1 : M.Val never.t := return_ α0 in
          never_to_any α1
        | core.ops.control_flow.ControlFlow.Continue val =>
          let* val := M.alloc val in
          M.pure val
        end in
      M.copy α8 in
    let* α0 : M.Val i32.t := M.alloc 2 in
    let* α1 : M.Val i32.t := BinOp.mul α0 parsed in
    let* α2 := M.read α1 in
    M.alloc (core.result.Result.Ok α2)).

(*
fn print(result: Result<i32>) {
    match result {
        Ok(n) => println!("The first doubled is {}", n),
        Err(e) => {
            println!("Error: {}", e);
            if let Some(source) = e.source() {
                println!("  Caused by: {}", source);
            }
        }
    }
}
*)
Definition print
    (result : M.Val ltac:(wrapping_errors.Result i32.t))
    : M unit :=
  M.function_body
    (let* α0 := M.read result in
    match α0 with
    | core.result.Result.Ok n =>
      let* n := M.alloc n in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "The first doubled is "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : M.Val (ref i32.t) := borrow n in
        let* α4 := core.fmt.rt.Argument.t::["new_display"] α3 in
        let* α5 : M.Val core.fmt.rt.Argument.t := M.alloc α4 in
        let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
        let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α6 in
        let* α8 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α7 in
        let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
        let* α10 : M.Val core.fmt.Arguments.t := M.alloc α9 in
        let* α11 := std.io.stdio._print α10 in
        M.alloc α11 in
      M.alloc tt
    | core.result.Result.Err e =>
      let* e := M.alloc e in
      let* _ : M.Val unit :=
        let* _ : M.Val unit :=
          let* α0 : M.Val (array (ref str.t)) :=
            M.alloc [ mk_str "Error: "; mk_str "
" ] in
          let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
          let* α2 : M.Val (ref (slice (ref str.t))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : M.Val (ref wrapping_errors.DoubleError.t) := borrow e in
          let* α4 := core.fmt.rt.Argument.t::["new_display"] α3 in
          let* α5 : M.Val core.fmt.rt.Argument.t := M.alloc α4 in
          let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
          let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α6 in
          let* α8 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
            pointer_coercion "Unsize" α7 in
          let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
          let* α10 : M.Val core.fmt.Arguments.t := M.alloc α9 in
          let* α11 := std.io.stdio._print α10 in
          M.alloc α11 in
        M.alloc tt in
      let* α0 : M.Val (ref wrapping_errors.DoubleError.t) := borrow e in
      let* α1 :=
        (core.error.Error.source
            (Self := wrapping_errors.DoubleError.t)
            (Trait := ltac:(refine _)))
          α0 in
      let* α2 : M.Val (core.option.Option.t (ref type not implemented)) :=
        M.alloc α1 in
      let* α3 : M.Val bool.t := let_if core.option.Option.Some source := α2 in
      let* α4 := M.read α3 in
      if (α4 : bool) then
        let* _ : M.Val unit :=
          let* _ : M.Val unit :=
            let* α0 : M.Val (array (ref str.t)) :=
              M.alloc [ mk_str "  Caused by: "; mk_str "
" ] in
            let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
            let* α2 : M.Val (ref (slice (ref str.t))) :=
              pointer_coercion "Unsize" α1 in
            let* α3 : M.Val (ref (ref type not implemented)) := borrow source in
            let* α4 := core.fmt.rt.Argument.t::["new_display"] α3 in
            let* α5 : M.Val core.fmt.rt.Argument.t := M.alloc α4 in
            let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
            let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α6 in
            let* α8 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
              pointer_coercion "Unsize" α7 in
            let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
            let* α10 : M.Val core.fmt.Arguments.t := M.alloc α9 in
            let* α11 := std.io.stdio._print α10 in
            M.alloc α11 in
          M.alloc tt in
        M.alloc tt
      else
        M.alloc tt
    end).

(*
fn main() {
    let numbers = vec!["42", "93", "18"];
    let empty = vec![];
    let strings = vec!["tofu", "93", "18"];

    print(double_first(numbers));
    print(double_first(empty));
    print(double_first(strings));
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* numbers : M.Val (alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t) :=
      let* α0 : M.Val str.t := deref (mk_str "93") in
      let* α1 : M.Val (ref str.t) := borrow α0 in
      let* α2 : M.Val str.t := deref (mk_str "18") in
      let* α3 : M.Val (ref str.t) := borrow α2 in
      let* α4 : M.Val (array (ref str.t)) := M.alloc [ mk_str "42"; α1; α3 ] in
      let* α5 :
          M.Val (alloc.boxed.Box.t (array (ref str.t)) alloc.alloc.Global.t) :=
        (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α4 in
      let* α6 :
          M.Val (alloc.boxed.Box.t (slice (ref str.t)) alloc.alloc.Global.t) :=
        pointer_coercion "Unsize" α5 in
      let* α7 := (slice (ref str.t))::["into_vec"] α6 in
      M.alloc α7 in
    let* empty : M.Val (alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t) :=
      let* α0 := (alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t)::["new"] in
      M.alloc α0 in
    let* strings : M.Val (alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t) :=
      let* α0 : M.Val str.t := deref (mk_str "93") in
      let* α1 : M.Val (ref str.t) := borrow α0 in
      let* α2 : M.Val str.t := deref (mk_str "18") in
      let* α3 : M.Val (ref str.t) := borrow α2 in
      let* α4 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "tofu"; α1; α3 ] in
      let* α5 :
          M.Val (alloc.boxed.Box.t (array (ref str.t)) alloc.alloc.Global.t) :=
        (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α4 in
      let* α6 :
          M.Val (alloc.boxed.Box.t (slice (ref str.t)) alloc.alloc.Global.t) :=
        pointer_coercion "Unsize" α5 in
      let* α7 := (slice (ref str.t))::["into_vec"] α6 in
      M.alloc α7 in
    let* _ : M.Val unit :=
      let* α0 := wrapping_errors.double_first numbers in
      let* α1 :
          M.Val (core.result.Result.t i32.t wrapping_errors.DoubleError.t) :=
        M.alloc α0 in
      let* α2 := wrapping_errors.print α1 in
      M.alloc α2 in
    let* _ : M.Val unit :=
      let* α0 := wrapping_errors.double_first empty in
      let* α1 :
          M.Val (core.result.Result.t i32.t wrapping_errors.DoubleError.t) :=
        M.alloc α0 in
      let* α2 := wrapping_errors.print α1 in
      M.alloc α2 in
    let* _ : M.Val unit :=
      let* α0 := wrapping_errors.double_first strings in
      let* α1 :
          M.Val (core.result.Result.t i32.t wrapping_errors.DoubleError.t) :=
        M.alloc α0 in
      let* α2 := wrapping_errors.print α1 in
      M.alloc α2 in
    M.alloc tt).
