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
  Parameter fmt :
      (M.Val (ref ltac:(Self))) ->
        (M.Val (mut_ref core.fmt.Formatter.t)) ->
        M ltac:(core.fmt.Result).
  
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
  Parameter fmt :
      (M.Val (ref ltac:(Self))) ->
        (M.Val (mut_ref core.fmt.Formatter.t)) ->
        M ltac:(core.fmt.Result).
  
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
  Parameter source :
      (M.Val (ref ltac:(Self))) -> M (core.option.Option.t (ref _ (* dyn *))).
  
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
  Parameter from :
      (M.Val core.num.error.ParseIntError.t) -> M wrapping_errors.DoubleError.t.
  
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
Parameter double_first :
    (M.Val (alloc.vec.Vec.t (ref str.t) alloc.vec.Vec.Default.A)) ->
      M ltac:(wrapping_errors.Result i32.t).

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
Parameter print : (M.Val ltac:(wrapping_errors.Result i32.t)) -> M unit.

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
Parameter main : M unit.
