(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    // Create a path to the desired file
    let path = Path::new("hello.txt");
    let display = path.display();

    // Open the path in read-only mode, returns `io::Result<File>`
    let mut file = match File::open(&path) {
        Err(why) => panic!("couldn't open {}: {}", display, why),
        Ok(file) => file,
    };

    // Read the file contents into a string, returns `io::Result<usize>`
    let mut s = String::new();
    match file.read_to_string(&mut s) {
        Err(why) => panic!("couldn't read {}: {}", display, why),
        Ok(_) => print!("{} contains:\n{}", display, s),
    }

    // `file` goes out of scope, and the "hello.txt" file gets closed
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* path : M.Val (ref std.path.Path.t) :=
    let* α0 : ref str.t := M.read (mk_str "hello.txt") in
    let* α1 : ref std.path.Path.t := M.call (std.path.Path.t::["new"] α0) in
    M.alloc α1 in
  let* display : M.Val std.path.Display.t :=
    let* α0 : ref std.path.Path.t := M.read path in
    let* α1 : std.path.Display.t := M.call (std.path.Path.t::["display"] α0) in
    M.alloc α1 in
  let* file : M.Val std.fs.File.t :=
    let* α0 : core.result.Result.t std.fs.File.t std.io.error.Error.t :=
      M.call (std.fs.File.t::["open"] (borrow path)) in
    let* α1 : M.Val std.fs.File.t :=
      match α0 with
      | core.result.Result.Err why =>
        let* why := M.alloc why in
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "couldn't open "; mk_str ": " ] in
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
  let* s : M.Val alloc.string.String.t :=
    let* α0 : alloc.string.String.t := M.call alloc.string.String.t::["new"] in
    M.alloc α0 in
  let* α0 : core.result.Result.t usize.t std.io.error.Error.t :=
    M.call
      ((std.io.Read.read_to_string
          (Self := std.fs.File.t)
          (Trait := ltac:(refine _)))
        (borrow_mut file)
        (borrow_mut s)) in
  let* α0 : M.Val unit :=
    match α0 with
    | core.result.Result.Err why =>
      let* why := M.alloc why in
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "couldn't read "; mk_str ": " ] in
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
          M.alloc [ mk_str ""; mk_str " contains:
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α0) in
        let* α2 : ref (slice (ref str.t)) :=
          M.read (pointer_coercion "Unsize" α1) in
        let* α3 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow display)) in
        let* α4 : M.Val core.fmt.rt.Argument.t := M.alloc α3 in
        let* α5 : core.fmt.rt.Argument.t :=
          M.call (core.fmt.rt.Argument.t::["new_display"] (borrow s)) in
        let* α6 : M.Val core.fmt.rt.Argument.t := M.alloc α5 in
        let* α7 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α4; α6 ] in
        let* α8 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
          M.alloc (borrow α7) in
        let* α9 : ref (slice core.fmt.rt.Argument.t) :=
          M.read (pointer_coercion "Unsize" α8) in
        let* α10 : core.fmt.Arguments.t :=
          M.call (core.fmt.Arguments.t::["new_v1"] α2 α9) in
        let* α11 : unit := M.call (std.io.stdio._print α10) in
        M.alloc α11 in
      M.alloc tt
    end in
  M.read α0.