(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition LOREM_IPSUM : M.Val (ref str.t) :=
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
    let* α1 : M.Val (core.result.Result.t std.fs.File.t std.io.error.Error.t) :=
      M.alloc α0 in
    let* α2 : M.Val std.fs.File.t :=
      match_operator
        α1
        [
          fun γ =>
            (let* α0 := M.read γ in
            match α0 with
            | core.result.Result.Err _ =>
              let γ0_0 := γ.["Err.0"] in
              let* why := M.copy γ0_0 in
              let* α0 : ref str.t := M.read (mk_str "couldn't create ") in
              let* α1 : ref str.t := M.read (mk_str ": ") in
              let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
              let* α3 : M.Val (ref (array (ref str.t))) :=
                M.alloc (borrow α2) in
              let* α4 : ref (slice (ref str.t)) :=
                M.read (pointer_coercion "Unsize" α3) in
              let* α5 : core.fmt.rt.Argument.t :=
                M.call
                  (core.fmt.rt.Argument.t::["new_display"] (borrow display)) in
              let* α6 : core.fmt.rt.Argument.t :=
                M.call (core.fmt.rt.Argument.t::["new_display"] (borrow why)) in
              let* α7 : M.Val (array core.fmt.rt.Argument.t) :=
                M.alloc [ α5; α6 ] in
              let* α8 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
                M.alloc (borrow α7) in
              let* α9 : ref (slice core.fmt.rt.Argument.t) :=
                M.read (pointer_coercion "Unsize" α8) in
              let* α10 : core.fmt.Arguments.t :=
                M.call (core.fmt.Arguments.t::["new_v1"] α4 α9) in
              let* α11 : never.t := M.call (core.panicking.panic_fmt α10) in
              let* α12 : std.fs.File.t := never_to_any α11 in
              M.alloc α12
            | _ => M.break_match
            end) :
            M (M.Val std.fs.File.t);
          fun γ =>
            (let* α0 := M.read γ in
            match α0 with
            | core.result.Result.Ok _ =>
              let γ0_0 := γ.["Ok.0"] in
              let* file := M.copy γ0_0 in
              M.pure file
            | _ => M.break_match
            end) :
            M (M.Val std.fs.File.t)
        ] in
    M.copy α2 in
  let* α0 : _ :=
    ltac:(M.get_method (fun ℐ =>
      std.io.Write.write_all (Self := std.fs.File.t) (Trait := ℐ))) in
  let* α1 : ref (ref str.t) := M.read file_io_create.LOREM_IPSUM in
  let* α2 : ref str.t := M.read (deref α1) in
  let* α3 : ref (slice u8.t) := M.call (str.t::["as_bytes"] α2) in
  let* α4 : core.result.Result.t unit std.io.error.Error.t :=
    M.call (α0 (borrow_mut file) α3) in
  let* α5 : M.Val (core.result.Result.t unit std.io.error.Error.t) :=
    M.alloc α4 in
  let* α0 : M.Val unit :=
    match_operator
      α5
      [
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | core.result.Result.Err _ =>
            let γ0_0 := γ.["Err.0"] in
            let* why := M.copy γ0_0 in
            let* α0 : ref str.t := M.read (mk_str "couldn't write to ") in
            let* α1 : ref str.t := M.read (mk_str ": ") in
            let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
            let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
            let* α4 : ref (slice (ref str.t)) :=
              M.read (pointer_coercion "Unsize" α3) in
            let* α5 : core.fmt.rt.Argument.t :=
              M.call
                (core.fmt.rt.Argument.t::["new_display"] (borrow display)) in
            let* α6 : core.fmt.rt.Argument.t :=
              M.call (core.fmt.rt.Argument.t::["new_display"] (borrow why)) in
            let* α7 : M.Val (array core.fmt.rt.Argument.t) :=
              M.alloc [ α5; α6 ] in
            let* α8 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
              M.alloc (borrow α7) in
            let* α9 : ref (slice core.fmt.rt.Argument.t) :=
              M.read (pointer_coercion "Unsize" α8) in
            let* α10 : core.fmt.Arguments.t :=
              M.call (core.fmt.Arguments.t::["new_v1"] α4 α9) in
            let* α11 : never.t := M.call (core.panicking.panic_fmt α10) in
            let* α12 : unit := never_to_any α11 in
            M.alloc α12
          | _ => M.break_match
          end) :
          M (M.Val unit);
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | core.result.Result.Ok _ =>
            let γ0_0 := γ.["Ok.0"] in
            let* _ : M.Val unit :=
              let* α0 : ref str.t := M.read (mk_str "successfully wrote to ") in
              let* α1 : ref str.t := M.read (mk_str "
") in
              let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
              let* α3 : M.Val (ref (array (ref str.t))) :=
                M.alloc (borrow α2) in
              let* α4 : ref (slice (ref str.t)) :=
                M.read (pointer_coercion "Unsize" α3) in
              let* α5 : core.fmt.rt.Argument.t :=
                M.call
                  (core.fmt.rt.Argument.t::["new_display"] (borrow display)) in
              let* α6 : M.Val (array core.fmt.rt.Argument.t) :=
                M.alloc [ α5 ] in
              let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
                M.alloc (borrow α6) in
              let* α8 : ref (slice core.fmt.rt.Argument.t) :=
                M.read (pointer_coercion "Unsize" α7) in
              let* α9 : core.fmt.Arguments.t :=
                M.call (core.fmt.Arguments.t::["new_v1"] α4 α8) in
              let* α10 : unit := M.call (std.io.stdio._print α9) in
              M.alloc α10 in
            M.alloc tt
          | _ => M.break_match
          end) :
          M (M.Val unit)
      ] in
  M.read α0.
