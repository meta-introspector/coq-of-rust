(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H' : State.Trait} : M (H := H') unit :=
  let number := 13 in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of number) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "Tell me about "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let* _ :=
    match number with
    | 1 =>
      let* _ :=
        let* α0 := format_arguments::["new_const"] (addr_of [ "One!
" ]) in
        std.io.stdio._print α0 in
      Pure tt
    | (2|3|5|7|11) =>
      let* _ :=
        let* α0 :=
          format_arguments::["new_const"] (addr_of [ "This is a prime
" ]) in
        std.io.stdio._print α0 in
      Pure tt
    | (13|14|15|16|17|18|19) =>
      let* _ :=
        let* α0 := format_arguments::["new_const"] (addr_of [ "A teen
" ]) in
        std.io.stdio._print α0 in
      Pure tt
    | _ =>
      let* _ :=
        let* α0 :=
          format_arguments::["new_const"] (addr_of [ "Ain't special
" ]) in
        std.io.stdio._print α0 in
      Pure tt
    end in
  let boolean := true in
  let* binary :=
    match boolean with
    | false => Pure 0
    | true => Pure 1
    end in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of boolean) in
      let* α1 := format_argument::["new_display"] (addr_of binary) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ ""; " -> "; "
" ])
          (addr_of [ α0; α1 ]) in
      std.io.stdio._print α2 in
    Pure tt in
  Pure tt.
