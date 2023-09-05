(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition multiply
    `{H' : State.Trait}
    (first_number_str : ref str)
    (second_number_str : ref str)
    : M (H := H') (core.result.Result i32 core.num.error.ParseIntError) :=
  let* first_number :=
    let* α0 := first_number_str.["parse"] : M i32 in
    let* α1 := α0.["branch"] in
    match α1 with
    | LanguageItem.Break residual =>
      let* α0 := residual.["from_residual"] in
      Return α0
    | LanguageItem.Continue val => Pure val
    end in
  let* second_number :=
    let* α0 := second_number_str.["parse"] : M i32 in
    let* α1 := α0.["branch"] in
    match α1 with
    | LanguageItem.Break residual =>
      let* α0 := residual.["from_residual"] in
      Return α0
    | LanguageItem.Continue val => Pure val
    end in
  let* α0 := first_number.["mul"] second_number in
  Pure (core.result.Result.Ok α0).

Definition print
    `{H' : State.Trait}
    (result : core.result.Result i32 core.num.error.ParseIntError)
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
    let* α0 := introducing_question_mark.multiply "10" "2" in
    introducing_question_mark.print α0 in
  let* _ :=
    let* α0 := introducing_question_mark.multiply "t" "2" in
    introducing_question_mark.print α0 in
  Pure tt.
