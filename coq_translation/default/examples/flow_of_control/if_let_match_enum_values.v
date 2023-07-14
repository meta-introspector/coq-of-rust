(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Foo.
  Inductive t : Set :=
  | Bar
  | Baz
  | Qux (_ : u32).
End Foo.
Definition Foo := Foo.t.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H : State.Trait} (_ : unit) : M (H := H) unit :=
  let a := if_let_match_enum_values.Foo.Bar in
  let b := if_let_match_enum_values.Foo.Baz in
  let c := if_let_match_enum_values.Foo.Qux 100 in
  let* _ :=
    let* α0 := let_if if_let_match_enum_values.Foo.Bar := a in
    if (α0 : bool) then
      let* _ :=
        let* _ :=
          let* α0 :=
            format_arguments::["new_const"] (addr_of [ "a is foobar
" ]) in
          std.io.stdio._print α0 in
        Pure tt in
      Pure tt
    else
      Pure tt in
  let* _ :=
    let* α0 := let_if if_let_match_enum_values.Foo.Bar := b in
    if (α0 : bool) then
      let* _ :=
        let* _ :=
          let* α0 :=
            format_arguments::["new_const"] (addr_of [ "b is foobar
" ]) in
          std.io.stdio._print α0 in
        Pure tt in
      Pure tt
    else
      Pure tt in
  let* _ :=
    let* α0 := let_if if_let_match_enum_values.Foo.Qux value := c in
    if (α0 : bool) then
      let* _ :=
        let* _ :=
          let* α0 := format_argument::["new_display"] (addr_of value) in
          let* α1 :=
            format_arguments::["new_v1"]
              (addr_of [ "c is "; "
" ])
              (addr_of [ α0 ]) in
          std.io.stdio._print α1 in
        Pure tt in
      Pure tt
    else
      Pure tt in
  let* α0 := let_if if_let_match_enum_values.Foo.Qux (100 as value) := c in
  if (α0 : bool) then
    let* _ :=
      let* _ :=
        let* α0 :=
          format_arguments::["new_const"] (addr_of [ "c is one hundred
" ]) in
        std.io.stdio._print α0 in
      Pure tt in
    Pure tt
  else
    Pure tt.
