(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  let reference := 4 in
  let _ :=
    match reference with
    | val =>
      let _ :=
        _crate.io._print
          (format_arguments::["new_v1"]
            [ "Got a value via destructuring: "; "
" ]
            [ format_argument::["new_debug"] val ]) in
      tt
    end in
  let _ :=
    match reference.["deref"] with
    | val =>
      let _ :=
        _crate.io._print
          (format_arguments::["new_v1"]
            [ "Got a value via dereferencing: "; "
" ]
            [ format_argument::["new_debug"] val ]) in
      tt
    end in
  let _not_a_reference := 3 in
  let _is_a_reference := 3 in
  let value := 5 in
  let mut_value := 6 in
  let _ :=
    match value with
    | r =>
      let _ :=
        _crate.io._print
          (format_arguments::["new_v1"]
            [ "Got a reference to a value: "; "
" ]
            [ format_argument::["new_debug"] r ]) in
      tt
    end in
  match mut_value with
  | m =>
    let _ := m.["deref"].["add_assign"] 10 in
    let _ :=
      let _ :=
        _crate.io._print
          (format_arguments::["new_v1"]
            [ "We added 10. `mut_value`: "; "
" ]
            [ format_argument::["new_debug"] m ]) in
      tt in
    tt
  end.
