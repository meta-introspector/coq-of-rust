(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Import std.io.prelude.

Module Command := std.process.Command.
Definition Command := Command.t.

Module Stdio := std.process.Stdio.
Definition Stdio := Stdio.t.

Definition PANGRAM : ref str := "the quick brown fox jumped over the lazy dog
".

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  let process :=
    match
      (((Command::["new"] "wc").["stdin"] (Stdio::["piped"] tt)).["stdout"]
          (Stdio::["piped"] tt)).["spawn"]
    with
    | Err why =>
      _crate.rt.panic_fmt
        (format_arguments::["new_v1"]
          [ "couldn't spawn wc: " ]
          [ format_argument::["new_display"] why ])
    | Ok process => process
    end in
  let _ :=
    match process.["stdin"].["unwrap"].["write_all"] PANGRAM.["as_bytes"] with
    | Err why =>
      _crate.rt.panic_fmt
        (format_arguments::["new_v1"]
          [ "couldn't write to wc stdin: " ]
          [ format_argument::["new_display"] why ])
    | Ok _ =>
      let _ :=
        _crate.io._print
          (format_arguments::["new_const"] [ "sent pangram to wc
" ]) in
      tt
    end in
  let s := String::["new"] tt in
  match process.["stdout"].["unwrap"].["read_to_string"] s with
  | Err why =>
    _crate.rt.panic_fmt
      (format_arguments::["new_v1"]
        [ "couldn't read wc stdout: " ]
        [ format_argument::["new_display"] why ])
  | Ok _ =>
    let _ :=
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "wc responded with:
" ]
          [ format_argument::["new_display"] s ]) in
    tt
  end.
