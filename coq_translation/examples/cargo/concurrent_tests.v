(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition foo
    {A : Set}
    (o : core.option.Option concurrent_tests.foo.A)
    : M unit :=
  match o with
  | core.option.Option.Some _a =>
    let* _ :=
      let* α0 := format_arguments::["new_const"] (addr_of [ "some
" ]) in
      std.io.stdio._print α0 in
    Pure tt
  | core.option.Option.None =>
    let* _ :=
      let* α0 := format_arguments::["new_const"] (addr_of [ "nothing
" ]) in
      std.io.stdio._print α0 in
    Pure tt
  end.

Module tests.
  Definition test_file (_ : unit) : M unit :=
    let* file :=
      let* α0 := std.fs.OpenOptions::["new"] tt in
      let* α1 := α0.["append"] true in
      let* α2 := α1.["create"] true in
      let* α3 := α2.["open"] "ferris.txt" in
      α3.["expect"] "Failed to open ferris.txt" in
    let* α0 := LangItem Range {| Range.start := 0; Range.end := 5; |} in
    match α0 with
    | iter =>
      loop
        let* _ :=
          let* α0 := LangItem (addr_of iter) in
          match α0 with
          | None => Pure Break
          | Some {| Some.0 := _; |} =>
            let* _ :=
              let* α0 := "Ferris
".["as_bytes"] in
              let* α1 := file.["write_all"] α0 in
              α1.["expect"] "Could not write to ferris.txt" in
            Pure tt
          end in
        Pure tt
        from
        for
    end.
  
  Definition test_file_also (_ : unit) : M unit :=
    let* file :=
      let* α0 := std.fs.OpenOptions::["new"] tt in
      let* α1 := α0.["append"] true in
      let* α2 := α1.["create"] true in
      let* α3 := α2.["open"] "ferris.txt" in
      α3.["expect"] "Failed to open ferris.txt" in
    let* α0 := LangItem Range {| Range.start := 0; Range.end := 5; |} in
    match α0 with
    | iter =>
      loop
        let* _ :=
          let* α0 := LangItem (addr_of iter) in
          match α0 with
          | None => Pure Break
          | Some {| Some.0 := _; |} =>
            let* _ :=
              let* α0 := "Corro
".["as_bytes"] in
              let* α1 := file.["write_all"] α0 in
              α1.["expect"] "Could not write to ferris.txt" in
            Pure tt
          end in
        Pure tt
        from
        for
    end.
End tests.

Definition test_file (_ : unit) : M unit :=
  let* file :=
    let* α0 := std.fs.OpenOptions::["new"] tt in
    let* α1 := α0.["append"] true in
    let* α2 := α1.["create"] true in
    let* α3 := α2.["open"] "ferris.txt" in
    α3.["expect"] "Failed to open ferris.txt" in
  let* α0 := LangItem Range {| Range.start := 0; Range.end := 5; |} in
  match α0 with
  | iter =>
    loop
      let* _ :=
        let* α0 := LangItem (addr_of iter) in
        match α0 with
        | None => Pure Break
        | Some {| Some.0 := _; |} =>
          let* _ :=
            let* α0 := "Ferris
".["as_bytes"] in
            let* α1 := file.["write_all"] α0 in
            α1.["expect"] "Could not write to ferris.txt" in
          Pure tt
        end in
      Pure tt
      from
      for
  end.

Definition test_file_also (_ : unit) : M unit :=
  let* file :=
    let* α0 := std.fs.OpenOptions::["new"] tt in
    let* α1 := α0.["append"] true in
    let* α2 := α1.["create"] true in
    let* α3 := α2.["open"] "ferris.txt" in
    α3.["expect"] "Failed to open ferris.txt" in
  let* α0 := LangItem Range {| Range.start := 0; Range.end := 5; |} in
  match α0 with
  | iter =>
    loop
      let* _ :=
        let* α0 := LangItem (addr_of iter) in
        match α0 with
        | None => Pure Break
        | Some {| Some.0 := _; |} =>
          let* _ :=
            let* α0 := "Corro
".["as_bytes"] in
            let* α1 := file.["write_all"] α0 in
            α1.["expect"] "Could not write to ferris.txt" in
          Pure tt
        end in
      Pure tt
      from
      for
  end.
