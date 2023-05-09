(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Path := std.path.Path.
Definition Path := Path.t.

Definition main :=
  let return_type := unit in
  ltac:(function (
    let path := Path::["new"](| "." |) in
    let _display := path.["display"](||) in
    let new_path := path.["join"](| "a" |).["join"](| "b" |) in
    let _ : unit := new_path.["push"](| "c" |) in
    let _ : unit := new_path.["push"](| "myfile.tar.gz" |) in
    let _ : unit := new_path.["set_file_name"](| "package.tgz" |) in
    match new_path.["to_str"](||) with
    | None =>
      _crate.rt.begin_panic(| "new path is not a valid UTF-8 sequence" |)
    | Some s =>
      let _ : unit :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "new path is "; "
" ],
            [ format_argument::["new_display"](| s |) ]
          |)
        |) in
      tt
    end
  : return_type)).
