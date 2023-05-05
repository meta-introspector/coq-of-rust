(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module WebEvent.
  Module Click.
    Record t : Set := {
      x : i64;
      y : i64;
    }.
  End Click.
  
  Inductive t : Set :=
  | PageLoad
  | PageUnload
  | KeyPress (_ : char)
  | Paste (_ : String)
  | Click (_ : Click.t).
End WebEvent.
Definition WebEvent := WebEvent.t.

Definition inspect (event : WebEvent) :=
  let return_type := unit in
  ltac:(function (
    match event with
    | WebEvent.PageLoad =>
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_const"](|
            [
              "page loaded, r" ++
                String.String "233" ("f" ++ String.String "233" "
")
            ]
          |)
        |) in
      tt
    | WebEvent.PageUnload =>
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_const"](| [ "page unloaded
" ] |)
        |) in
      tt
    | WebEvent.KeyPress c =>
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "pressed '"; "'.
" ],
            [ format_argument::["new_display"](| c |) ]
          |)
        |) in
      tt
    | WebEvent.Paste s =>
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "pasted ""; "".
" ],
            [ format_argument::["new_display"](| s |) ]
          |)
        |) in
      tt
    | WebEvent.Click {| WebEvent.Click.x := x; WebEvent.Click.y := y; |} =>
      let '_ :=
        let '_ :=
          _crate.io._print(|
            format_arguments::["new_v1"](|
              [ "clicked at x="; ", y="; ".
" ],
              [
                format_argument::["new_display"](| x |);
                format_argument::["new_display"](| y |)
              ]
            |)
          |) in
        tt in
      tt
    end
  : return_type)).

Definition main :=
  let return_type := unit in
  ltac:(function (
    let pressed := WebEvent.KeyPress "x"%char in
    let pasted := WebEvent.Paste "my text".["to_owned"](||) in
    let click :=
      WebEvent.Click {| WebEvent.Click.x := 20; WebEvent.Click.y := 80; |} in
    let load := WebEvent.PageLoad in
    let unload := WebEvent.PageUnload in
    let '_ := inspect(| pressed |) in
    let '_ := inspect(| pasted |) in
    let '_ := inspect(| click |) in
    let '_ := inspect(| load |) in
    let '_ := inspect(| unload |) in
    tt
  : return_type)).
