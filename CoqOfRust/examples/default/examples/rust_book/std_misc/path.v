(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    // Create a `Path` from an `&'static str`
    let path = Path::new(".");

    // The `display` method returns a `Display`able structure
    let _display = path.display();

    // `join` merges a path with a byte container using the OS specific
    // separator, and returns a `PathBuf`
    let mut new_path = path.join("a").join("b");

    // `push` extends the `PathBuf` with a `&Path`
    new_path.push("c");
    new_path.push("myfile.tar.gz");

    // `set_file_name` updates the file name of the `PathBuf`
    new_path.set_file_name("package.tgz");

    // Convert the `PathBuf` into a string slice
    match new_path.to_str() {
        None => panic!("new path is not a valid UTF-8 sequence"),
        Some(s) => println!("new path is {}", s),
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* path : M.Val (ref std.path.Path.t) :=
    let* α0 : ref str.t := M.read (mk_str ".") in
    let* α1 : ref std.path.Path.t := M.call (std.path.Path.t::["new"] α0) in
    M.alloc α1 in
  let* _display : M.Val std.path.Display.t :=
    let* α0 : ref std.path.Path.t := M.read path in
    let* α1 : std.path.Display.t := M.call (std.path.Path.t::["display"] α0) in
    M.alloc α1 in
  let* new_path : M.Val std.path.PathBuf.t :=
    let* α0 : (ref std.path.PathBuf.t) -> M (ref _) :=
      ltac:(M.get_method (fun ℐ =>
        core.ops.deref.Deref.deref
          (Self := std.path.PathBuf.t)
          (Trait := ℐ))) in
    let* α1 : ref std.path.Path.t := M.read path in
    let* α2 : ref str.t := M.read (mk_str "a") in
    let* α3 : std.path.PathBuf.t := M.call (std.path.Path.t::["join"] α1 α2) in
    let* α4 : M.Val std.path.PathBuf.t := M.alloc α3 in
    let* α5 : ref std.path.Path.t := M.call (α0 (borrow α4)) in
    let* α6 : ref str.t := M.read (mk_str "b") in
    let* α7 : std.path.PathBuf.t := M.call (std.path.Path.t::["join"] α5 α6) in
    M.alloc α7 in
  let* _ : M.Val unit :=
    let* α0 : ref str.t := M.read (mk_str "c") in
    let* α1 : unit :=
      M.call (std.path.PathBuf.t::["push"] (borrow_mut new_path) α0) in
    M.alloc α1 in
  let* _ : M.Val unit :=
    let* α0 : ref str.t := M.read (mk_str "myfile.tar.gz") in
    let* α1 : unit :=
      M.call (std.path.PathBuf.t::["push"] (borrow_mut new_path) α0) in
    M.alloc α1 in
  let* _ : M.Val unit :=
    let* α0 : ref str.t := M.read (mk_str "package.tgz") in
    let* α1 : unit :=
      M.call (std.path.PathBuf.t::["set_file_name"] (borrow_mut new_path) α0) in
    M.alloc α1 in
  let* α0 : (ref std.path.PathBuf.t) -> M (ref _) :=
    ltac:(M.get_method (fun ℐ =>
      core.ops.deref.Deref.deref (Self := std.path.PathBuf.t) (Trait := ℐ))) in
  let* α1 : ref std.path.Path.t := M.call (α0 (borrow new_path)) in
  let* α2 : core.option.Option.t (ref str.t) :=
    M.call (std.path.Path.t::["to_str"] α1) in
  let* α3 : M.Val (core.option.Option.t (ref str.t)) := M.alloc α2 in
  let* α0 : M.Val unit :=
    match_operator
      α3
      [
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | core.option.Option.None =>
            let* α0 : ref str.t :=
              M.read (mk_str "new path is not a valid UTF-8 sequence") in
            let* α1 : never.t := M.call (std.panicking.begin_panic α0) in
            let* α2 : unit := never_to_any α1 in
            M.alloc α2
          | _ => M.break_match
          end) :
          M (M.Val unit);
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | core.option.Option.Some _ =>
            let γ0_0 := core.option.Option.Get_Some_0 γ in
            let* s := M.copy γ0_0 in
            let* _ : M.Val unit :=
              let* α0 : ref str.t := M.read (mk_str "new path is ") in
              let* α1 : ref str.t := M.read (mk_str "
") in
              let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
              let* α3 : core.fmt.rt.Argument.t :=
                M.call (core.fmt.rt.Argument.t::["new_display"] (borrow s)) in
              let* α4 : M.Val (array core.fmt.rt.Argument.t) :=
                M.alloc [ α3 ] in
              let* α5 : core.fmt.Arguments.t :=
                M.call
                  (core.fmt.Arguments.t::["new_v1"]
                    (pointer_coercion "Unsize" (borrow α2))
                    (pointer_coercion "Unsize" (borrow α4))) in
              let* α6 : unit := M.call (std.io.stdio._print α5) in
              M.alloc α6 in
            M.alloc tt
          | _ => M.break_match
          end) :
          M (M.Val unit)
      ] in
  M.read α0.
