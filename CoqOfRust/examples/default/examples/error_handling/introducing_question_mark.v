(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn multiply(first_number_str: &str, second_number_str: &str) -> Result<i32, ParseIntError> {
    let first_number = first_number_str.parse::<i32>()?;
    let second_number = second_number_str.parse::<i32>()?;

    Ok(first_number * second_number)
}
*)
Definition multiply
    (first_number_str : M.Val (ref str.t))
    (second_number_str : M.Val (ref str.t))
    : M (core.result.Result.t i32.t core.num.error.ParseIntError.t) :=
  let return_ :=
    M.return_
      (R := core.result.Result.t i32.t core.num.error.ParseIntError.t) in
  M.function_body
    (let* first_number : M.Val i32.t :=
      let* α0 : M.Val str.t := deref first_number_str in
      let* α1 : M.Val (ref str.t) := borrow α0 in
      let* α2 := str.t::["parse"] α1 in
      let* α3 :
          M.Val (core.result.Result.t i32.t core.num.error.ParseIntError.t) :=
        M.alloc α2 in
      let* α4 :=
        (core.ops.try_trait.Try.branch
            (Self := core.result.Result.t i32.t core.num.error.ParseIntError.t)
            (Trait := ltac:(refine _)))
          α3 in
      let* α5 :
          M.Val
            (core.ops.control_flow.ControlFlow.t
              (core.result.Result.t
                core.convert.Infallible.t
                core.num.error.ParseIntError.t)
              i32.t) :=
        M.alloc α4 in
      let* α6 := M.read α5 in
      let* α7 : M.Val i32.t :=
        match α6 with
        | core.ops.control_flow.ControlFlow.Break residual =>
          let* residual := M.alloc residual in
          let* α0 :=
            (core.ops.try_trait.FromResidual.from_residual
                (Self :=
                  core.result.Result.t i32.t core.num.error.ParseIntError.t)
                (Trait := ltac:(refine _)))
              residual in
          let* α1 : M.Val never.t := return_ α0 in
          never_to_any α1
        | core.ops.control_flow.ControlFlow.Continue val =>
          let* val := M.alloc val in
          M.pure val
        end in
      M.copy α7 in
    let* second_number : M.Val i32.t :=
      let* α0 : M.Val str.t := deref second_number_str in
      let* α1 : M.Val (ref str.t) := borrow α0 in
      let* α2 := str.t::["parse"] α1 in
      let* α3 :
          M.Val (core.result.Result.t i32.t core.num.error.ParseIntError.t) :=
        M.alloc α2 in
      let* α4 :=
        (core.ops.try_trait.Try.branch
            (Self := core.result.Result.t i32.t core.num.error.ParseIntError.t)
            (Trait := ltac:(refine _)))
          α3 in
      let* α5 :
          M.Val
            (core.ops.control_flow.ControlFlow.t
              (core.result.Result.t
                core.convert.Infallible.t
                core.num.error.ParseIntError.t)
              i32.t) :=
        M.alloc α4 in
      let* α6 := M.read α5 in
      let* α7 : M.Val i32.t :=
        match α6 with
        | core.ops.control_flow.ControlFlow.Break residual =>
          let* residual := M.alloc residual in
          let* α0 :=
            (core.ops.try_trait.FromResidual.from_residual
                (Self :=
                  core.result.Result.t i32.t core.num.error.ParseIntError.t)
                (Trait := ltac:(refine _)))
              residual in
          let* α1 : M.Val never.t := return_ α0 in
          never_to_any α1
        | core.ops.control_flow.ControlFlow.Continue val =>
          let* val := M.alloc val in
          M.pure val
        end in
      M.copy α7 in
    let* α0 : M.Val i32.t := BinOp.mul first_number second_number in
    let* α1 := M.read α0 in
    M.alloc (core.result.Result.Ok α1)).

(*
fn print(result: Result<i32, ParseIntError>) {
    match result {
        Ok(n) => println!("n is {}", n),
        Err(e) => println!("Error: {}", e),
    }
}
*)
Definition print
    (result : M.Val (core.result.Result.t i32.t core.num.error.ParseIntError.t))
    : M unit :=
  M.function_body
    (let* α0 := M.read result in
    match α0 with
    | core.result.Result.Ok n =>
      let* n := M.alloc n in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "n is "; mk_str "
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
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Error: "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : M.Val (ref core.num.error.ParseIntError.t) := borrow e in
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
    end).

(*
fn main() {
    print(multiply("10", "2"));
    print(multiply("t", "2"));
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* _ : M.Val unit :=
      let* α0 : M.Val str.t := deref (mk_str "10") in
      let* α1 : M.Val (ref str.t) := borrow α0 in
      let* α2 : M.Val str.t := deref (mk_str "2") in
      let* α3 : M.Val (ref str.t) := borrow α2 in
      let* α4 := introducing_question_mark.multiply α1 α3 in
      let* α5 :
          M.Val (core.result.Result.t i32.t core.num.error.ParseIntError.t) :=
        M.alloc α4 in
      let* α6 := introducing_question_mark.print α5 in
      M.alloc α6 in
    let* _ : M.Val unit :=
      let* α0 : M.Val str.t := deref (mk_str "t") in
      let* α1 : M.Val (ref str.t) := borrow α0 in
      let* α2 : M.Val str.t := deref (mk_str "2") in
      let* α3 : M.Val (ref str.t) := borrow α2 in
      let* α4 := introducing_question_mark.multiply α1 α3 in
      let* α5 :
          M.Val (core.result.Result.t i32.t core.num.error.ParseIntError.t) :=
        M.alloc α4 in
      let* α6 := introducing_question_mark.print α5 in
      M.alloc α6 in
    M.alloc tt).
