(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition PANGRAM : ref str :=
  run (Pure "the quick brown fox jumped over the lazy dog
").

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let* process :=
    let* α0 := std.process.Command::["new"] "wc" in
    let* α1 := std.process.Stdio::["piped"] tt in
    let* α2 := α0.["stdin"] α1 in
    let* α3 := std.process.Stdio::["piped"] tt in
    let* α4 := α2.["stdout"] α3 in
    let* α5 := α4.["spawn"] in
    match α5 with
    | core.result.Result.Err why =>
      let* α0 := format_argument::["new_display"] (addr_of why) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "couldn't spawn wc: " ])
          (addr_of [ α0 ]) in
      core.panicking.panic_fmt α1
    | core.result.Result.Ok process => Pure process
    end in
  let* _ :=
    let* α0 := process.["stdin"].["unwrap"] in
    let* α1 := child_processes_pipes.PANGRAM.["as_bytes"] in
    let* α2 := α0.["write_all"] α1 in
    match α2 with
    | core.result.Result.Err why =>
      let* α0 := format_argument::["new_display"] (addr_of why) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "couldn't write to wc stdin: " ])
          (addr_of [ α0 ]) in
      core.panicking.panic_fmt α1
    | core.result.Result.Ok _ =>
      let* _ :=
        let* α0 :=
          format_arguments::["new_const"] (addr_of [ "sent pangram to wc
" ]) in
        std.io.stdio._print α0 in
      Pure tt
    end in
  let* s := alloc.string.String::["new"] tt in
  let* α0 := process.["stdout"].["unwrap"] in
  let* α1 := α0.["read_to_string"] (addr_of s) in
  match α1 with
  | core.result.Result.Err why =>
    let* α0 := format_argument::["new_display"] (addr_of why) in
    let* α1 :=
      format_arguments::["new_v1"]
        (addr_of [ "couldn't read wc stdout: " ])
        (addr_of [ α0 ]) in
    core.panicking.panic_fmt α1
  | core.result.Result.Ok _ =>
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of s) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "wc responded with:
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt
  end.
