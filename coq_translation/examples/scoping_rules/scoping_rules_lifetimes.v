(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H : State.Trait} (_ : unit) : M (H := H) unit :=
  let i := 3 in
  let* _ :=
    let borrow1 := addr_of i in
    let* _ :=
      let* _ :=
        let* α0 := format_argument::["new_display"] (addr_of borrow1) in
        let* α1 :=
          format_arguments::["new_v1"]
            (addr_of [ "borrow1: "; "
" ])
            (addr_of [ α0 ]) in
        std.io.stdio._print α1 in
      Pure tt in
    Pure tt in
  let borrow2 := addr_of i in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of borrow2) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "borrow2: "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  Pure tt.
