(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H' : State.Trait} : M (H := H') unit :=
  let* triple :=
    let* α0 := 2.["neg"] in
    Pure (0, α0, 3) in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of triple) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "Tell me about "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  match triple with
  | (0, y, z) =>
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of y) in
      let* α1 := format_argument::["new_debug"] (addr_of z) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ "First is `0`, `y` is "; ", and `z` is "; "
" ])
          (addr_of [ α0; α1 ]) in
      std.io.stdio._print α2 in
    Pure tt
  | (1) =>
    let* _ :=
      let* α0 :=
        format_arguments::["new_const"]
          (addr_of [ "First is `1` and the rest doesn't matter
" ]) in
      std.io.stdio._print α0 in
    Pure tt
  | (_, 2) =>
    let* _ :=
      let* α0 :=
        format_arguments::["new_const"]
          (addr_of [ "last is `2` and the rest doesn't matter
" ]) in
      std.io.stdio._print α0 in
    Pure tt
  | (3, 4) =>
    let* _ :=
      let* α0 :=
        format_arguments::["new_const"]
          (addr_of
            [ "First is `3`, last is `4`, and the rest doesn't matter
" ]) in
      std.io.stdio._print α0 in
    Pure tt
  | _ =>
    let* _ :=
      let* α0 :=
        format_arguments::["new_const"]
          (addr_of [ "It doesn't matter what they are
" ]) in
      std.io.stdio._print α0 in
    Pure tt
  end.
