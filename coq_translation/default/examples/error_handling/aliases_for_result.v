(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition AliasedResult (T : Set) : Set :=
  core.result.Result T core.num.error.ParseIntError.

Definition multiply
    `{H' : State.Trait}
    (arguments : (ref str) * (ref str))
    : M (H := H') (aliases_for_result.AliasedResult i32) :=
  let '(first_number_str, second_number_str) := arguments in
  let* α0 := first_number_str.["parse"] : M i32 in
  α0.["and_then"]
    (fun first_number =>
      let* α0 := second_number_str.["parse"] : M i32 in
      α0.["map"] (fun second_number => first_number.["mul"] second_number)).

Definition print
    `{H' : State.Trait}
    (result : aliases_for_result.AliasedResult i32)
    : M (H := H') unit :=
  match result with
  | core.result.Result.Ok n =>
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of n) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "n is "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt
  | core.result.Result.Err e =>
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of e) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "Error: "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt
  end.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H' : State.Trait} : M (H := H') unit :=
  let* _ :=
    let* α0 := aliases_for_result.multiply "10" "2" in
    aliases_for_result.print α0 in
  let* _ :=
    let* α0 := aliases_for_result.multiply "t" "2" in
    aliases_for_result.print α0 in
  Pure tt.
