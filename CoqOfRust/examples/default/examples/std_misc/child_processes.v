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
  M.function_body
    (let* output : M.Val std.process.Output.t :=
      let* α0 := std.process.Command.t::["new"] (mk_str "rustc") in
      let* α1 : M.Val std.process.Command.t := M.alloc α0 in
      let* α2 : M.Val (mut_ref std.process.Command.t) := borrow_mut α1 in
      let* α3 := std.process.Command.t::["arg"] α2 (mk_str "--version") in
      let* α4 : M.Val (mut_ref std.process.Command.t) := M.alloc α3 in
      let* α5 : M.Val std.process.Command.t := deref α4 in
      let* α6 : M.Val (mut_ref std.process.Command.t) := borrow_mut α5 in
      let* α7 := std.process.Command.t::["output"] α6 in
      let* α8 :
          M.Val
            (core.result.Result.t std.process.Output.t std.io.error.Error.t) :=
        M.alloc α7 in
      let* α9 :=
        (core.result.Result.t
              std.process.Output.t
              std.io.error.Error.t)::["unwrap_or_else"]
          α8
          (let* α0 : M.Val (array (ref str.t)) :=
            M.alloc [ mk_str "failed to execute process: " ] in
          let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
          let* α2 : M.Val (ref (slice (ref str.t))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : M.Val (ref std.io.error.Error.t) := borrow e in
          let* α4 := core.fmt.rt.Argument.t::["new_display"] α3 in
          let* α5 : M.Val core.fmt.rt.Argument.t := M.alloc α4 in
          let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
          let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α6 in
          let* α8 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
            pointer_coercion "Unsize" α7 in
          let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
          let* α10 : M.Val core.fmt.Arguments.t := M.alloc α9 in
          let* α11 := core.panicking.panic_fmt α10 in
          let* α12 : M.Val never.t := M.alloc α11 in
          never_to_any α12) in
      M.alloc α9 in
    let* α0 : M.Val (ref std.process.ExitStatus.t) :=
      borrow output.["status"] in
    let* α1 := std.process.ExitStatus.t::["success"] α0 in
    let* α2 : M.Val bool.t := M.alloc α1 in
    let* α3 : M.Val bool.t := use α2 in
    let* α4 := M.read α3 in
    if (α4 : bool) then
      let* s : M.Val (alloc.borrow.Cow.t str.t) :=
        let* α0 : M.Val (ref (alloc.vec.Vec.t u8.t alloc.alloc.Global.t)) :=
          borrow output.["stdout"] in
        let* α1 :=
          (core.ops.deref.Deref.deref
              (Self := alloc.vec.Vec.t u8.t alloc.alloc.Global.t)
              (Trait := ltac:(refine _)))
            α0 in
        let* α2 : M.Val (ref (slice u8.t)) := M.alloc α1 in
        let* α3 : M.Val (slice u8.t) := deref α2 in
        let* α4 : M.Val (ref (slice u8.t)) := borrow α3 in
        let* α5 := alloc.string.String.t::["from_utf8_lossy"] α4 in
        M.alloc α5 in
      let* _ : M.Val unit :=
        let* _ : M.Val unit :=
          let* α0 : M.Val (array (ref str.t)) :=
            M.alloc [ mk_str "rustc succeeded and stdout was:
" ] in
          let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
          let* α2 : M.Val (ref (slice (ref str.t))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : M.Val (ref (alloc.borrow.Cow.t str.t)) := borrow s in
          let* α4 := core.fmt.rt.Argument.t::["new_display"] α3 in
          let* α5 : M.Val core.fmt.rt.Argument.t := M.alloc α4 in
          let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
          let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α6 in
          let* α8 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
            pointer_coercion "Unsize" α7 in
          let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
          let* α10 : M.Val core.fmt.Arguments.t := M.alloc α9 in
          let* α11 := std.io.stdio._print α10 in
          M.alloc α11 in
        M.alloc tt in
      M.alloc tt
    else
      let* s : M.Val (alloc.borrow.Cow.t str.t) :=
        let* α0 : M.Val (ref (alloc.vec.Vec.t u8.t alloc.alloc.Global.t)) :=
          borrow output.["stderr"] in
        let* α1 :=
          (core.ops.deref.Deref.deref
              (Self := alloc.vec.Vec.t u8.t alloc.alloc.Global.t)
              (Trait := ltac:(refine _)))
            α0 in
        let* α2 : M.Val (ref (slice u8.t)) := M.alloc α1 in
        let* α3 : M.Val (slice u8.t) := deref α2 in
        let* α4 : M.Val (ref (slice u8.t)) := borrow α3 in
        let* α5 := alloc.string.String.t::["from_utf8_lossy"] α4 in
        M.alloc α5 in
      let* _ : M.Val unit :=
        let* _ : M.Val unit :=
          let* α0 : M.Val (array (ref str.t)) :=
            M.alloc [ mk_str "rustc failed and stderr was:
" ] in
          let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
          let* α2 : M.Val (ref (slice (ref str.t))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : M.Val (ref (alloc.borrow.Cow.t str.t)) := borrow s in
          let* α4 := core.fmt.rt.Argument.t::["new_display"] α3 in
          let* α5 : M.Val core.fmt.rt.Argument.t := M.alloc α4 in
          let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
          let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α6 in
          let* α8 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
            pointer_coercion "Unsize" α7 in
          let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
          let* α10 : M.Val core.fmt.Arguments.t := M.alloc α9 in
          let* α11 := std.io.stdio._print α10 in
          M.alloc α11 in
        M.alloc tt in
      M.alloc tt).
