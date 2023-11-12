(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn multiply(first_number_str: &str, second_number_str: &str) -> Result<i32, ParseIntError> {
    match first_number_str.parse::<i32>() {
        Ok(first_number) => match second_number_str.parse::<i32>() {
            Ok(second_number) => Ok(first_number * second_number),
            Err(e) => Err(e),
        },
        Err(e) => Err(e),
    }
}
*)
Definition multiply
    (first_number_str : M.Val (ref str.t))
    (second_number_str : M.Val (ref str.t))
    : M (M.Val (core.result.Result.t i32.t core.num.error.ParseIntError.t)) :=
  M.function_body
    (let* α0 : ltac:(refine (M.Val str)) := deref first_number_str in
    let* α1 : ltac:(refine (M.Val (ref str))) := borrow α0 in
    let* α2 :
        ltac:(refine
          (M.Val
            (core.result.Result.t i32.t core.num.error.ParseIntError.t))) :=
      str::["parse"] α1 in
    let* α3 := M.read α2 in
    match α3 with
    | core.result.Result.Ok first_number =>
      let* first_number := M.alloc first_number in
      let* α0 : ltac:(refine (M.Val str)) := deref second_number_str in
      let* α1 : ltac:(refine (M.Val (ref str))) := borrow α0 in
      let* α2 :
          ltac:(refine
            (M.Val
              (core.result.Result.t i32.t core.num.error.ParseIntError.t))) :=
        str::["parse"] α1 in
      let* α3 := M.read α2 in
      match α3 with
      | core.result.Result.Ok second_number =>
        let* second_number := M.alloc second_number in
        let* α0 : ltac:(refine (M.Val i32.t)) :=
          BinOp.mul first_number second_number in
        let* α1 := M.read α0 in
        M.alloc (core.result.Result.Ok α1)
      | core.result.Result.Err e =>
        let* e := M.alloc e in
        let* α0 := M.read e in
        M.alloc (core.result.Result.Err α0)
      end
    | core.result.Result.Err e =>
      let* e := M.alloc e in
      let* α0 := M.read e in
      M.alloc (core.result.Result.Err α0)
    end).

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
    : M (M.Val unit) :=
  M.function_body
    (let* α0 := M.read result in
    match α0 with
    | core.result.Result.Ok n =>
      let* n := M.alloc n in
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc [ mk_str "n is "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref i32.t))) := borrow n in
        let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α3 in
        let* α5 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α4 ] in
        let* α6 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α5 in
        let* α7 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α7 in
        std.io.stdio._print α8 in
      M.alloc tt
    | core.result.Result.Err e =>
      let* e := M.alloc e in
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc [ mk_str "Error: "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref core.num.error.ParseIntError.t))) :=
          borrow e in
        let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α3 in
        let* α5 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α4 ] in
        let* α6 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α5 in
        let* α7 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α7 in
        std.io.stdio._print α8 in
      M.alloc tt
    end).

(*
fn main() {
    // This still presents a reasonable answer.
    let twenty = multiply("10", "2");
    print(twenty);

    // The following now provides a much more helpful error message.
    let tt = multiply("t", "2");
    print(tt);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M (M.Val unit) :=
  M.function_body
    (let* twenty :
        ltac:(refine
          (M.Val
            (core.result.Result.t i32.t core.num.error.ParseIntError.t))) :=
      let* α0 : ltac:(refine (M.Val str)) := deref (mk_str "10") in
      let* α1 : ltac:(refine (M.Val (ref str))) := borrow α0 in
      let* α2 : ltac:(refine (M.Val str)) := deref (mk_str "2") in
      let* α3 : ltac:(refine (M.Val (ref str))) := borrow α2 in
      map_in_result_via_match.multiply α1 α3 in
    let* _ : ltac:(refine (M.Val unit)) :=
      map_in_result_via_match.print twenty in
    let* tt :
        ltac:(refine
          (M.Val
            (core.result.Result.t i32.t core.num.error.ParseIntError.t))) :=
      let* α0 : ltac:(refine (M.Val str)) := deref (mk_str "t") in
      let* α1 : ltac:(refine (M.Val (ref str))) := borrow α0 in
      let* α2 : ltac:(refine (M.Val str)) := deref (mk_str "2") in
      let* α3 : ltac:(refine (M.Val (ref str))) := borrow α2 in
      map_in_result_via_match.multiply α1 α3 in
    let* _ : ltac:(refine (M.Val unit)) := map_in_result_via_match.print tt in
    M.alloc tt).
