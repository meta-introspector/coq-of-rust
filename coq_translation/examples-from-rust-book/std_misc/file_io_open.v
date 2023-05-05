(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module File := std.fs.File.
Definition File := File.t.

Import std.io.prelude.

Module Path := std.path.Path.
Definition Path := Path.t.

Definition main :=
  ltac:(function (
    let path := Path::["new"](| "hello.txt" |) in
    let display := path.["display"](||) in
    let file :=
      match File::["open"](| path |) with
      | Err why =>
        _crate.rt.panic_fmt(|
          format_arguments::["new_v1"](|
            [ "couldn't open "; ": " ],
            [
              format_argument::["new_display"](| display |);
              format_argument::["new_display"](| why |)
            ]
          |)
        |)
      | Ok file => file
      end in
    let s := String::["new"](||) in
    match file.["read_to_string"](| s |) with
    | Err why =>
      _crate.rt.panic_fmt(|
        format_arguments::["new_v1"](|
          [ "couldn't read "; ": " ],
          [
            format_argument::["new_display"](| display |);
            format_argument::["new_display"](| why |)
          ]
        |)
      |)
    | Ok _ =>
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ ""; " contains:
" ],
            [
              format_argument::["new_display"](| display |);
              format_argument::["new_display"](| s |)
            ]
          |)
        |) in
      tt
    end
    : unit)).
