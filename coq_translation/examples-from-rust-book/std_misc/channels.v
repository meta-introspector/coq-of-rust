(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module mpsc := std.sync.mpsc.

Module Receiver := std.sync.mpsc.Receiver.
Definition Receiver := Receiver.t.

Module Sender := std.sync.mpsc.Sender.
Definition Sender := Sender.t.

Module thread := std.thread.

Definition NTHREADS : i32 := 3.

Definition main :=
  let return_type := unit in
  ltac:(function (
    let '(tx, rx) := mpsc.channel(||) in
    let children := Vec::["new"](||) in
    let '_ :=
      match LangItem(| Range {| Range.start := 0; Range.end := NTHREADS; |} |)
      with
      | iter =>
        loop
          let '_ :=
            match LangItem(| iter |) with
            | None => M.Break
            | Some {| Some.0 := id; |} =>
              let thread_tx := tx.["clone"](||) in
              let child :=
                thread.spawn(|
                  fun  =>
                    let '_ := thread_tx.["send"](| id |).["unwrap"](||) in
                    let '_ :=
                      let '_ :=
                        _crate.io._print(|
                          format_arguments::["new_v1"](|
                            [ "thread "; " finished
" ],
                            [ format_argument::["new_display"](| id |) ]
                          |)
                        |) in
                      tt in
                    tt
                |) in
              let '_ := children.["push"](| child |) in
              tt
            end in
          tt
          from
          for
      end in
    let ids := Vec::["with_capacity"](| cast NTHREADS usize |) in
    let '_ :=
      match LangItem(| Range {| Range.start := 0; Range.end := NTHREADS; |} |)
      with
      | iter =>
        loop
          let '_ :=
            match LangItem(| iter |) with
            | None => M.Break
            | Some {| Some.0 := _; |} =>
              let '_ := ids.["push"](| rx.["recv"](||) |) in
              tt
            end in
          tt
          from
          for
      end in
    let '_ :=
      match LangItem(| children |) with
      | iter =>
        loop
          let '_ :=
            match LangItem(| iter |) with
            | None => M.Break
            | Some {| Some.0 := child; |} =>
              let '_ :=
                child.["join"](||).["expect"](|
                  "oops! the child thread panicked"
                |) in
              tt
            end in
          tt
          from
          for
      end in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ ""; "
" ],
            [ format_argument::["new_debug"](| ids |) ]
          |)
        |) in
      tt in
    tt
  : return_type)).
