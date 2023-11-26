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
  M.function_body
    (let* path : M.Val (ref std.path.Path.t) :=
      let* α0 : M.Val str.t := deref (mk_str ".") in
      let* α1 : M.Val (ref str.t) := borrow α0 in
      let* α2 := std.path.Path.t::["new"] α1 in
      M.alloc α2 in
    let* _display : M.Val std.path.Display.t :=
      let* α0 : M.Val std.path.Path.t := deref path in
      let* α1 : M.Val (ref std.path.Path.t) := borrow α0 in
      let* α2 := std.path.Path.t::["display"] α1 in
      M.alloc α2 in
    let* new_path : M.Val std.path.PathBuf.t :=
      let* α0 : M.Val std.path.Path.t := deref path in
      let* α1 : M.Val (ref std.path.Path.t) := borrow α0 in
      let* α2 := std.path.Path.t::["join"] α1 (mk_str "a") in
      let* α3 : M.Val std.path.PathBuf.t := M.alloc α2 in
      let* α4 : M.Val (ref std.path.PathBuf.t) := borrow α3 in
      let* α5 :=
        (core.ops.deref.Deref.deref
            (Self := std.path.PathBuf.t)
            (Trait := ltac:(refine _)))
          α4 in
      let* α6 : M.Val (ref std.path.Path.t) := M.alloc α5 in
      let* α7 : M.Val std.path.Path.t := deref α6 in
      let* α8 : M.Val (ref std.path.Path.t) := borrow α7 in
      let* α9 := std.path.Path.t::["join"] α8 (mk_str "b") in
      M.alloc α9 in
    let* _ : M.Val unit :=
      let* α0 : M.Val (mut_ref std.path.PathBuf.t) := borrow_mut new_path in
      let* α1 := std.path.PathBuf.t::["push"] α0 (mk_str "c") in
      M.alloc α1 in
    let* _ : M.Val unit :=
      let* α0 : M.Val (mut_ref std.path.PathBuf.t) := borrow_mut new_path in
      let* α1 := std.path.PathBuf.t::["push"] α0 (mk_str "myfile.tar.gz") in
      M.alloc α1 in
    let* _ : M.Val unit :=
      let* α0 : M.Val (mut_ref std.path.PathBuf.t) := borrow_mut new_path in
      let* α1 :=
        std.path.PathBuf.t::["set_file_name"] α0 (mk_str "package.tgz") in
      M.alloc α1 in
    let* α0 : M.Val (ref std.path.PathBuf.t) := borrow new_path in
    let* α1 :=
      (core.ops.deref.Deref.deref
          (Self := std.path.PathBuf.t)
          (Trait := ltac:(refine _)))
        α0 in
    let* α2 : M.Val (ref std.path.Path.t) := M.alloc α1 in
    let* α3 : M.Val std.path.Path.t := deref α2 in
    let* α4 : M.Val (ref std.path.Path.t) := borrow α3 in
    let* α5 := std.path.Path.t::["to_str"] α4 in
    let* α6 : M.Val (core.option.Option.t (ref str.t)) := M.alloc α5 in
    let* α7 := M.read α6 in
    match α7 with
    | core.option.Option.None  =>
      let* α0 :=
        std.panicking.begin_panic
          (mk_str "new path is not a valid UTF-8 sequence") in
      let* α1 : M.Val never.t := M.alloc α0 in
      never_to_any α1
    | core.option.Option.Some s =>
      let* s := M.alloc s in
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "new path is "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : M.Val (ref (ref str.t)) := borrow s in
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
      M.alloc tt
    end).
