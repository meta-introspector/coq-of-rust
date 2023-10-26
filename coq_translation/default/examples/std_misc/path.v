(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  let* path :=
    let* α0 := deref (mk_str ".") str in
    let* α1 := borrow α0 str in
    std.path.Path::["new"] α1 in
  let* _display :=
    let* α0 := deref path std.path.Path in
    let* α1 := borrow α0 std.path.Path in
    std.path.Path::["display"] α1 in
  let* new_path :=
    let* α0 := deref path std.path.Path in
    let* α1 := borrow α0 std.path.Path in
    let* α2 := std.path.Path::["join"] α1 (mk_str "a") in
    let* α3 := borrow α2 std.path.PathBuf in
    let* α4 := (core.ops.deref.Deref.deref (Self := std.path.PathBuf)) α3 in
    let* α5 := deref α4 std.path.Path in
    let* α6 := borrow α5 std.path.Path in
    std.path.Path::["join"] α6 (mk_str "b") in
  let* _ :=
    let* α0 := borrow_mut new_path std.path.PathBuf in
    std.path.PathBuf::["push"] α0 (mk_str "c") in
  let* _ :=
    let* α0 := borrow_mut new_path std.path.PathBuf in
    std.path.PathBuf::["push"] α0 (mk_str "myfile.tar.gz") in
  let* _ :=
    let* α0 := borrow_mut new_path std.path.PathBuf in
    std.path.PathBuf::["set_file_name"] α0 (mk_str "package.tgz") in
  let* α0 := borrow new_path std.path.PathBuf in
  let* α1 := (core.ops.deref.Deref.deref (Self := std.path.PathBuf)) α0 in
  let* α2 := deref α1 std.path.Path in
  let* α3 := borrow α2 std.path.Path in
  let* α4 := std.path.Path::["to_str"] α3 in
  match α4 with
  | core.option.Option  =>
    let* α0 :=
      std.panicking.begin_panic
        (mk_str "new path is not a valid UTF-8 sequence") in
    never_to_any α0
  | core.option.Option s =>
    let* _ :=
      let* α0 :=
        borrow [ mk_str "new path is "; mk_str "
" ] (list (ref str)) in
      let* α1 := deref α0 (list (ref str)) in
      let* α2 := borrow α1 (list (ref str)) in
      let* α3 := pointer_coercion "Unsize" α2 in
      let* α4 := borrow s (ref str) in
      let* α5 := deref α4 (ref str) in
      let* α6 := borrow α5 (ref str) in
      let* α7 := core.fmt.rt.Argument::["new_display"] α6 in
      let* α8 := borrow [ α7 ] (list core.fmt.rt.Argument) in
      let* α9 := deref α8 (list core.fmt.rt.Argument) in
      let* α10 := borrow α9 (list core.fmt.rt.Argument) in
      let* α11 := pointer_coercion "Unsize" α10 in
      let* α12 := core.fmt.Arguments::["new_v1"] α3 α11 in
      std.io.stdio._print α12 in
    M.alloc tt
  end.
