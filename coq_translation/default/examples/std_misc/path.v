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
Definition main : M (M.Val unit) :=
  M.function_body
    (let* path : ltac:(refine (M.Val (ref std.path.Path.t))) :=
      let* α0 : ltac:(refine (M.Val str)) := deref (mk_str ".") in
      let* α1 : ltac:(refine (M.Val (ref str))) := borrow α0 in
      std.path.Path.t::["new"] α1 in
    let* _display : ltac:(refine (M.Val std.path.Display.t)) :=
      let* α0 : ltac:(refine (M.Val std.path.Path.t)) := deref path in
      let* α1 : ltac:(refine (M.Val (ref std.path.Path.t))) := borrow α0 in
      std.path.Path.t::["display"] α1 in
    let* new_path : ltac:(refine (M.Val std.path.PathBuf.t)) :=
      let* α0 : ltac:(refine (M.Val std.path.Path.t)) := deref path in
      let* α1 : ltac:(refine (M.Val (ref std.path.Path.t))) := borrow α0 in
      let* α2 : ltac:(refine (M.Val std.path.PathBuf.t)) :=
        std.path.Path.t::["join"] α1 (mk_str "a") in
      let* α3 : ltac:(refine (M.Val (ref std.path.PathBuf.t))) := borrow α2 in
      let* α4 : ltac:(refine (M.Val (ref std.path.Path.t))) :=
        (core.ops.deref.Deref.deref
            (Self := std.path.PathBuf.t)
            (Trait := ltac:(refine _)))
          α3 in
      let* α5 : ltac:(refine (M.Val std.path.Path.t)) := deref α4 in
      let* α6 : ltac:(refine (M.Val (ref std.path.Path.t))) := borrow α5 in
      std.path.Path.t::["join"] α6 (mk_str "b") in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* α0 : ltac:(refine (M.Val (mut_ref std.path.PathBuf.t))) :=
        borrow_mut new_path in
      std.path.PathBuf.t::["push"] α0 (mk_str "c") in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* α0 : ltac:(refine (M.Val (mut_ref std.path.PathBuf.t))) :=
        borrow_mut new_path in
      std.path.PathBuf.t::["push"] α0 (mk_str "myfile.tar.gz") in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* α0 : ltac:(refine (M.Val (mut_ref std.path.PathBuf.t))) :=
        borrow_mut new_path in
      std.path.PathBuf.t::["set_file_name"] α0 (mk_str "package.tgz") in
    let* α0 : ltac:(refine (M.Val (ref std.path.PathBuf.t))) :=
      borrow new_path in
    let* α1 : ltac:(refine (M.Val (ref std.path.Path.t))) :=
      (core.ops.deref.Deref.deref
          (Self := std.path.PathBuf.t)
          (Trait := ltac:(refine _)))
        α0 in
    let* α2 : ltac:(refine (M.Val std.path.Path.t)) := deref α1 in
    let* α3 : ltac:(refine (M.Val (ref std.path.Path.t))) := borrow α2 in
    let* α4 : ltac:(refine (M.Val (core.option.Option.t (ref str)))) :=
      std.path.Path.t::["to_str"] α3 in
    let* α5 := M.read α4 in
    match α5 with
    | core.option.Option.None  =>
      let* α0 : ltac:(refine (M.Val never.t)) :=
        std.panicking.begin_panic
          (mk_str "new path is not a valid UTF-8 sequence") in
      never_to_any α0
    | core.option.Option.Some s =>
      let* s := M.alloc s in
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
          M.alloc [ mk_str "new path is "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str))))) := borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref (ref str)))) := borrow s in
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
