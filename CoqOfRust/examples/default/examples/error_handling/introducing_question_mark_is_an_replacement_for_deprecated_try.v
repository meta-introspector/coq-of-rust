(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn multiply(first_number_str: &str, second_number_str: &str) -> Result<i32, ParseIntError> {
    let first_number = try!(first_number_str.parse::<i32>());
    let second_number = try!(second_number_str.parse::<i32>());

    Ok(first_number * second_number)
}
*)
Definition multiply
    (first_number_str : ref str.t)
    (second_number_str : ref str.t)
    : M (core.result.Result.t i32.t core.num.error.ParseIntError.t) :=
  let* first_number_str := M.alloc first_number_str in
  let* second_number_str := M.alloc second_number_str in
  let return_ :=
    M.return_
      (R := core.result.Result.t i32.t core.num.error.ParseIntError.t) in
  M.catch_return
    (let* first_number : M.Val i32.t :=
      let* α0 : ref str.t := M.read first_number_str in
      let* α1 : core.result.Result.t i32.t core.num.error.ParseIntError.t :=
        M.call (impl str.t "parse" α0) in
      let* α2 :
          M.Val (core.result.Result.t i32.t core.num.error.ParseIntError.t) :=
        M.alloc α1 in
      let* α3 : M.Val i32.t :=
        match_operator
          α2
          [
            fun γ =>
              (let* α0 := M.read γ in
              match α0 with
              | core.result.Result.Ok _ =>
                let γ0_0 := core.result.Result.Get_Ok_0 γ in
                let* val := M.copy γ0_0 in
                M.pure val
              | _ => M.break_match
              end) :
              M (M.Val i32.t);
            fun γ =>
              (let* α0 := M.read γ in
              match α0 with
              | core.result.Result.Err _ =>
                let γ0_0 := core.result.Result.Get_Err_0 γ in
                let* err := M.copy γ0_0 in
                let* α0 : _ :=
                  ltac:(M.get_method (fun ℐ =>
                    core.convert.From.from
                      (Self := core.num.error.ParseIntError.t)
                      (T := core.num.error.ParseIntError.t)
                      (Trait := ℐ))) in
                let* α1 : core.num.error.ParseIntError.t := M.read err in
                let* α2 : core.num.error.ParseIntError.t := M.call (α0 α1) in
                let* α3 : M.Val never.t :=
                  return_ (core.result.Result.Err α2) in
                let* α4 := M.read α3 in
                let* α5 : i32.t := never_to_any α4 in
                M.alloc α5
              | _ => M.break_match
              end) :
              M (M.Val i32.t)
          ] in
      M.copy α3 in
    let* second_number : M.Val i32.t :=
      let* α0 : ref str.t := M.read second_number_str in
      let* α1 : core.result.Result.t i32.t core.num.error.ParseIntError.t :=
        M.call (impl str.t "parse" α0) in
      let* α2 :
          M.Val (core.result.Result.t i32.t core.num.error.ParseIntError.t) :=
        M.alloc α1 in
      let* α3 : M.Val i32.t :=
        match_operator
          α2
          [
            fun γ =>
              (let* α0 := M.read γ in
              match α0 with
              | core.result.Result.Ok _ =>
                let γ0_0 := core.result.Result.Get_Ok_0 γ in
                let* val := M.copy γ0_0 in
                M.pure val
              | _ => M.break_match
              end) :
              M (M.Val i32.t);
            fun γ =>
              (let* α0 := M.read γ in
              match α0 with
              | core.result.Result.Err _ =>
                let γ0_0 := core.result.Result.Get_Err_0 γ in
                let* err := M.copy γ0_0 in
                let* α0 : _ :=
                  ltac:(M.get_method (fun ℐ =>
                    core.convert.From.from
                      (Self := core.num.error.ParseIntError.t)
                      (T := core.num.error.ParseIntError.t)
                      (Trait := ℐ))) in
                let* α1 : core.num.error.ParseIntError.t := M.read err in
                let* α2 : core.num.error.ParseIntError.t := M.call (α0 α1) in
                let* α3 : M.Val never.t :=
                  return_ (core.result.Result.Err α2) in
                let* α4 := M.read α3 in
                let* α5 : i32.t := never_to_any α4 in
                M.alloc α5
              | _ => M.break_match
              end) :
              M (M.Val i32.t)
          ] in
      M.copy α3 in
    let* α0 : i32.t := M.read first_number in
    let* α1 : i32.t := M.read second_number in
    let* α2 : i32.t := BinOp.Panic.mul α0 α1 in
    let* α0 :
        M.Val (core.result.Result.t i32.t core.num.error.ParseIntError.t) :=
      M.alloc (core.result.Result.Ok α2) in
    M.read α0).

