(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Temperature.
  Inductive t : Set :=
  | Celsius (_ : i32.t)
  | Fahrenheit (_ : i32.t).
End Temperature.

(*
fn main() {
    let temperature = Temperature::Celsius(35);
    // ^ TODO try different values for `temperature`

    match temperature {
        Temperature::Celsius(t) if t > 30 => println!("{}C is above 30 Celsius", t),
        // The `if condition` part ^ is a guard
        Temperature::Celsius(t) => println!("{}C is below 30 Celsius", t),

        Temperature::Fahrenheit(t) if t > 86 => println!("{}F is above 86 Fahrenheit", t),
        Temperature::Fahrenheit(t) => println!("{}F is below 86 Fahrenheit", t),
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* temperature : M.Val match_guards.Temperature.t :=
    let* α0 : M.Val i32.t := M.alloc 35 in
    let* α1 : i32.t := M.read α0 in
    M.alloc (match_guards.Temperature.Celsius α1) in
  let* α0 : match_guards.Temperature.t := M.read temperature in
  let* α0 : M.Val unit :=
    match α0 with
    | match_guards.Temperature.Celsius t =>
      let* t := M.alloc t in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str ""; mk_str "C is above 30 Celsius
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (ref (array (ref str.t))) := M.alloc α1 in
        let* α3 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α2 in
        let* α4 : ref (slice (ref str.t)) := M.read α3 in
        let* α5 : ref i32.t := borrow t in
        let* α6 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_display"] α5 in
        let* α7 : M.Val core.fmt.rt.Argument.t := M.alloc α6 in
        let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
        let* α9 : ref (array core.fmt.rt.Argument.t) := borrow α8 in
        let* α10 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α9 in
        let* α11 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α10 in
        let* α12 : ref (slice core.fmt.rt.Argument.t) := M.read α11 in
        let* α13 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α4 α12 in
        let* α14 : unit := std.io.stdio._print α13 in
        M.alloc α14 in
      M.alloc tt
    | match_guards.Temperature.Celsius t =>
      let* t := M.alloc t in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str ""; mk_str "C is below 30 Celsius
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (ref (array (ref str.t))) := M.alloc α1 in
        let* α3 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α2 in
        let* α4 : ref (slice (ref str.t)) := M.read α3 in
        let* α5 : ref i32.t := borrow t in
        let* α6 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_display"] α5 in
        let* α7 : M.Val core.fmt.rt.Argument.t := M.alloc α6 in
        let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
        let* α9 : ref (array core.fmt.rt.Argument.t) := borrow α8 in
        let* α10 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α9 in
        let* α11 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α10 in
        let* α12 : ref (slice core.fmt.rt.Argument.t) := M.read α11 in
        let* α13 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α4 α12 in
        let* α14 : unit := std.io.stdio._print α13 in
        M.alloc α14 in
      M.alloc tt
    | match_guards.Temperature.Fahrenheit t =>
      let* t := M.alloc t in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str ""; mk_str "F is above 86 Fahrenheit
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (ref (array (ref str.t))) := M.alloc α1 in
        let* α3 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α2 in
        let* α4 : ref (slice (ref str.t)) := M.read α3 in
        let* α5 : ref i32.t := borrow t in
        let* α6 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_display"] α5 in
        let* α7 : M.Val core.fmt.rt.Argument.t := M.alloc α6 in
        let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
        let* α9 : ref (array core.fmt.rt.Argument.t) := borrow α8 in
        let* α10 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α9 in
        let* α11 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α10 in
        let* α12 : ref (slice core.fmt.rt.Argument.t) := M.read α11 in
        let* α13 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α4 α12 in
        let* α14 : unit := std.io.stdio._print α13 in
        M.alloc α14 in
      M.alloc tt
    | match_guards.Temperature.Fahrenheit t =>
      let* t := M.alloc t in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str ""; mk_str "F is below 86 Fahrenheit
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (ref (array (ref str.t))) := M.alloc α1 in
        let* α3 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α2 in
        let* α4 : ref (slice (ref str.t)) := M.read α3 in
        let* α5 : ref i32.t := borrow t in
        let* α6 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_display"] α5 in
        let* α7 : M.Val core.fmt.rt.Argument.t := M.alloc α6 in
        let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
        let* α9 : ref (array core.fmt.rt.Argument.t) := borrow α8 in
        let* α10 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α9 in
        let* α11 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α10 in
        let* α12 : ref (slice core.fmt.rt.Argument.t) := M.read α11 in
        let* α13 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α4 α12 in
        let* α14 : unit := std.io.stdio._print α13 in
        M.alloc α14 in
      M.alloc tt
    end in
  M.read α0.
