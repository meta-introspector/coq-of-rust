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
    : M (M.Val (core.result.Result.t unit core.num.error.ParseIntError.t)) :=
  M.function_body
    (let number_str := mk_str "10" in
    let* number : ltac:(refine (M.Val i32.t)) :=
      let* α0 : ltac:(refine (M.Val str.t)) := deref number_str in
      let* α1 : ltac:(refine (M.Val (ref str.t))) := borrow α0 in
      let* α2 :
          ltac:(refine
            (M.Val
              (core.result.Result.t i32.t core.num.error.ParseIntError.t))) :=
        str.t::["parse"] α1 in
      let* α3 := M.read α2 in
      match α3 with
      | core.result.Result.Ok number =>
        let* number := M.alloc number in
        M.pure number
      | core.result.Result.Err e =>
        let* e := M.alloc e in
        let* α0 := M.read e in
        let* α1 :
            ltac:(refine
              (M.Val
                (core.result.Result.t unit core.num.error.ParseIntError.t))) :=
          M.alloc (core.result.Result.Err α0) in
        let* α2 : ltac:(refine (M.Val never.t)) := M.return_ α1 in
        never_to_any α2
      end in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str ""; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref i32.t))) := borrow number in
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
      M.alloc tt in
    M.alloc (core.result.Result.Ok tt)).
