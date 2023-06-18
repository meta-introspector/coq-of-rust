(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition message : ref str := run (Pure "Hello, World!").

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of test0.message) in
      let* α1 :=
        format_arguments::["new_v1"] (addr_of [ ""; "
" ]) (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  let number := core.option.Option.Some 7 in
  let letter := core.option.Option.None in
  let emoticon := core.option.Option.None in
  let* _ :=
    let* α0 := let_if core.option.Option.Some i := number in
    if (α0 : bool) then
      let* _ :=
        let* _ :=
          let* α0 := format_argument::["new_debug"] (addr_of i) in
          let* α1 :=
            format_arguments::["new_v1"]
              (addr_of [ "Matched "; "!
" ])
              (addr_of [ α0 ]) in
          std.io.stdio._print α1 in
        Pure tt in
      Pure tt
    else
      Pure tt in
  let* _ :=
    let* α0 := let_if core.option.Option.Some j := letter in
    if (α0 : bool) then
      let* _ :=
        let* _ :=
          let* α0 := format_argument::["new_debug"] (addr_of j) in
          let* α1 :=
            format_arguments::["new_v1"]
              (addr_of [ "Matched "; "!
" ])
              (addr_of [ α0 ]) in
          std.io.stdio._print α1 in
        Pure tt in
      Pure tt
    else
      let* _ :=
        let* _ :=
          let* α0 :=
            format_arguments::["new_const"]
              (addr_of [ "Didn't match a number. Let's go with a letter!
" ]) in
          std.io.stdio._print α0 in
        Pure tt in
      Pure tt in
  let i_like_letters := false in
  let* α0 := let_if core.option.Option.Some i := emoticon in
  if (α0 : bool) then
    let* _ :=
      let* _ :=
        let* α0 := format_argument::["new_debug"] (addr_of i) in
        let* α1 :=
          format_arguments::["new_v1"]
            (addr_of [ "Matched "; "!
" ])
            (addr_of [ α0 ]) in
        std.io.stdio._print α1 in
      Pure tt in
    Pure tt
  else
    if (i_like_letters : bool) then
      let* _ :=
        let* _ :=
          let* α0 :=
            format_arguments::["new_const"]
              (addr_of [ "Didn't match a number. Let's go with a letter!
" ]) in
          std.io.stdio._print α0 in
        Pure tt in
      Pure tt
    else
      let* _ :=
        let* _ :=
          let* α0 :=
            format_arguments::["new_const"]
              (addr_of
                [ "I don't like letters. Let's go with an emoticon :)!
" ]) in
          std.io.stdio._print α0 in
        Pure tt in
      Pure tt.
