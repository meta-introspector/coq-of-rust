(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H' : State.Trait} : M (H := H') unit :=
  let* _ :=
    let* val := 1.["add"] 2 in
    let* _ :=
      let* _ :=
        let* α0 := format_argument::["new_display"] (addr_of val) in
        let* α1 :=
          format_arguments::["new_v1"]
            (addr_of [ "1 + 2 = "; "
" ])
            (addr_of [ α0 ]) in
        std.io.stdio._print α1 in
      Pure tt in
    Pure tt in
  let* _ :=
    let* val := 3.["add"] 4 in
    let* _ :=
      let* _ :=
        let* α0 := format_argument::["new_display"] (addr_of val) in
        let* α1 :=
          format_arguments::["new_v1"]
            (addr_of [ "3 + 4 = "; "
" ])
            (addr_of [ α0 ]) in
        std.io.stdio._print α1 in
      Pure tt in
    Pure tt in
  let* val :=
    let* α0 := 2.["mul"] 3 in
    α0.["add"] 1 in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of val) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "(2 * 3) + 1 = "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  Pure tt.
