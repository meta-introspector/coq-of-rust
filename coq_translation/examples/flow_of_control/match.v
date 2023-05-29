(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let number := 13 in
  let* α0 := format_argument::["new_display"] (deref number) in
  let* α1 :=
    format_arguments::["new_v1"]
      (deref [ "Tell me about "; "
" ])
      (deref [ α0 ]) in
  let* _ := _crate.io._print α1 in
  let _ := tt in
  let* _ :=
    match number with
    | 1 =>
      let* α0 := format_arguments::["new_const"] (deref [ "One!
" ]) in
      let* _ := _crate.io._print α0 in
      Pure tt
    | (2|3|5|7|11) =>
      let* α0 :=
        format_arguments::["new_const"] (deref [ "This is a prime
" ]) in
      let* _ := _crate.io._print α0 in
      Pure tt
    | (13|14|15|16|17|18|19) =>
      let* α0 := format_arguments::["new_const"] (deref [ "A teen
" ]) in
      let* _ := _crate.io._print α0 in
      Pure tt
    | _ =>
      let* α0 := format_arguments::["new_const"] (deref [ "Ain't special
" ]) in
      let* _ := _crate.io._print α0 in
      Pure tt
    end in
  let boolean := true in
  let* binary :=
    match boolean with
    | false => Pure 0
    | true => Pure 1
    end in
  let* α2 := format_argument::["new_display"] (deref boolean) in
  let* α3 := format_argument::["new_display"] (deref binary) in
  let* α4 :=
    format_arguments::["new_v1"]
      (deref [ ""; " -> "; "
" ])
      (deref [ α2; α3 ]) in
  let* _ := _crate.io._print α4 in
  let _ := tt in
  Pure tt.
