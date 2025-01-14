(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition PANGRAM : M.Val (ref (ref str.t)) :=
  M.run (M.alloc (mk_str "the quick brown fox jumped over the lazy dog
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
Definition main : M unit :=
  let* process : M.Val std.process.Child.t :=
    let* α0 : ref str.t := M.read (mk_str "wc") in
    let* α1 : std.process.Command.t :=
      M.call (std.process.Command.t::["new"] α0) in
    let* α2 : M.Val std.process.Command.t := M.alloc α1 in
    let* α3 : std.process.Stdio.t := M.call std.process.Stdio.t::["piped"] in
    let* α4 : mut_ref std.process.Command.t :=
      M.call (std.process.Command.t::["stdin"] (borrow_mut α2) α3) in
    let* α5 : std.process.Stdio.t := M.call std.process.Stdio.t::["piped"] in
    let* α6 : mut_ref std.process.Command.t :=
      M.call (std.process.Command.t::["stdout"] α4 α5) in
    let* α7 : core.result.Result.t std.process.Child.t std.io.error.Error.t :=
      M.call (std.process.Command.t::["spawn"] α6) in
    let* α8 :
        M.Val (core.result.Result.t std.process.Child.t std.io.error.Error.t) :=
      M.alloc α7 in
    let* α9 : M.Val std.process.Child.t :=
      match_operator
        α8
        [
          fun γ =>
            (let* α0 := M.read γ in
            match α0 with
            | core.result.Result.Err _ =>
              let γ0_0 := core.result.Result.Get_Err_0 γ in
              let* why := M.copy γ0_0 in
              let* α0 : ref str.t := M.read (mk_str "couldn't spawn wc: ") in
              let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
              let* α2 : core.fmt.rt.Argument.t :=
                M.call (core.fmt.rt.Argument.t::["new_display"] (borrow why)) in
              let* α3 : M.Val (array core.fmt.rt.Argument.t) :=
                M.alloc [ α2 ] in
              let* α4 : core.fmt.Arguments.t :=
                M.call
                  (core.fmt.Arguments.t::["new_v1"]
                    (pointer_coercion "Unsize" (borrow α1))
                    (pointer_coercion "Unsize" (borrow α3))) in
              let* α5 : never.t := M.call (core.panicking.panic_fmt α4) in
              let* α6 : std.process.Child.t := never_to_any α5 in
              M.alloc α6
            | _ => M.break_match
            end) :
            M (M.Val std.process.Child.t);
          fun γ =>
            (let* α0 := M.read γ in
            match α0 with
            | core.result.Result.Ok _ =>
              let γ0_0 := core.result.Result.Get_Ok_0 γ in
              let* process := M.copy γ0_0 in
              M.pure process
            | _ => M.break_match
            end) :
            M (M.Val std.process.Child.t)
        ] in
    M.copy α9 in
  let* _ : M.Val unit :=
    let* α0 :
        (mut_ref std.process.ChildStdin.t) ->
          (ref (slice u8.t)) ->
          M (core.result.Result.t unit std.io.error.Error.t) :=
      ltac:(M.get_method (fun ℐ =>
        std.io.Write.write_all
          (Self := std.process.ChildStdin.t)
          (Trait := ℐ))) in
    let* α1 : core.option.Option.t std.process.ChildStdin.t :=
      M.read (std.process.Child.Get_stdin process) in
    let* α2 : std.process.ChildStdin.t :=
      M.call ((core.option.Option.t std.process.ChildStdin.t)::["unwrap"] α1) in
    let* α3 : M.Val std.process.ChildStdin.t := M.alloc α2 in
    let* α4 : ref (ref str.t) := M.read child_processes_pipes.PANGRAM in
    let* α5 : ref str.t := M.read (deref α4) in
    let* α6 : ref (slice u8.t) := M.call (str.t::["as_bytes"] α5) in
    let* α7 : core.result.Result.t unit std.io.error.Error.t :=
      M.call (α0 (borrow_mut α3) α6) in
    let* α8 : M.Val (core.result.Result.t unit std.io.error.Error.t) :=
      M.alloc α7 in
    match_operator
      α8
      [
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | core.result.Result.Err _ =>
            let γ0_0 := core.result.Result.Get_Err_0 γ in
            let* why := M.copy γ0_0 in
            let* α0 : ref str.t :=
              M.read (mk_str "couldn't write to wc stdin: ") in
            let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
            let* α2 : core.fmt.rt.Argument.t :=
              M.call (core.fmt.rt.Argument.t::["new_display"] (borrow why)) in
            let* α3 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α2 ] in
            let* α4 : core.fmt.Arguments.t :=
              M.call
                (core.fmt.Arguments.t::["new_v1"]
                  (pointer_coercion "Unsize" (borrow α1))
                  (pointer_coercion "Unsize" (borrow α3))) in
            let* α5 : never.t := M.call (core.panicking.panic_fmt α4) in
            let* α6 : unit := never_to_any α5 in
            M.alloc α6
          | _ => M.break_match
          end) :
          M (M.Val unit);
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | core.result.Result.Ok _ =>
            let γ0_0 := core.result.Result.Get_Ok_0 γ in
            let* _ : M.Val unit :=
              let* α0 : ref str.t := M.read (mk_str "sent pangram to wc
") in
              let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
              let* α2 : core.fmt.Arguments.t :=
                M.call
                  (core.fmt.Arguments.t::["new_const"]
                    (pointer_coercion "Unsize" (borrow α1))) in
              let* α3 : unit := M.call (std.io.stdio._print α2) in
              M.alloc α3 in
            M.alloc tt
          | _ => M.break_match
          end) :
          M (M.Val unit)
      ] in
  let* s : M.Val alloc.string.String.t :=
    let* α0 : alloc.string.String.t := M.call alloc.string.String.t::["new"] in
    M.alloc α0 in
  let* α0 :
      (mut_ref std.process.ChildStdout.t) ->
        (mut_ref alloc.string.String.t) ->
        M (core.result.Result.t usize.t std.io.error.Error.t) :=
    ltac:(M.get_method (fun ℐ =>
      std.io.Read.read_to_string
        (Self := std.process.ChildStdout.t)
        (Trait := ℐ))) in
  let* α1 : core.option.Option.t std.process.ChildStdout.t :=
    M.read (std.process.Child.Get_stdout process) in
  let* α2 : std.process.ChildStdout.t :=
    M.call ((core.option.Option.t std.process.ChildStdout.t)::["unwrap"] α1) in
  let* α3 : M.Val std.process.ChildStdout.t := M.alloc α2 in
  let* α4 : core.result.Result.t usize.t std.io.error.Error.t :=
    M.call (α0 (borrow_mut α3) (borrow_mut s)) in
  let* α5 : M.Val (core.result.Result.t usize.t std.io.error.Error.t) :=
    M.alloc α4 in
  let* α0 : M.Val unit :=
    match_operator
      α5
      [
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | core.result.Result.Err _ =>
            let γ0_0 := core.result.Result.Get_Err_0 γ in
            let* why := M.copy γ0_0 in
            let* α0 : ref str.t :=
              M.read (mk_str "couldn't read wc stdout: ") in
            let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
            let* α2 : core.fmt.rt.Argument.t :=
              M.call (core.fmt.rt.Argument.t::["new_display"] (borrow why)) in
            let* α3 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α2 ] in
            let* α4 : core.fmt.Arguments.t :=
              M.call
                (core.fmt.Arguments.t::["new_v1"]
                  (pointer_coercion "Unsize" (borrow α1))
                  (pointer_coercion "Unsize" (borrow α3))) in
            let* α5 : never.t := M.call (core.panicking.panic_fmt α4) in
            let* α6 : unit := never_to_any α5 in
            M.alloc α6
          | _ => M.break_match
          end) :
          M (M.Val unit);
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | core.result.Result.Ok _ =>
            let γ0_0 := core.result.Result.Get_Ok_0 γ in
            let* _ : M.Val unit :=
              let* α0 : ref str.t := M.read (mk_str "wc responded with:
") in
              let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
              let* α2 : core.fmt.rt.Argument.t :=
                M.call (core.fmt.rt.Argument.t::["new_display"] (borrow s)) in
              let* α3 : M.Val (array core.fmt.rt.Argument.t) :=
                M.alloc [ α2 ] in
              let* α4 : core.fmt.Arguments.t :=
                M.call
                  (core.fmt.Arguments.t::["new_v1"]
                    (pointer_coercion "Unsize" (borrow α1))
                    (pointer_coercion "Unsize" (borrow α3))) in
              let* α5 : unit := M.call (std.io.stdio._print α4) in
              M.alloc α5 in
            M.alloc tt
          | _ => M.break_match
          end) :
          M (M.Val unit)
      ] in
  M.read α0.
