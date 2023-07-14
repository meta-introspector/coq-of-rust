(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H : State.Trait} (_ : unit) : M (H := H) unit :=
  let* α0 := file_io_read_lines_efficient_method.read_lines "./hosts" in
  let* α1 := let_if core.result.Result.Ok lines := α0 in
  if (α1 : bool) then
    let* α0 := LangItem lines in
    match α0 with
    | iter =>
      loop
        let* _ :=
          let* α0 := LangItem (addr_of iter) in
          match α0 with
          | None => Pure Break
          | Some {| Some.0 := line; |} =>
            let* α0 := let_if core.result.Result.Ok ip := line in
            if (α0 : bool) then
              let* _ :=
                let* _ :=
                  let* α0 := format_argument::["new_display"] (addr_of ip) in
                  let* α1 :=
                    format_arguments::["new_v1"]
                      (addr_of [ ""; "
" ])
                      (addr_of [ α0 ]) in
                  std.io.stdio._print α1 in
                Pure tt in
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
    `{H : State.Trait}
    {P : Set}
    `{core.convert.AsRef.Trait std.path.Path P}
    (filename : P)
    :
      M (H := H)
        (std.io.error.Result
          (std.io.Lines (std.io.buffered.bufreader.BufReader std.fs.File))) :=
  let* file :=
    let* α0 := std.fs.File::["open"] filename in
    let* α1 := LangItem α0 in
    match α1 with
    | Break {| Break.0 := residual; |} =>
      let* α0 := LangItem residual in
      Return α0
    | Continue {| Continue.0 := val; |} => Pure val
    end in
  let* α0 := std.io.buffered.bufreader.BufReader::["new"] file in
  let* α1 := α0.["lines"] in
  Pure (core.result.Result.Ok α1).
