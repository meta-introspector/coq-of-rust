(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition PANGRAM : ref str.t :=
  M.run (M.pure (mk_str "the quick brown fox jumped over the lazy dog
")).

(*
fn main() {
    // Spawn the `wc` command
    let process = match Command::new("wc")
        .stdin(Stdio::piped())
        .stdout(Stdio::piped())
        .spawn()
    {
        Err(why) => panic!("couldn't spawn wc: {}", why),
        Ok(process) => process,
    };

    // Write a string to the `stdin` of `wc`.
    //
    // `stdin` has type `Option<ChildStdin>`, but since we know this instance
    // must have one, we can directly `unwrap` it.
    match process.stdin.unwrap().write_all(PANGRAM.as_bytes()) {
        Err(why) => panic!("couldn't write to wc stdin: {}", why),
        Ok(_) => println!("sent pangram to wc"),
    }

    // Because `stdin` does not live after the above calls, it is `drop`ed,
    // and the pipe is closed.
    //
    // This is very important, otherwise `wc` wouldn't start processing the
    // input we just sent.

    // The `stdout` field also has type `Option<ChildStdout>` so must be unwrapped.
    let mut s = String::new();
    match process.stdout.unwrap().read_to_string(&mut s) {
        Err(why) => panic!("couldn't read wc stdout: {}", why),
        Ok(_) => print!("wc responded with:\n{}", s),
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M (M.Val unit) :=
  M.function_body
    (let* process : ltac:(refine (M.Val std.process.Child.t)) :=
      let* α0 : ltac:(refine (M.Val std.process.Command.t)) :=
        std.process.Command.t::["new"] (mk_str "wc") in
      let* α1 : ltac:(refine (M.Val (mut_ref std.process.Command.t))) :=
        borrow_mut α0 in
      let* α2 : ltac:(refine (M.Val std.process.Stdio.t)) :=
        std.process.Stdio.t::["piped"] in
      let* α3 : ltac:(refine (M.Val (mut_ref std.process.Command.t))) :=
        std.process.Command.t::["stdin"] α1 α2 in
      let* α4 : ltac:(refine (M.Val std.process.Command.t)) := deref α3 in
      let* α5 : ltac:(refine (M.Val (mut_ref std.process.Command.t))) :=
        borrow_mut α4 in
      let* α6 : ltac:(refine (M.Val std.process.Stdio.t)) :=
        std.process.Stdio.t::["piped"] in
      let* α7 : ltac:(refine (M.Val (mut_ref std.process.Command.t))) :=
        std.process.Command.t::["stdout"] α5 α6 in
      let* α8 : ltac:(refine (M.Val std.process.Command.t)) := deref α7 in
      let* α9 : ltac:(refine (M.Val (mut_ref std.process.Command.t))) :=
        borrow_mut α8 in
      let* α10 :
          ltac:(refine
            (M.Val
              (core.result.Result.t
                std.process.Child.t
                std.io.error.Error.t))) :=
        std.process.Command.t::["spawn"] α9 in
      let* α11 := M.read α10 in
      let* α12 : ltac:(refine (M.Val std.process.Child.t)) :=
        match α11 with
        | core.result.Result.Err why =>
          let* why := M.alloc why in
          let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
            M.alloc [ mk_str "couldn't spawn wc: " ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (M.Val (ref std.io.error.Error.t))) :=
            borrow why in
          let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
            core.fmt.rt.Argument.t::["new_display"] α3 in
          let* α5 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
            M.alloc [ α4 ] in
          let* α6 :
              ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
            borrow α5 in
          let* α7 :
              ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
            pointer_coercion "Unsize" α6 in
          let* α8 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
            core.fmt.Arguments.t::["new_v1"] α2 α7 in
          let* α9 : ltac:(refine (M.Val never.t)) :=
            core.panicking.panic_fmt α8 in
          never_to_any α9
        | core.result.Result.Ok process =>
          let* process := M.alloc process in
          M.pure process
        end in
      M.copy α12 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* α0 : ltac:(refine (M.Val std.process.ChildStdin.t)) :=
        (core.option.Option.t std.process.ChildStdin.t)::["unwrap"]
          process.["stdin"] in
      let* α1 : ltac:(refine (M.Val (mut_ref std.process.ChildStdin.t))) :=
        borrow_mut α0 in
      let* α2 : ltac:(refine (M.Val (ref str.t))) :=
        deref child_processes_pipes.PANGRAM in
      let* α3 : ltac:(refine (M.Val str.t)) := deref α2 in
      let* α4 : ltac:(refine (M.Val (ref str.t))) := borrow α3 in
      let* α5 : ltac:(refine (M.Val (ref (slice u8.t)))) :=
        str.t::["as_bytes"] α4 in
      let* α6 : ltac:(refine (M.Val (slice u8.t))) := deref α5 in
      let* α7 : ltac:(refine (M.Val (ref (slice u8.t)))) := borrow α6 in
      let* α8 :
          ltac:(refine
            (M.Val (core.result.Result.t unit std.io.error.Error.t))) :=
        (std.io.Write.write_all
            (Self := std.process.ChildStdin.t)
            (Trait := ltac:(refine _)))
          α1
          α7 in
      let* α9 := M.read α8 in
      match α9 with
      | core.result.Result.Err why =>
        let* why := M.alloc why in
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "couldn't write to wc stdin: " ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref std.io.error.Error.t))) :=
          borrow why in
        let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α3 in
        let* α5 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α4 ] in
        let* α6 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α5 in
        let* α7 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α7 in
        let* α9 : ltac:(refine (M.Val never.t)) :=
          core.panicking.panic_fmt α8 in
        never_to_any α9
      | core.result.Result.Ok _ =>
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
            M.alloc [ mk_str "sent pangram to wc
" ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
            core.fmt.Arguments.t::["new_const"] α2 in
          std.io.stdio._print α3 in
        M.alloc tt
      end in
    let* s : ltac:(refine (M.Val alloc.string.String.t)) :=
      let* α0 : ltac:(refine (M.Val alloc.string.String.t)) :=
        alloc.string.String.t::["new"] in
      M.copy α0 in
    let* α0 : ltac:(refine (M.Val std.process.ChildStdout.t)) :=
      (core.option.Option.t std.process.ChildStdout.t)::["unwrap"]
        process.["stdout"] in
    let* α1 : ltac:(refine (M.Val (mut_ref std.process.ChildStdout.t))) :=
      borrow_mut α0 in
    let* α2 : ltac:(refine (M.Val (mut_ref alloc.string.String.t))) :=
      borrow_mut s in
    let* α3 :
        ltac:(refine
          (M.Val (core.result.Result.t usize.t std.io.error.Error.t))) :=
      (std.io.Read.read_to_string
          (Self := std.process.ChildStdout.t)
          (Trait := ltac:(refine _)))
        α1
        α2 in
    let* α4 := M.read α3 in
    match α4 with
    | core.result.Result.Err why =>
      let* why := M.alloc why in
      let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
        M.alloc [ mk_str "couldn't read wc stdout: " ] in
      let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) := borrow α0 in
      let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
        pointer_coercion "Unsize" α1 in
      let* α3 : ltac:(refine (M.Val (ref std.io.error.Error.t))) :=
        borrow why in
      let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
        core.fmt.rt.Argument.t::["new_display"] α3 in
      let* α5 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
        M.alloc [ α4 ] in
      let* α6 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
        borrow α5 in
      let* α7 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
        pointer_coercion "Unsize" α6 in
      let* α8 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
        core.fmt.Arguments.t::["new_v1"] α2 α7 in
      let* α9 : ltac:(refine (M.Val never.t)) := core.panicking.panic_fmt α8 in
      never_to_any α9
    | core.result.Result.Ok _ =>
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "wc responded with:
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref alloc.string.String.t))) :=
          borrow s in
        let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α3 in
        let* α5 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α4 ] in
        let* α6 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α5 in
        let* α7 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α7 in
        std.io.stdio._print α8 in
      M.alloc tt
    end).
