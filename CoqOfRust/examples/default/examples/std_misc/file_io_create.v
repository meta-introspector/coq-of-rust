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
  M.function_body
    (let* path : M.Val (ref std.path.Path.t) :=
      let* α0 := M.read (mk_str "lorem_ipsum.txt") in
      let* α1 : M.Val str.t := deref α0 in
      let* α2 : ref str.t := borrow α1 in
      let* α3 : ref std.path.Path.t := std.path.Path.t::["new"] α2 in
      M.alloc α3 in
    let* display : M.Val std.path.Display.t :=
      let* α0 := M.read path in
      let* α1 : M.Val std.path.Path.t := deref α0 in
      let* α2 : ref std.path.Path.t := borrow α1 in
      let* α3 : std.path.Display.t := std.path.Path.t::["display"] α2 in
      M.alloc α3 in
    let* file : M.Val std.fs.File.t :=
      let* α0 : ref (ref std.path.Path.t) := borrow path in
      let* α1 : core.result.Result.t std.fs.File.t std.io.error.Error.t :=
        std.fs.File.t::["create"] α0 in
      let* α2 :
          M.Val (core.result.Result.t std.fs.File.t std.io.error.Error.t) :=
        M.alloc α1 in
      let* α3 := M.read α2 in
      let* α4 : M.Val std.fs.File.t :=
        match α3 with
        | core.result.Result.Err why =>
          let* why := M.alloc why in
          let* α0 : M.Val (array (ref str.t)) :=
            M.alloc [ mk_str "couldn't create "; mk_str ": " ] in
          let* α1 : ref (array (ref str.t)) := borrow α0 in
          let* α2 : M.Val (array (ref str.t)) := deref α1 in
          let* α3 : ref (array (ref str.t)) := borrow α2 in
          let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
          let* α5 : M.Val (ref (slice (ref str.t))) :=
            pointer_coercion "Unsize" α4 in
          let* α6 := M.read α5 in
          let* α7 : ref std.path.Display.t := borrow display in
          let* α8 : M.Val std.path.Display.t := deref α7 in
          let* α9 : ref std.path.Display.t := borrow α8 in
          let* α10 : core.fmt.rt.Argument.t :=
            core.fmt.rt.Argument.t::["new_display"] α9 in
          let* α11 : M.Val core.fmt.rt.Argument.t := M.alloc α10 in
          let* α12 : ref std.io.error.Error.t := borrow why in
          let* α13 : M.Val std.io.error.Error.t := deref α12 in
          let* α14 : ref std.io.error.Error.t := borrow α13 in
          let* α15 : core.fmt.rt.Argument.t :=
            core.fmt.rt.Argument.t::["new_display"] α14 in
          let* α16 : M.Val core.fmt.rt.Argument.t := M.alloc α15 in
          let* α17 : M.Val (array core.fmt.rt.Argument.t) :=
            M.alloc [ α11; α16 ] in
          let* α18 : ref (array core.fmt.rt.Argument.t) := borrow α17 in
          let* α19 : M.Val (array core.fmt.rt.Argument.t) := deref α18 in
          let* α20 : ref (array core.fmt.rt.Argument.t) := borrow α19 in
          let* α21 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
            M.alloc α20 in
          let* α22 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
            pointer_coercion "Unsize" α21 in
          let* α23 := M.read α22 in
          let* α24 : core.fmt.Arguments.t :=
            core.fmt.Arguments.t::["new_v1"] α6 α23 in
          let* α25 : never.t := core.panicking.panic_fmt α24 in
          let* α26 : M.Val never.t := M.alloc α25 in
          never_to_any α26
        | core.result.Result.Ok file =>
          let* file := M.alloc file in
          M.pure file
        end in
      M.copy α4 in
    let* α0 : mut_ref std.fs.File.t := borrow_mut file in
    let* α1 := M.read file_io_create.LOREM_IPSUM in
    let* α2 : M.Val (ref str.t) := deref α1 in
    let* α3 := M.read α2 in
    let* α4 : M.Val str.t := deref α3 in
    let* α5 : ref str.t := borrow α4 in
    let* α6 : ref (slice u8.t) := str.t::["as_bytes"] α5 in
    let* α7 : M.Val (slice u8.t) := deref α6 in
    let* α8 : ref (slice u8.t) := borrow α7 in
    let* α9 : core.result.Result.t unit std.io.error.Error.t :=
      (std.io.Write.write_all
          (Self := std.fs.File.t)
          (Trait := ltac:(refine _)))
        α0
        α8 in
    let* α10 : M.Val (core.result.Result.t unit std.io.error.Error.t) :=
      M.alloc α9 in
    let* α11 := M.read α10 in
    match α11 with
    | core.result.Result.Err why =>
      let* why := M.alloc why in
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "couldn't write to "; mk_str ": " ] in
      let* α1 : ref (array (ref str.t)) := borrow α0 in
      let* α2 : M.Val (array (ref str.t)) := deref α1 in
      let* α3 : ref (array (ref str.t)) := borrow α2 in
      let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
      let* α5 : M.Val (ref (slice (ref str.t))) :=
        pointer_coercion "Unsize" α4 in
      let* α6 := M.read α5 in
      let* α7 : ref std.path.Display.t := borrow display in
      let* α8 : M.Val std.path.Display.t := deref α7 in
      let* α9 : ref std.path.Display.t := borrow α8 in
      let* α10 : core.fmt.rt.Argument.t :=
        core.fmt.rt.Argument.t::["new_display"] α9 in
      let* α11 : M.Val core.fmt.rt.Argument.t := M.alloc α10 in
      let* α12 : ref std.io.error.Error.t := borrow why in
      let* α13 : M.Val std.io.error.Error.t := deref α12 in
      let* α14 : ref std.io.error.Error.t := borrow α13 in
      let* α15 : core.fmt.rt.Argument.t :=
        core.fmt.rt.Argument.t::["new_display"] α14 in
      let* α16 : M.Val core.fmt.rt.Argument.t := M.alloc α15 in
      let* α17 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α11; α16 ] in
      let* α18 : ref (array core.fmt.rt.Argument.t) := borrow α17 in
      let* α19 : M.Val (array core.fmt.rt.Argument.t) := deref α18 in
      let* α20 : ref (array core.fmt.rt.Argument.t) := borrow α19 in
      let* α21 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α20 in
      let* α22 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
        pointer_coercion "Unsize" α21 in
      let* α23 := M.read α22 in
      let* α24 : core.fmt.Arguments.t :=
        core.fmt.Arguments.t::["new_v1"] α6 α23 in
      let* α25 : never.t := core.panicking.panic_fmt α24 in
      let* α26 : M.Val never.t := M.alloc α25 in
      never_to_any α26
    | core.result.Result.Ok _ =>
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "successfully wrote to "; mk_str "
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 : ref std.path.Display.t := borrow display in
        let* α8 : M.Val std.path.Display.t := deref α7 in
        let* α9 : ref std.path.Display.t := borrow α8 in
        let* α10 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_display"] α9 in
        let* α11 : M.Val core.fmt.rt.Argument.t := M.alloc α10 in
        let* α12 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α11 ] in
        let* α13 : ref (array core.fmt.rt.Argument.t) := borrow α12 in
        let* α14 : M.Val (array core.fmt.rt.Argument.t) := deref α13 in
        let* α15 : ref (array core.fmt.rt.Argument.t) := borrow α14 in
        let* α16 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α15 in
        let* α17 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α16 in
        let* α18 := M.read α17 in
        let* α19 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α6 α18 in
        let* α20 : unit := std.io.stdio._print α19 in
        M.alloc α20 in
      M.alloc tt
    end).
