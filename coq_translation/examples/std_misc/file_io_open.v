(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H : State.Trait} (_ : unit) : M (H := H) unit :=
  let* path := std.path.Path::["new"] "hello.txt" in
  let* display := path.["display"] in
  let* file :=
    let* α0 := std.fs.File::["open"] (addr_of path) in
    match α0 with
    | core.result.Result.Err why =>
      let* α0 := format_argument::["new_display"] (addr_of display) in
      let* α1 := format_argument::["new_display"] (addr_of why) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ "couldn't open "; ": " ])
          (addr_of [ α0; α1 ]) in
      core.panicking.panic_fmt α2
    | core.result.Result.Ok file => Pure file
    end in
  let* s := alloc.string.String::["new"] tt in
  let* α0 := file.["read_to_string"] (addr_of s) in
  match α0 with
  | core.result.Result.Err why =>
    let* α0 := format_argument::["new_display"] (addr_of display) in
    let* α1 := format_argument::["new_display"] (addr_of why) in
    let* α2 :=
      format_arguments::["new_v1"]
        (addr_of [ "couldn't read "; ": " ])
        (addr_of [ α0; α1 ]) in
    core.panicking.panic_fmt α2
  | core.result.Result.Ok _ =>
    let* _ :=
      let* α0 := format_argument::["new_display"] (addr_of display) in
      let* α1 := format_argument::["new_display"] (addr_of s) in
      let* α2 :=
        format_arguments::["new_v1"]
          (addr_of [ ""; " contains:
" ])
          (addr_of [ α0; α1 ]) in
      std.io.stdio._print α2 in
    Pure tt
  end.
