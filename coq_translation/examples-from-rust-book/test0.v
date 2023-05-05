(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition message : ref str := "Hello, World!".

Definition main :=
  ltac:(function (
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ ""; "
" ],
            [ format_argument::["new_display"](| message |) ]
          |)
        |) in
      tt in
    let number := Some 7 in
    let letter := None in
    let emoticon := None in
    let '_ :=
      if (let_if Some i := number : bool) then
        let '_ :=
          let '_ :=
            _crate.io._print(|
              format_arguments::["new_v1"](|
                [ "Matched "; "!
" ],
                [ format_argument::["new_debug"](| i |) ]
              |)
            |) in
          tt in
        tt
      else
        tt in
    let '_ :=
      if (let_if Some j := letter : bool) then
        let '_ :=
          let '_ :=
            _crate.io._print(|
              format_arguments::["new_v1"](|
                [ "Matched "; "!
" ],
                [ format_argument::["new_debug"](| j |) ]
              |)
            |) in
          tt in
        tt
      else
        let '_ :=
          let '_ :=
            _crate.io._print(|
              format_arguments::["new_const"](|
                [ "Didn't match a number. Let's go with a letter!
" ]
              |)
            |) in
          tt in
        tt in
    let i_like_letters := false in
    if (let_if Some i := emoticon : bool) then
      let '_ :=
        let '_ :=
          _crate.io._print(|
            format_arguments::["new_v1"](|
              [ "Matched "; "!
" ],
              [ format_argument::["new_debug"](| i |) ]
            |)
          |) in
        tt in
      tt
    else
      if (i_like_letters : bool) then
        let '_ :=
          let '_ :=
            _crate.io._print(|
              format_arguments::["new_const"](|
                [ "Didn't match a number. Let's go with a letter!
" ]
              |)
            |) in
          tt in
        tt
      else
        let '_ :=
          let '_ :=
            _crate.io._print(|
              format_arguments::["new_const"](|
                [ "I don't like letters. Let's go with an emoticon :)!
" ]
              |)
            |) in
          tt in
        tt
    : unit)).
