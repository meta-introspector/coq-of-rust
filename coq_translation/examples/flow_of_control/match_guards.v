(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Temperature.
  Inductive t : Set :=
  | Celsius (_ : i32)
  | Fahrenheit (_ : i32).
End Temperature.
Definition Temperature := Temperature.t.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H : State.Trait} (_ : unit) : M (H := H) unit :=
  let temperature := match_guards.Temperature.Celsius 35 in
  match temperature with
  | match_guards.Temperature.Celsius t =>
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of t) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ ""; "C is above 30 Celsius
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt
  | match_guards.Temperature.Celsius t =>
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of t) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ ""; "C is below 30 Celsius
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt
  | match_guards.Temperature.Fahrenheit t =>
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of t) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ ""; "F is above 86 Fahrenheit
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt
  | match_guards.Temperature.Fahrenheit t =>
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of t) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ ""; "F is below 86 Fahrenheit
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt
  end.
