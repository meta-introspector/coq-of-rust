(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition foo {A : Set} (o : Option A) : M unit :=
  match o with
  | Some _a =>
    let* _ :=
      let* α0 := format_arguments::["new_const"] (addr_of [ "some
" ]) in
      _crate.io._print α0 in
    Pure tt
  | None =>
    let* _ :=
      let* α0 := format_arguments::["new_const"] (addr_of [ "nothing
" ]) in
      _crate.io._print α0 in
    Pure tt
  end.

Module tests.
  Module OpenOptions := std.fs.OpenOptions.
  Definition OpenOptions := OpenOptions.t.
  
  Definition test_file (_ : unit) : M unit :=
    let* file :=
      let* α0 := OpenOptions::["new"] tt in
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
      let* α0 := OpenOptions::["new"] tt in
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

Module OpenOptions := std.fs.OpenOptions.
Definition OpenOptions := OpenOptions.t.

Definition test_file (_ : unit) : M unit :=
  let* file :=
    let* α0 := OpenOptions::["new"] tt in
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
    let* α0 := OpenOptions::["new"] tt in
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