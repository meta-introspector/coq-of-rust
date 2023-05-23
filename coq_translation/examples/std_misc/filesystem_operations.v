(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module fs := std.fs.

Module File := std.fs.File.
Definition File := File.t.

Module OpenOptions := std.fs.OpenOptions.
Definition OpenOptions := OpenOptions.t.

Module io := std.io.

Import std.io.prelude.

Module unix := std.os.unix.

Module Path := std.path.Path.
Definition Path := Path.t.

Definition cat (path : ref Path) : io.Result String :=
  let f :=
    match LangItem (File::["open"] path) with
    | Break {| Break.0 := residual; |} => Return (LangItem residual)
    | Continue {| Continue.0 := val; |} => val
    end in
  let s := String::["new"] tt in
  match f.["read_to_string"] s with
  | Ok _ => Ok s
  | Err e => Err e
  end.

Definition echo (s : ref str) (path : ref Path) : io.Result unit :=
  let f :=
    match LangItem (File::["create"] path) with
    | Break {| Break.0 := residual; |} => Return (LangItem residual)
    | Continue {| Continue.0 := val; |} => val
    end in
  f.["write_all"] s.["as_bytes"].

Definition touch (path : ref Path) : io.Result unit :=
  match
    (((OpenOptions::["new"] tt).["create"] true).["write"] true).["open"] path
  with
  | Ok _ => Ok tt
  | Err e => Err e
  end.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : unit :=
  _crate.io._print (format_arguments::["new_const"] [ "`mkdir a`
" ]) ;;
  tt ;;
  match fs.create_dir "a" with
  | Err why =>
    _crate.io._print
      (format_arguments::["new_v1"]
        [ "! "; "
" ]
        [ format_argument::["new_debug"] why.["kind"] ]) ;;
    tt
  | Ok _ => tt
  end ;;
  _crate.io._print
    (format_arguments::["new_const"] [ "`echo hello > a/b.txt`
" ]) ;;
  tt ;;
  (echo "hello" (Path::["new"] "a/b.txt")).["unwrap_or_else"]
    (fun why =>
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "! "; "
" ]
          [ format_argument::["new_debug"] why.["kind"] ]) ;;
      tt ;;
      tt) ;;
  _crate.io._print (format_arguments::["new_const"] [ "`mkdir -p a/c/d`
" ]) ;;
  tt ;;
  (fs.create_dir_all "a/c/d").["unwrap_or_else"]
    (fun why =>
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "! "; "
" ]
          [ format_argument::["new_debug"] why.["kind"] ]) ;;
      tt ;;
      tt) ;;
  _crate.io._print (format_arguments::["new_const"] [ "`touch a/c/e.txt`
" ]) ;;
  tt ;;
  (touch (Path::["new"] "a/c/e.txt")).["unwrap_or_else"]
    (fun why =>
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "! "; "
" ]
          [ format_argument::["new_debug"] why.["kind"] ]) ;;
      tt ;;
      tt) ;;
  _crate.io._print
    (format_arguments::["new_const"] [ "`ln -s ../b.txt a/c/b.txt`
" ]) ;;
  tt ;;
  if (true : bool) then
    (unix.fs.symlink "../b.txt" "a/c/b.txt").["unwrap_or_else"]
      (fun why =>
        _crate.io._print
          (format_arguments::["new_v1"]
            [ "! "; "
" ]
            [ format_argument::["new_debug"] why.["kind"] ]) ;;
        tt ;;
        tt) ;;
    tt
  else
    tt ;;
  _crate.io._print (format_arguments::["new_const"] [ "`cat a/c/b.txt`
" ]) ;;
  tt ;;
  match cat (Path::["new"] "a/c/b.txt") with
  | Err why =>
    _crate.io._print
      (format_arguments::["new_v1"]
        [ "! "; "
" ]
        [ format_argument::["new_debug"] why.["kind"] ]) ;;
    tt
  | Ok s =>
    _crate.io._print
      (format_arguments::["new_v1"]
        [ "> "; "
" ]
        [ format_argument::["new_display"] s ]) ;;
    tt
  end ;;
  _crate.io._print (format_arguments::["new_const"] [ "`ls a`
" ]) ;;
  tt ;;
  match fs.read_dir "a" with
  | Err why =>
    _crate.io._print
      (format_arguments::["new_v1"]
        [ "! "; "
" ]
        [ format_argument::["new_debug"] why.["kind"] ]) ;;
    tt
  | Ok paths =>
    match LangItem paths with
    | iter =>
      loop
        match LangItem iter with
        | None => Break
        | Some {| Some.0 := path; |} =>
          _crate.io._print
            (format_arguments::["new_v1"]
              [ "> "; "
" ]
              [ format_argument::["new_debug"] path.["unwrap"].["path"] ]) ;;
          tt ;;
          tt
        end ;;
        tt
        from
        for
    end
  end ;;
  _crate.io._print (format_arguments::["new_const"] [ "`rm a/c/e.txt`
" ]) ;;
  tt ;;
  (fs.remove_file "a/c/e.txt").["unwrap_or_else"]
    (fun why =>
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "! "; "
" ]
          [ format_argument::["new_debug"] why.["kind"] ]) ;;
      tt ;;
      tt) ;;
  _crate.io._print (format_arguments::["new_const"] [ "`rmdir a/c/d`
" ]) ;;
  tt ;;
  (fs.remove_dir "a/c/d").["unwrap_or_else"]
    (fun why =>
      _crate.io._print
        (format_arguments::["new_v1"]
          [ "! "; "
" ]
          [ format_argument::["new_debug"] why.["kind"] ]) ;;
      tt ;;
      tt) ;;
  tt.