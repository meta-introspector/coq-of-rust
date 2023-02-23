(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Error Enum.

Definition inspect (event : WebEvent) : unit :=
  match event with
  | WebEvent.PageLoad =>
    _crate.io._print (_crate::fmt::ImplArguments.new_v1 ["page loaded\n"] []) ;;
    tt
  | WebEvent.PageUnload =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1 ["page unloaded\n"] []) ;;
    tt
  | WebEvent.KeyPress (c) =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1
        ["pressed '";"'.\n"]
        [_crate::fmt::ImplArgumentV1.new_display c]) ;;
    tt
  | WebEvent.Paste (s) =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1
        ["pasted \"";"\".\n"]
        [_crate::fmt::ImplArgumentV1.new_display s]) ;;
    tt
  | {| WebEvent.Click.x := x; WebEvent.Click.y := y; |} =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1
        ["clicked at x=";", y=";".\n"]
        [_crate::fmt::ImplArgumentV1.new_display
          x;_crate::fmt::ImplArgumentV1.new_display y]) ;;
    tt ;;
    tt
  end.

Definition main (_ : unit) : unit :=
  let pressed := WebEvent.KeyPress x in
  let pasted := WebEvent.Paste (method "to_owned" "my text") in
  let click := {| WebEvent.Click.x := 20; WebEvent.Click.y := 80; |} in
  let load := WebEvent.PageLoad in
  let unload := WebEvent.PageUnload in
  inspect pressed ;;
  inspect pasted ;;
  inspect click ;;
  inspect load ;;
  inspect unload ;;
  tt.
