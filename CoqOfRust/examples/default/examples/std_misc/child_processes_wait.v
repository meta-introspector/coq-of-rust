(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    let mut child = Command::new("sleep").arg("5").spawn().unwrap();
    let _result = child.wait().unwrap();

    println!("reached end of main");
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* child : M.Val std.process.Child.t :=
      let* α0 := std.process.Command.t::["new"] (mk_str "sleep") in
      let* α1 : M.Val std.process.Command.t := M.alloc α0 in
      let* α2 : M.Val (mut_ref std.process.Command.t) := borrow_mut α1 in
      let* α3 := std.process.Command.t::["arg"] α2 (mk_str "5") in
      let* α4 : M.Val (mut_ref std.process.Command.t) := M.alloc α3 in
      let* α5 : M.Val std.process.Command.t := deref α4 in
      let* α6 : M.Val (mut_ref std.process.Command.t) := borrow_mut α5 in
      let* α7 := std.process.Command.t::["spawn"] α6 in
      let* α8 :
          M.Val
            (core.result.Result.t std.process.Child.t std.io.error.Error.t) :=
        M.alloc α7 in
      let* α9 :=
        (core.result.Result.t
              std.process.Child.t
              std.io.error.Error.t)::["unwrap"]
          α8 in
      M.alloc α9 in
    let* _result : M.Val std.process.ExitStatus.t :=
      let* α0 : M.Val (mut_ref std.process.Child.t) := borrow_mut child in
      let* α1 := std.process.Child.t::["wait"] α0 in
      let* α2 :
          M.Val
            (core.result.Result.t
              std.process.ExitStatus.t
              std.io.error.Error.t) :=
        M.alloc α1 in
      let* α3 :=
        (core.result.Result.t
              std.process.ExitStatus.t
              std.io.error.Error.t)::["unwrap"]
          α2 in
      M.alloc α3 in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "reached end of main
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := core.fmt.Arguments.t::["new_const"] α2 in
        let* α4 : M.Val core.fmt.Arguments.t := M.alloc α3 in
        let* α5 := std.io.stdio._print α4 in
        M.alloc α5 in
      M.alloc tt in
    M.alloc tt).
