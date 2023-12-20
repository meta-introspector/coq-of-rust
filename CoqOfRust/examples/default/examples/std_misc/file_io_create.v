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
Definition main : M unit :=
  let* path : M.Val (ref std.path.Path.t) :=
    let* α0 : ref str.t := M.read (mk_str "lorem_ipsum.txt") in
    let* α1 : ref std.path.Path.t := M.call (std.path.Path.t::["new"] α0) in
    M.alloc α1 in
  let* display : M.Val std.path.Display.t :=
    let* α0 : ref std.path.Path.t := M.read path in
    let* α1 : std.path.Display.t := M.call (std.path.Path.t::["display"] α0) in
    M.alloc α1 in
  let* file : M.Val std.fs.File.t :=
    let* α0 : core.result.Result.t std.fs.File.t std.io.error.Error.t :=
      M.call (std.fs.File.t::["create"] (borrow path)) in
    let* α1 : M.Val std.fs.File.t :=
      match α0 with
      | core.result.Result.Err why =>
        let* why := M.alloc why in
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "couldn't create "; mk_str ": " ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow display)) in
        let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
        let* α5 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow why)) in
        let* α6 : M.Val core.fmt.rt.Argument.t := M.alloc α5 in
        let* α7 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4; α6 ] in
        let* α8 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α7) in
        let* α9 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α8) in
        let* α10 : core.fmt.Arguments.t :=
          M.call (core.fmt.Arguments.t::["new_v1"] α2 α9) in
        let* α11 : never.t := M.call (core.panicking.panic_fmt α10) in
        let* α12 : std.fs.File.t := never_to_any α11 in
        M.alloc α12
      | core.result.Result.Ok file =>
        let* file := M.alloc file in
        M.pure file
      end in
    M.copy α1 in
  let* α0 : ref (ref str.t) := M.read file_io_create.LOREM_IPSUM in
  let* α1 : ref str.t := M.read (deref α0) in
  let* α2 : ref (slice u8.t) := M.call (str.t::["as_bytes"] α1) in
  let* α3 : core.result.Result.t unit std.io.error.Error.t :=
    M.call
      ((std.io.Write.write_all
          (Self := std.fs.File.t)
          (Trait := ltac:(refine _)))
        (borrow_mut file)
        α2) in
  let* α0 : M.Val unit :=
    match α3 with
    | core.result.Result.Err why =>
      let* why := M.alloc why in
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "couldn't write to "; mk_str ": " ] in
      let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
      let* α2 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α1) in
      let* α3 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow display)) in
      let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
      let* α5 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow why)) in
      let* α6 : M.Val core.fmt.rt.Argument.t := M.alloc α5 in
      let* α7 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4; α6 ] in
      let* α8 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α7) in
      let* α9 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α8) in
      let* α10 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α2 α9) in
      let* α11 : never.t := M.call (core.panicking.panic_fmt α10) in
      let* α12 : unit := never_to_any α11 in
      M.alloc α12
    | core.result.Result.Ok _ =>
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "successfully wrote to "; mk_str "
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow display)) in
        let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
        let* α5 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4 ] in
        let* α6 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α5) in
        let* α7 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α6) in
        let* α8 : core.fmt.Arguments.t :=
          M.call (core.fmt.Arguments.t::["new_v1"] α2 α7) in
        let* α9 : unit := M.call (std.io.stdio._print α8) in
        M.alloc α9 in
      M.alloc tt
    end in
  M.read α0.