(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module thread := std.thread.

Definition NTHREADS : u32 := 10.

Definition main :=
  ltac:(function (
    let children := _crate.vec.Vec::["new"](||) in
    let '_ :=
      match LangItem(| Range {| Range.start := 0; Range.end := NTHREADS; |} |)
      with
      | iter =>
        loop
          let '_ :=
            match LangItem(| iter |) with
            | None => Break
            | Some {| Some.0 := i; |} =>
              let '_ :=
                children.["push"](|
                  thread.spawn(|
                    fun  =>
                      let '_ :=
                        let '_ :=
                          _crate.io._print(|
                            format_arguments::["new_v1"](|
                              [ "this is thread number "; "
" ],
                              [ format_argument::["new_display"](| i |) ]
                            |)
                          |) in
                        tt in
                      tt
                  |)
                |) in
              tt
            end in
          tt
          from
          for
      end in
    match LangItem(| children |) with
    | iter =>
      loop
        let '_ :=
          match LangItem(| iter |) with
          | None => Break
          | Some {| Some.0 := child; |} =>
            let '_ := child.["join"](||) in
            tt
          end in
        tt
        from
        for
    end
    : unit)).
