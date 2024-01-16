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
  M.catch_return
    (let* number_str : M.Val (ref str.t) := M.copy (mk_str "10") in
    let* number : M.Val i32.t :=
      let* α0 : ref str.t := M.read number_str in
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
                let γ0_0 := core.result.Result.Get_Ok_0 γ in
                let* number := M.copy γ0_0 in
                M.pure number
              | _ => M.break_match
              end) :
              M (M.Val i32.t);
            fun γ =>
              (let* α0 := M.read γ in
              match α0 with
              | core.result.Result.Err _ =>
                let γ0_0 := core.result.Result.Get_Err_0 γ in
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
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : ref str.t := M.read (mk_str "") in
        let* α1 : ref str.t := M.read (mk_str "
") in
        let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
        let* α3 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow number)) in
        let* α4 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α3 ] in
        let* α5 : core.fmt.Arguments.t :=
          M.call
            (core.fmt.Arguments.t::["new_v1"]
              (pointer_coercion "Unsize" (borrow α2))
              (pointer_coercion "Unsize" (borrow α4))) in
        let* α6 : unit := M.call (std.io.stdio._print α5) in
        M.alloc α6 in
      M.alloc tt in
    let* α0 :
        M.Val (core.result.Result.t unit core.num.error.ParseIntError.t) :=
      M.alloc (core.result.Result.Ok tt) in
    M.read α0).
