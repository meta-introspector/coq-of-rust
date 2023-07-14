(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition multiply
    `{H : State.Trait}
    (first_number_str : ref str)
    (second_number_str : ref str)
    : M (H := H) (core.result.Result i32 core.num.error.ParseIntError) :=
  let* α0 := first_number_str.["parse"] in
  match α0 with
  | core.result.Result.Ok first_number =>
    let* α0 := second_number_str.["parse"] in
    match α0 with
    | core.result.Result.Ok second_number =>
      let* α0 := first_number.["mul"] second_number in
      Pure (core.result.Result.Ok α0)
    | core.result.Result.Err e => Pure (core.result.Result.Err e)
    end
  | core.result.Result.Err e => Pure (core.result.Result.Err e)
  end.

Definition print
    `{H : State.Trait}
    (result : core.result.Result i32 core.num.error.ParseIntError)
    : M (H := H) unit :=
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
Definition main `{H : State.Trait} (_ : unit) : M (H := H) unit :=
  let* twenty := map_in_result_via_match.multiply "10" "2" in
  let* _ := map_in_result_via_match.print twenty in
  let* tt := map_in_result_via_match.multiply "t" "2" in
  let* _ := map_in_result_via_match.print tt in
  Pure tt.
