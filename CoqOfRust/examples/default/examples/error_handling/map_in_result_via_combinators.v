(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn multiply(first_number_str: &str, second_number_str: &str) -> Result<i32, ParseIntError> {
    first_number_str.parse::<i32>().and_then(|first_number| {
        second_number_str
            .parse::<i32>()
            .map(|second_number| first_number * second_number)
    })
}
*)
Definition multiply
    (first_number_str : ref str.t)
    (second_number_str : ref str.t)
    : M (core.result.Result.t i32.t core.num.error.ParseIntError.t) :=
  let* first_number_str : M.Val (ref str.t) := M.alloc first_number_str in
  let* second_number_str : M.Val (ref str.t) := M.alloc second_number_str in
  let* α0 : ref str.t := M.read first_number_str in
  let* α1 : core.result.Result.t i32.t core.num.error.ParseIntError.t :=
    M.call (str.t::["parse"] α0) in
  let* α2 : type not implemented :=
    M.read
      (let* α0 : ref str.t := M.read second_number_str in
      let* α1 : core.result.Result.t i32.t core.num.error.ParseIntError.t :=
        M.call (str.t::["parse"] α0) in
      let* α2 : type not implemented :=
        M.read
          (let* α0 : i32.t := M.read first_number in
          let* α1 : i32.t := M.read second_number in
          let* α2 : i32.t := BinOp.Panic.mul α0 α1 in
          M.alloc α2) in
      let* α3 : core.result.Result.t i32.t core.num.error.ParseIntError.t :=
        M.call
          ((core.result.Result.t i32.t core.num.error.ParseIntError.t)::["map"]
            α1
            α2) in
      M.alloc α3) in
  M.call
    ((core.result.Result.t i32.t core.num.error.ParseIntError.t)::["and_then"]
      α1
      α2).

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
  let* result :
      M.Val (core.result.Result.t i32.t core.num.error.ParseIntError.t) :=
    M.alloc result in
  let* α0 : core.result.Result.t i32.t core.num.error.ParseIntError.t :=
    M.read result in
  let* α1 : M.Val unit :=
    match α0 with
    | core.result.Result.Ok n =>
      let* n := M.alloc n in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "n is "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow n)) in
        let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
        let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
        let* α6 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α5) in
        let* α7 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α6) in
        let* α8 : core.fmt.Arguments.t :=
          M.call (core.fmt.Arguments.t::["new_v1"] α2 α7) in
        let* α9 : unit := M.call (std.io.stdio._print α8) in
        M.alloc α9 in
      M.alloc tt
    | core.result.Result.Err e =>
      let* e := M.alloc e in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "Error: "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow e)) in
        let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
        let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
        let* α6 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α5) in
        let* α7 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α6) in
        let* α8 : core.fmt.Arguments.t :=
          M.call (core.fmt.Arguments.t::["new_v1"] α2 α7) in
        let* α9 : unit := M.call (std.io.stdio._print α8) in
        M.alloc α9 in
      M.alloc tt
    end in
  M.read α1.

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
Definition main : M unit :=
  let* twenty :
      M.Val (core.result.Result.t i32.t core.num.error.ParseIntError.t) :=
    let* α0 : ref str.t := M.read (mk_str "10") in
    let* α1 : ref str.t := M.read (mk_str "2") in
    let* α2 : core.result.Result.t i32.t core.num.error.ParseIntError.t :=
      M.call (map_in_result_via_combinators.multiply α0 α1) in
    M.alloc α2 in
  let* _ : M.Val unit :=
    let* α0 : core.result.Result.t i32.t core.num.error.ParseIntError.t :=
      M.read twenty in
    let* α1 : unit := M.call (map_in_result_via_combinators.print α0) in
    M.alloc α1 in
  let* tt : M.Val (core.result.Result.t i32.t core.num.error.ParseIntError.t) :=
    let* α0 : ref str.t := M.read (mk_str "t") in
    let* α1 : ref str.t := M.read (mk_str "2") in
    let* α2 : core.result.Result.t i32.t core.num.error.ParseIntError.t :=
      M.call (map_in_result_via_combinators.multiply α0 α1) in
    M.alloc α2 in
  let* _ : M.Val unit :=
    let* α0 : core.result.Result.t i32.t core.num.error.ParseIntError.t :=
      M.read tt in
    let* α1 : unit := M.call (map_in_result_via_combinators.print α0) in
    M.alloc α1 in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.