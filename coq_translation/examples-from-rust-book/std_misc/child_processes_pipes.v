(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition PANGRAM (_ : unit) :=
  "the quick brown fox jumped over the lazy dog\n".

Definition main (_ : unit) :=
  let process :=
    match
      method
        "spawn"
        (method
          "stdout"
          (method "stdin" (ImplCommand.new "wc") (ImplStdio.piped tt))
          (ImplStdio.piped tt))
    with
    | Err (why) =>
      _crate.rt.panic_fmt
        (_crate::fmt::ImplArguments.new_v1
          ["couldn't spawn wc: "]
          [_crate::fmt::ImplArgumentV1.new_display why])
    | Ok (process) => process
    end in
  match
    method
      "write_all"
      (method "unwrap" process.stdin)
      (method "as_bytes" PANGRAM)
  with
  | Err (why) =>
    _crate.rt.panic_fmt
      (_crate::fmt::ImplArguments.new_v1
        ["couldn't write to wc stdin: "]
        [_crate::fmt::ImplArgumentV1.new_display why])
  | Ok (_) =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1 ["sent pangram to wc\n"] []) ;;
    tt
  end ;;
  let s := ImplString.new tt in
  match method "read_to_string" (method "unwrap" process.stdout) s with
  | Err (why) =>
    _crate.rt.panic_fmt
      (_crate::fmt::ImplArguments.new_v1
        ["couldn't read wc stdout: "]
        [_crate::fmt::ImplArgumentV1.new_display why])
  | Ok (_) =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1
        ["wc responded with:\n"]
        [_crate::fmt::ImplArgumentV1.new_display s]) ;;
    tt
  end.
