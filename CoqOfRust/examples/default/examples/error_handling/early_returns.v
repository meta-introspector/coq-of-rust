(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn multiply(first_number_str: &str, second_number_str: &str) -> Result<i32, ParseIntError> {
    let first_number = match first_number_str.parse::<i32>() {
        Ok(first_number) => first_number,
        Err(e) => return Err(e),
    };

    let second_number = match second_number_str.parse::<i32>() {
        Ok(second_number) => second_number,
        Err(e) => return Err(e),
    };

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
        M.call (str.t::["parse"] α0) in
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
                let γ0_0 := γ.["Ok.0"] in
                let* first_number := M.copy γ0_0 in
                M.pure first_number
              | _ => M.break_match
              end) :
              M (M.Val i32.t);
            fun γ =>
              (let* α0 := M.read γ in
              match α0 with
              | core.result.Result.Err _ =>
                let γ0_0 := γ.["Err.0"] in
                let* e := M.copy γ0_0 in
                let* α0 : core.num.error.ParseIntError.t := M.read e in
                let* α1 : M.Val never.t :=
                  return_ (core.result.Result.Err α0) in
                let* α2 := M.read α1 in
                let* α3 : i32.t := never_to_any α2 in
                M.alloc α3
              | _ => M.break_match
              end) :
              M (M.Val i32.t)
          ] in
      M.copy α3 in
    let* second_number : M.Val i32.t :=
      let* α0 : ref str.t := M.read second_number_str in
      let* α1 : core.result.Result.t i32.t core.num.error.ParseIntError.t :=
        M.call (str.t::["parse"] α0) in
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
                let γ0_0 := γ.["Ok.0"] in
                let* second_number := M.copy γ0_0 in
                M.pure second_number
              | _ => M.break_match
              end) :
              M (M.Val i32.t);
            fun γ =>
              (let* α0 := M.read γ in
              match α0 with
              | core.result.Result.Err _ =>
                let γ0_0 := γ.["Err.0"] in
                let* e := M.copy γ0_0 in
                let* α0 : core.num.error.ParseIntError.t := M.read e in
                let* α1 : M.Val never.t :=
                  return_ (core.result.Result.Err α0) in
                let* α2 := M.read α1 in
                let* α3 : i32.t := never_to_any α2 in
                M.alloc α3
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
            let γ0_0 := γ.["Ok.0"] in
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
                M.call (core.fmt.rt.Argument.t::["new_display"] (borrow n)) in
              let* α6 : M.Val (array core.fmt.rt.Argument.t) :=
                M.alloc [ α5 ] in
              let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
                M.alloc (borrow α6) in
              let* α8 : ref (slice core.fmt.rt.Argument.t) :=
                M.read (pointer_coercion "Unsize" α7) in
              let* α9 : core.fmt.Arguments.t :=
                M.call (core.fmt.Arguments.t::["new_v1"] α4 α8) in
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
            let γ0_0 := γ.["Err.0"] in
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
                M.call (core.fmt.rt.Argument.t::["new_display"] (borrow e)) in
              let* α6 : M.Val (array core.fmt.rt.Argument.t) :=
                M.alloc [ α5 ] in
              let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
                M.alloc (borrow α6) in
              let* α8 : ref (slice core.fmt.rt.Argument.t) :=
                M.read (pointer_coercion "Unsize" α7) in
              let* α9 : core.fmt.Arguments.t :=
                M.call (core.fmt.Arguments.t::["new_v1"] α4 α8) in
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
      M.call (early_returns.multiply α0 α1) in
    let* α3 : unit := M.call (early_returns.print α2) in
    M.alloc α3 in
  let* _ : M.Val unit :=
    let* α0 : ref str.t := M.read (mk_str "t") in
    let* α1 : ref str.t := M.read (mk_str "2") in
    let* α2 : core.result.Result.t i32.t core.num.error.ParseIntError.t :=
      M.call (early_returns.multiply α0 α1) in
    let* α3 : unit := M.call (early_returns.print α2) in
    M.alloc α3 in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
