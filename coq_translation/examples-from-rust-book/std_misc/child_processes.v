(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Command := std.process.Command.
Definition Command := Command.t.

Definition main :=
  ltac:(function (
    let output :=
      (((Command::["new"](| "rustc" |)).["arg"](| "--version"
      |)).["output"](||)).["unwrap_or_else"](|
        fun e =>
          _crate.rt.panic_fmt(|
            format_arguments::["new_v1"](|
              [ "failed to execute process: " ],
              [ format_argument::["new_display"](| e |) ]
            |)
          |)
      |) in
    if (output.["status"].["success"](||) : bool) then
      let s := String::["from_utf8_lossy"](| output.["stdout"] |) in
      let '_ :=
        let '_ :=
          _crate.io._print(|
            format_arguments::["new_v1"](|
              [ "rustc succeeded and stdout was:
" ],
              [ format_argument::["new_display"](| s |) ]
            |)
          |) in
        tt in
      tt
    else
      let s := String::["from_utf8_lossy"](| output.["stderr"] |) in
      let '_ :=
        let '_ :=
          _crate.io._print(|
            format_arguments::["new_v1"](|
              [ "rustc failed and stderr was:
" ],
              [ format_argument::["new_display"](| s |) ]
            |)
          |) in
        tt in
      tt
    : unit)).
