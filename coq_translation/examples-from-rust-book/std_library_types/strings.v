(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition main :=
  let return_type := unit in
  ltac:(function (
    let pangram := "the quick brown fox jumps over the lazy dog" in
    let _ : unit :=
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "Pangram: "; "
" ],
            [ format_argument::["new_display"](| pangram |) ]
          |)
        |) in
      tt in
    let _ : unit :=
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_const"](| [ "Words in reverse
" ] |)
        |) in
      tt in
    let _ : unit :=
      match LangItem(| pangram.["split_whitespace"](||).["rev"](||) |) with
      | iter =>
        loop
          let _ : unit :=
            match LangItem(| iter |) with
            | None => M.Break
            | Some {| Some.0 := word; |} =>
              let _ : unit :=
                let _ : unit :=
                  _crate.io._print(|
                    format_arguments::["new_v1"](|
                      [ "> "; "
" ],
                      [ format_argument::["new_display"](| word |) ]
                    |)
                  |) in
                tt in
              tt
            end in
          tt
          from
          for
      end in
    let chars := pangram.["chars"](||).["collect"](||) in
    let _ : unit := chars.["sort"](||) in
    let _ : unit := chars.["dedup"](||) in
    let string := String::["new"](||) in
    let _ : unit :=
      match LangItem(| chars |) with
      | iter =>
        loop
          let _ : unit :=
            match LangItem(| iter |) with
            | None => M.Break
            | Some {| Some.0 := c; |} =>
              let _ : unit := string.["push"](| c |) in
              let _ : unit := string.["push_str"](| ", " |) in
              tt
            end in
          tt
          from
          for
      end in
    let chars_to_trim := [ " "%char; ","%char ] in
    let trimmed_str := string.["trim_matches"](| chars_to_trim |) in
    let _ : unit :=
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "Used characters: "; "
" ],
            [ format_argument::["new_display"](| trimmed_str |) ]
          |)
        |) in
      tt in
    let alice := String::["from"](| "I like dogs" |) in
    let bob := alice.["replace"](| "dog", "cat" |) in
    let _ : unit :=
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "Alice says: "; "
" ],
            [ format_argument::["new_display"](| alice |) ]
          |)
        |) in
      tt in
    let _ : unit :=
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "Bob says: "; "
" ],
            [ format_argument::["new_display"](| bob |) ]
          |)
        |) in
      tt in
    tt
  : return_type)).
