(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition LOREM_IPSUM : ref str.t :=
  M.run
    (M.pure
      (mk_str
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
")).

(*
fn main() {
    let path = Path::new("lorem_ipsum.txt");
    let display = path.display();

    // Open a file in write-only mode, returns `io::Result<File>`
    let mut file = match File::create(&path) {
        Err(why) => panic!("couldn't create {}: {}", display, why),
        Ok(file) => file,
    };

    // Write the `LOREM_IPSUM` string to `file`, returns `io::Result<()>`
    match file.write_all(LOREM_IPSUM.as_bytes()) {
        Err(why) => panic!("couldn't write to {}: {}", display, why),
        Ok(_) => println!("successfully wrote to {}", display),
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M (M.Val unit) :=
  M.function_body
    (let* path : ltac:(refine (M.Val (ref std.path.Path.t))) :=
      let* α0 : ltac:(refine (M.Val str.t)) :=
        deref (mk_str "lorem_ipsum.txt") in
      let* α1 : ltac:(refine (M.Val (ref str.t))) := borrow α0 in
      let* α2 : ltac:(refine (M.Val (ref std.path.Path.t))) :=
        std.path.Path.t::["new"] α1 in
      M.copy α2 in
    let* display : ltac:(refine (M.Val std.path.Display.t)) :=
      let* α0 : ltac:(refine (M.Val std.path.Path.t)) := deref path in
      let* α1 : ltac:(refine (M.Val (ref std.path.Path.t))) := borrow α0 in
      let* α2 : ltac:(refine (M.Val std.path.Display.t)) :=
        std.path.Path.t::["display"] α1 in
      M.copy α2 in
    let* file : ltac:(refine (M.Val std.fs.File.t)) :=
      let* α0 : ltac:(refine (M.Val (ref (ref std.path.Path.t)))) :=
        borrow path in
      let* α1 :
          ltac:(refine
            (M.Val
              (core.result.Result.t std.fs.File.t std.io.error.Error.t))) :=
        std.fs.File.t::["create"] α0 in
      let* α2 := M.read α1 in
      let* α3 : ltac:(refine (M.Val std.fs.File.t)) :=
        match α2 with
        | core.result.Result.Err why =>
          let* why := M.alloc why in
          let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
            M.alloc [ mk_str "couldn't create "; mk_str ": " ] in
          let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
            borrow α0 in
          let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
            pointer_coercion "Unsize" α1 in
          let* α3 : ltac:(refine (M.Val (ref std.path.Display.t))) :=
            borrow display in
          let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
            core.fmt.rt.Argument.t::["new_display"] α3 in
          let* α5 : ltac:(refine (M.Val (ref std.io.error.Error.t))) :=
            borrow why in
          let* α6 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
            core.fmt.rt.Argument.t::["new_display"] α5 in
          let* α7 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
            M.alloc [ α4; α6 ] in
          let* α8 :
              ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
            borrow α7 in
          let* α9 :
              ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
            pointer_coercion "Unsize" α8 in
          let* α10 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
            core.fmt.Arguments.t::["new_v1"] α2 α9 in
          let* α11 : ltac:(refine (M.Val never.t)) :=
            core.panicking.panic_fmt α10 in
          never_to_any α11
        | core.result.Result.Ok file =>
          let* file := M.alloc file in
          M.pure file
        end in
      M.copy α3 in
    let* α0 : ltac:(refine (M.Val (mut_ref std.fs.File.t))) :=
      borrow_mut file in
    let* α1 : ltac:(refine (M.Val (ref str.t))) :=
      deref file_io_create.LOREM_IPSUM in
    let* α2 : ltac:(refine (M.Val str.t)) := deref α1 in
    let* α3 : ltac:(refine (M.Val (ref str.t))) := borrow α2 in
    let* α4 : ltac:(refine (M.Val (ref (slice u8.t)))) :=
      str.t::["as_bytes"] α3 in
    let* α5 : ltac:(refine (M.Val (slice u8.t))) := deref α4 in
    let* α6 : ltac:(refine (M.Val (ref (slice u8.t)))) := borrow α5 in
    let* α7 :
        ltac:(refine
          (M.Val (core.result.Result.t unit std.io.error.Error.t))) :=
      (std.io.Write.write_all
          (Self := std.fs.File.t)
          (Trait := ltac:(refine _)))
        α0
        α6 in
    let* α8 := M.read α7 in
    match α8 with
    | core.result.Result.Err why =>
      let* why := M.alloc why in
      let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
        M.alloc [ mk_str "couldn't write to "; mk_str ": " ] in
      let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) := borrow α0 in
      let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
        pointer_coercion "Unsize" α1 in
      let* α3 : ltac:(refine (M.Val (ref std.path.Display.t))) :=
        borrow display in
      let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
        core.fmt.rt.Argument.t::["new_display"] α3 in
      let* α5 : ltac:(refine (M.Val (ref std.io.error.Error.t))) :=
        borrow why in
      let* α6 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
        core.fmt.rt.Argument.t::["new_display"] α5 in
      let* α7 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
        M.alloc [ α4; α6 ] in
      let* α8 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
        borrow α7 in
      let* α9 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
        pointer_coercion "Unsize" α8 in
      let* α10 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
        core.fmt.Arguments.t::["new_v1"] α2 α9 in
      let* α11 : ltac:(refine (M.Val never.t)) :=
        core.panicking.panic_fmt α10 in
      never_to_any α11
    | core.result.Result.Ok _ =>
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "successfully wrote to "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref std.path.Display.t))) :=
          borrow display in
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
