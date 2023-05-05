(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition foo {A : Set} (o : Option A) :=
  ltac:(function (
    match o with
    | Some _a =>
      let '_ :=
        _crate.io._print(| format_arguments::["new_const"](| [ "some
" ] |)
        |) in
      tt
    | None =>
      let '_ :=
        _crate.io._print(| format_arguments::["new_const"](| [ "nothing
" ] |)
        |) in
      tt
    end
    : unit)).

Module tests.
  Module OpenOptions := std.fs.OpenOptions.
  Definition OpenOptions := OpenOptions.t.
  
  Definition test_file :=
    ltac:(function (
      let file :=
        ((((OpenOptions::["new"](||)).["append"](| true |)).["create"](| true
        |)).["open"](| "ferris.txt"
        |)).["expect"](| "Failed to open ferris.txt"
        |) in
      match LangItem(| Range {| Range.start := 0; Range.end := 5; |} |) with
      | iter =>
        loop
          let '_ :=
            match LangItem(| iter |) with
            | None => Break
            | Some {| Some.0 := _; |} =>
              let '_ :=
                (file.["write_all"](| "Ferris
".["as_bytes"](||)
                |)).["expect"](| "Could not write to ferris.txt"
                |) in
              tt
            end in
          tt
          from
          for
      end
      : unit)).
  
  Definition test_file_also :=
    ltac:(function (
      let file :=
        ((((OpenOptions::["new"](||)).["append"](| true |)).["create"](| true
        |)).["open"](| "ferris.txt"
        |)).["expect"](| "Failed to open ferris.txt"
        |) in
      match LangItem(| Range {| Range.start := 0; Range.end := 5; |} |) with
      | iter =>
        loop
          let '_ :=
            match LangItem(| iter |) with
            | None => Break
            | Some {| Some.0 := _; |} =>
              let '_ :=
                (file.["write_all"](| "Corro
".["as_bytes"](||) |)).["expect"](|
                  "Could not write to ferris.txt"
                |) in
              tt
            end in
          tt
          from
          for
      end
      : unit)).
End tests.

Module OpenOptions := std.fs.OpenOptions.
Definition OpenOptions := OpenOptions.t.

Definition test_file :=
  ltac:(function (
    let file :=
      ((((OpenOptions::["new"](||)).["append"](| true |)).["create"](| true
      |)).["open"](| "ferris.txt"
      |)).["expect"](| "Failed to open ferris.txt"
      |) in
    match LangItem(| Range {| Range.start := 0; Range.end := 5; |} |) with
    | iter =>
      loop
        let '_ :=
          match LangItem(| iter |) with
          | None => Break
          | Some {| Some.0 := _; |} =>
            let '_ :=
              (file.["write_all"](| "Ferris
".["as_bytes"](||) |)).["expect"](|
                "Could not write to ferris.txt"
              |) in
            tt
          end in
        tt
        from
        for
    end
    : unit)).

Definition test_file_also :=
  ltac:(function (
    let file :=
      ((((OpenOptions::["new"](||)).["append"](| true |)).["create"](| true
      |)).["open"](| "ferris.txt"
      |)).["expect"](| "Failed to open ferris.txt"
      |) in
    match LangItem(| Range {| Range.start := 0; Range.end := 5; |} |) with
    | iter =>
      loop
        let '_ :=
          match LangItem(| iter |) with
          | None => Break
          | Some {| Some.0 := _; |} =>
            let '_ :=
              (file.["write_all"](| "Corro
".["as_bytes"](||) |)).["expect"](|
                "Could not write to ferris.txt"
              |) in
            tt
          end in
        tt
        from
        for
    end
    : unit)).
