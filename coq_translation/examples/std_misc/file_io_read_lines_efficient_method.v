(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module File := std.fs.File.
Definition File := File.t.

Module io := std.io.

Module Path := std.path.Path.
Definition Path := Path.t.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let* α0 := read_lines "./hosts" in
  let* α1 := let_if Ok lines := α0 in
  if (α1 : bool) then
    let* α0 := LangItem lines in
    match α0 with
    | iter =>
      loop
        let* α0 := LangItem (deref iter) in
        let* _ :=
          match α0 with
          | None => Pure Break
          | Some {| Some.0 := line; |} =>
            let* α0 := let_if Ok ip := line in
            if (α0 : bool) then
              let* α0 := format_argument::["new_display"] (deref ip) in
              let* α1 :=
                format_arguments::["new_v1"]
                  (deref [ ""; "
" ])
                  (deref [ α0 ]) in
              let* _ := _crate.io._print α1 in
              let _ := tt in
              Pure tt
            else
              Pure tt
          end in
        Pure tt
        from
        for
    end
  else
    Pure tt.

Definition read_lines
    {P : Set}
    `{AsRef.Trait Path P}
    (filename : P)
    : M (io.Result (io.Lines (io.BufReader File))) :=
  let* α0 := File::["open"] filename in
  let* α1 := LangItem α0 in
  let* file :=
    match α1 with
    | Break {| Break.0 := residual; |} =>
      let* α0 := LangItem residual in
      Return α0
    | Continue {| Continue.0 := val; |} => Pure val
    end in
  let* α2 := io.BufReader::["new"] file in
  let* α3 := α2.["lines"] in
  Ok α3.
