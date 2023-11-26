(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() -> Result<(), ParseIntError> {
    let number_str = "10";
    let number = match number_str.parse::<i32>() {
        Ok(number) => number,
        Err(e) => return Err(e),
    };
    println!("{}", number);
    Ok(())
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main
    : M (core.result.Result.t unit core.num.error.ParseIntError.t) :=
  let return_ :=
    M.return_ (R := core.result.Result.t unit core.num.error.ParseIntError.t) in
  M.function_body
    (let* number_str : M.Val (ref str.t) := M.copy (mk_str "10") in
    let* number : M.Val i32.t :=
      let* α0 := M.read number_str in
      let* α1 : M.Val str.t := deref α0 in
      let* α2 : ref str.t := borrow α1 in
      let* α3 : core.result.Result.t i32.t core.num.error.ParseIntError.t :=
        str.t::["parse"] α2 in
      let* α4 :
          M.Val (core.result.Result.t i32.t core.num.error.ParseIntError.t) :=
        M.alloc α3 in
      let* α5 := M.read α4 in
      let* α6 : M.Val i32.t :=
        match α5 with
        | core.result.Result.Ok number =>
          let* number := M.alloc number in
          M.pure number
        | core.result.Result.Err e =>
          let* e := M.alloc e in
          let* α0 := M.read e in
          let* α1 : M.Val never.t := return_ (core.result.Result.Err α0) in
          never_to_any α1
        end in
      M.copy α6 in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str ""; mk_str "
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 : ref i32.t := borrow number in
        let* α8 : M.Val i32.t := deref α7 in
        let* α9 : ref i32.t := borrow α8 in
        let* α10 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_display"] α9 in
        let* α11 : M.Val core.fmt.rt.Argument.t := M.alloc α10 in
        let* α12 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α11 ] in
        let* α13 : ref (array core.fmt.rt.Argument.t) := borrow α12 in
        let* α14 : M.Val (array core.fmt.rt.Argument.t) := deref α13 in
        let* α15 : ref (array core.fmt.rt.Argument.t) := borrow α14 in
        let* α16 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α15 in
        let* α17 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α16 in
        let* α18 := M.read α17 in
        let* α19 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α6 α18 in
        let* α20 : unit := std.io.stdio._print α19 in
        M.alloc α20 in
      M.alloc tt in
    M.alloc (core.result.Result.Ok tt)).
