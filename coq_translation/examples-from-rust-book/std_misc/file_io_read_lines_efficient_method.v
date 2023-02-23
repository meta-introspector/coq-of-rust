(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition main (_ : unit) :=
  if let_if Ok (lines) := read_lines "./hosts" then
    match into_iter lines with
    | iter =>
      loop
        match next iter with
        | {|  |} => Break
        | {| Some.0 := line; |} =>
          if let_if Ok (ip) := line then
            _crate.io._print
              (_crate::fmt::ImplArguments.new_v1
                ["";"\n"]
                [_crate::fmt::ImplArgumentV1.new_display ip]) ;;
            tt ;;
            tt
          else
            tt
        end ;;
        tt
        from
        for
    end
  else
    tt.

Definition read_lines (_ : unit) :=
  let file :=
    match branch (ImplFile.open filename) with
    | {| Break.0 := residual; |} => Return (from_residual residual)
    | {| Continue.0 := val; |} => val
    end in
  Ok (method "lines" (io::ImplBufReader.new file)).
