(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    let output = Command::new("rustc")
        .arg("--version")
        .output()
        .unwrap_or_else(|e| panic!("failed to execute process: {}", e));

    if output.status.success() {
        let s = String::from_utf8_lossy(&output.stdout);

        print!("rustc succeeded and stdout was:\n{}", s);
    } else {
        let s = String::from_utf8_lossy(&output.stderr);

        print!("rustc failed and stderr was:\n{}", s);
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* output : M.Val std.process.Output.t :=
    let* α0 : ref str.t := M.read (mk_str "rustc") in
    let* α1 : std.process.Command.t :=
      M.call (std.process.Command.t::["new"] α0) in
    let* α2 : M.Val std.process.Command.t := M.alloc α1 in
    let* α3 : ref str.t := M.read (mk_str "--version") in
    let* α4 : mut_ref std.process.Command.t :=
      M.call (std.process.Command.t::["arg"] (borrow_mut α2) α3) in
    let* α5 : core.result.Result.t std.process.Output.t std.io.error.Error.t :=
      M.call (std.process.Command.t::["output"] α4) in
    let* α6 : std.process.Output.t :=
      M.call
        ((core.result.Result.t
              std.process.Output.t
              std.io.error.Error.t)::["unwrap_or_else"]
          α5
          (fun (α0 : std.io.error.Error.t) =>
            (let* α0 := M.alloc α0 in
            match_operator
              α0
              [
                fun γ =>
                  (let* e := M.copy γ in
                  let* α0 : ref str.t :=
                    M.read (mk_str "failed to execute process: ") in
                  let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
                  let* α2 : M.Val (ref (array (ref str.t))) :=
                    M.alloc (borrow α1) in
                  let* α3 : ref (slice (ref str.t)) :=
                    M.read (pointer_coercion "Unsize" α2) in
                  let* α4 : core.fmt.rt.Argument.t :=
                    M.call
                      (core.fmt.rt.Argument.t::["new_display"] (borrow e)) in
                  let* α5 : M.Val (array core.fmt.rt.Argument.t) :=
                    M.alloc [ α4 ] in
                  let* α6 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
                    M.alloc (borrow α5) in
                  let* α7 : ref (slice core.fmt.rt.Argument.t) :=
                    M.read (pointer_coercion "Unsize" α6) in
                  let* α8 : core.fmt.Arguments.t :=
                    M.call (core.fmt.Arguments.t::["new_v1"] α3 α7) in
                  let* α9 : never.t := M.call (core.panicking.panic_fmt α8) in
                  never_to_any α9) :
                  M std.process.Output.t
              ]) :
            M std.process.Output.t)) in
    M.alloc α6 in
  let* α0 : bool.t :=
    M.call (std.process.ExitStatus.t::["success"] (borrow output.["status"])) in
  let* α1 : M.Val bool.t := M.alloc α0 in
  let* α2 : bool.t := M.read (use α1) in
  let* α0 : M.Val unit :=
    if α2 then
      let* s : M.Val (alloc.borrow.Cow.t str.t) :=
        let* α0 : ref (slice u8.t) :=
          M.call
            ((core.ops.deref.Deref.deref
                (Self := alloc.vec.Vec.t u8.t alloc.alloc.Global.t)
                (Trait := ltac:(refine _)))
              (borrow output.["stdout"])) in
        let* α1 : alloc.borrow.Cow.t str.t :=
          M.call (alloc.string.String.t::["from_utf8_lossy"] α0) in
        M.alloc α1 in
      let* _ : M.Val unit :=
        let* _ : M.Val unit :=
          let* α0 : ref str.t :=
            M.read (mk_str "rustc succeeded and stdout was:\n") in
          let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
          let* α2 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α1) in
          let* α3 : ref (slice (ref str.t)) :=
            M.read (pointer_coercion "Unsize" α2) in
          let* α4 : core.fmt.rt.Argument.t :=
            M.call (core.fmt.rt.Argument.t::["new_display"] (borrow s)) in
          let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
          let* α6 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
            M.alloc (borrow α5) in
          let* α7 : ref (slice core.fmt.rt.Argument.t) :=
            M.read (pointer_coercion "Unsize" α6) in
          let* α8 : core.fmt.Arguments.t :=
            M.call (core.fmt.Arguments.t::["new_v1"] α3 α7) in
          let* α9 : unit := M.call (std.io.stdio._print α8) in
          M.alloc α9 in
        M.alloc tt in
      M.alloc tt
    else
      let* s : M.Val (alloc.borrow.Cow.t str.t) :=
        let* α0 : ref (slice u8.t) :=
          M.call
            ((core.ops.deref.Deref.deref
                (Self := alloc.vec.Vec.t u8.t alloc.alloc.Global.t)
                (Trait := ltac:(refine _)))
              (borrow output.["stderr"])) in
        let* α1 : alloc.borrow.Cow.t str.t :=
          M.call (alloc.string.String.t::["from_utf8_lossy"] α0) in
        M.alloc α1 in
      let* _ : M.Val unit :=
        let* _ : M.Val unit :=
          let* α0 : ref str.t :=
            M.read (mk_str "rustc failed and stderr was:\n") in
          let* α1 : M.Val (array (ref str.t)) := M.alloc [ α0 ] in
          let* α2 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α1) in
          let* α3 : ref (slice (ref str.t)) :=
            M.read (pointer_coercion "Unsize" α2) in
          let* α4 : core.fmt.rt.Argument.t :=
            M.call (core.fmt.rt.Argument.t::["new_display"] (borrow s)) in
          let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
          let* α6 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
            M.alloc (borrow α5) in
          let* α7 : ref (slice core.fmt.rt.Argument.t) :=
            M.read (pointer_coercion "Unsize" α6) in
          let* α8 : core.fmt.Arguments.t :=
            M.call (core.fmt.Arguments.t::["new_v1"] α3 α7) in
          let* α9 : unit := M.call (std.io.stdio._print α8) in
          M.alloc α9 in
        M.alloc tt in
      M.alloc tt in
  M.read α0.
