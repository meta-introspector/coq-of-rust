(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H' : State.Trait} : M (H := H') unit :=
  let* haystack :=
    let* α0 := alloc.boxed.Box::["new"] [ 1; 2; 3 ] in
    (Slice _)::["into_vec"] α0 in
  let contains := fun needle => haystack.["contains"] needle in
  let* _ :=
    let* _ :=
      let* α0 := contains (addr_of 1) in
      let* α1 := format_argument::["new_display"] (addr_of α0) in
      let* α2 :=
        format_arguments::["new_v1"] (addr_of [ ""; "
" ]) (addr_of [ α1 ]) in
      std.io.stdio._print α2 in
    Pure tt in
  let* _ :=
    let* _ :=
      let* α0 := contains (addr_of 4) in
      let* α1 := format_argument::["new_display"] (addr_of α0) in
      let* α2 :=
        format_arguments::["new_v1"] (addr_of [ ""; "
" ]) (addr_of [ α1 ]) in
      std.io.stdio._print α2 in
    Pure tt in
  Pure tt.