(*
fn print(result: Result<i32, ParseIntError>) {
    match result {
        Ok(n) => println!("n is {}", n),
        Err(e) => println!("Error: {}", e),
    }
}
*)
Definition print
    (result : core.result.Result.t i32.t core.num.error.ParseIntError.t)
    : M unit :=
  let* result := M.alloc result in
  let* α0 : M.Val unit :=
    match_operator
      result
      [
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | core.result.Result.Ok _ =>
            let γ0_0 := core.result.Result.Get_Ok_0 γ in
            let* n := M.copy γ0_0 in
            let* _ : M.Val unit :=
              let* α0 : ref str.t := M.read (mk_str "n is ") in
              let* α1 : ref str.t := M.read (mk_str "
") in
              let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
              let* α3 : M.Val (ref (array (ref str.t))) :=
                M.alloc (borrow α2) in
              let* α4 : ref (slice (ref str.t)) :=
                M.read (pointer_coercion "Unsize" α3) in
              let* α5 : core.fmt.rt.Argument.t :=
                M.call (impl core.fmt.rt.Argument.t "new_display" (borrow n)) in
              let* α6 : M.Val (array core.fmt.rt.Argument.t) :=
                M.alloc [ α5 ] in
              let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
                M.alloc (borrow α6) in
              let* α8 : ref (slice core.fmt.rt.Argument.t) :=
                M.read (pointer_coercion "Unsize" α7) in
              let* α9 : core.fmt.Arguments.t :=
                M.call (impl core.fmt.Arguments.t "new_v1" α4 α8) in
              let* α10 : unit := M.call (std.io.stdio._print α9) in
              M.alloc α10 in
            M.alloc tt
          | _ => M.break_match
          end) :
          M (M.Val unit);
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | core.result.Result.Err _ =>
            let γ0_0 := core.result.Result.Get_Err_0 γ in
            let* e := M.copy γ0_0 in
            let* _ : M.Val unit :=
              let* α0 : ref str.t := M.read (mk_str "Error: ") in
              let* α1 : ref str.t := M.read (mk_str "
") in
              let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
              let* α3 : M.Val (ref (array (ref str.t))) :=
                M.alloc (borrow α2) in
              let* α4 : ref (slice (ref str.t)) :=
                M.read (pointer_coercion "Unsize" α3) in
              let* α5 : core.fmt.rt.Argument.t :=
                M.call (impl core.fmt.rt.Argument.t "new_display" (borrow e)) in
              let* α6 : M.Val (array core.fmt.rt.Argument.t) :=
                M.alloc [ α5 ] in
              let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
                M.alloc (borrow α6) in
              let* α8 : ref (slice core.fmt.rt.Argument.t) :=
                M.read (pointer_coercion "Unsize" α7) in
              let* α9 : core.fmt.Arguments.t :=
                M.call (impl core.fmt.Arguments.t "new_v1" α4 α8) in
              let* α10 : unit := M.call (std.io.stdio._print α9) in
              M.alloc α10 in
            M.alloc tt
          | _ => M.break_match
          end) :
          M (M.Val unit)
      ] in
  M.read α0.

(*
fn main() {
    print(multiply("10", "2"));
    print(multiply("t", "2"));
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* _ : M.Val unit :=
    let* α0 : ref str.t := M.read (mk_str "10") in
    let* α1 : ref str.t := M.read (mk_str "2") in
    let* α2 : core.result.Result.t i32.t core.num.error.ParseIntError.t :=
      M.call
        (introducing_question_mark_is_an_replacement_for_deprecated_try.multiply
          α0
          α1) in
    let* α3 : unit :=
      M.call
        (introducing_question_mark_is_an_replacement_for_deprecated_try.print
          α2) in
    M.alloc α3 in
  let* _ : M.Val unit :=
    let* α0 : ref str.t := M.read (mk_str "t") in
    let* α1 : ref str.t := M.read (mk_str "2") in
    let* α2 : core.result.Result.t i32.t core.num.error.ParseIntError.t :=
      M.call
        (introducing_question_mark_is_an_replacement_for_deprecated_try.multiply
          α0
          α1) in
    let* α3 : unit :=
      M.call
        (introducing_question_mark_is_an_replacement_for_deprecated_try.print
          α2) in
    M.alloc α3 in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
