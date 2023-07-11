(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition multiply
    (first_number_str : ref str)
    (second_number_str : ref str)
    : M (core.result.Result i32 core.num.error.ParseIntError) :=
  let* first_number :=
    let* α0 := first_number_str.["parse"] in
    let* α1 := LangItem α0 in
    match α1 with
    | Break {| Break.0 := residual; |} =>
      let* α0 := LangItem residual in
      Return α0
    | Continue {| Continue.0 := val; |} => Pure val
    end in
  let* second_number :=
    let* α0 := second_number_str.["parse"] in
    let* α1 := LangItem α0 in
    match α1 with
    | Break {| Break.0 := residual; |} =>
      let* α0 := LangItem residual in
      Return α0
    | Continue {| Continue.0 := val; |} => Pure val
    end in
  let* α0 := first_number.["mul"] second_number in
  Pure (core.result.Result.Ok α0).

Definition print
    (result : core.result.Result i32 core.num.error.ParseIntError)
    : M unit :=
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
Definition main (_ : unit) : M unit :=
  let* _ :=
    let* α0 := introducing_question_mark.multiply "10" "2" in
    introducing_question_mark.print α0 in
  let* _ :=
    let* α0 := introducing_question_mark.multiply "t" "2" in
    introducing_question_mark.print α0 in
  Pure tt.