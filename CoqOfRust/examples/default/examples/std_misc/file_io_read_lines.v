(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn read_lines(filename: String) -> io::Lines<BufReader<File>> {
    // Open the file in read-only mode.
    let file = File::open(filename).unwrap();
    // Read the file line by line, and return an iterator of the lines of the file.
    return io::BufReader::new(file).lines();
}
*)
Definition read_lines
    (filename : alloc.string.String.t)
    :
      M
        (std.io.Lines.t
          (std.io.buffered.bufreader.BufReader.t std.fs.File.t)) :=
  let* filename : M.Val alloc.string.String.t := M.alloc filename in
  let return_ :=
    M.return_
      (R :=
        std.io.Lines.t (std.io.buffered.bufreader.BufReader.t std.fs.File.t)) in
  M.catch_return
    (let* file : M.Val std.fs.File.t :=
      let* α0 : alloc.string.String.t := M.read filename in
      let* α1 : core.result.Result.t std.fs.File.t std.io.error.Error.t :=
        M.call (std.fs.File.t::["open"] α0) in
      let* α2 : std.fs.File.t :=
        M.call
          ((core.result.Result.t std.fs.File.t std.io.error.Error.t)::["unwrap"]
            α1) in
      M.alloc α2 in
    let* _ : M.Val never.t :=
      let* α0 : std.fs.File.t := M.read file in
      let* α1 : std.io.buffered.bufreader.BufReader.t std.fs.File.t :=
        M.call
          ((std.io.buffered.bufreader.BufReader.t std.fs.File.t)::["new"] α0) in
      let* α2 :
          std.io.Lines.t
            (std.io.buffered.bufreader.BufReader.t std.fs.File.t) :=
        M.call
          ((std.io.BufRead.lines
              (Self := std.io.buffered.bufreader.BufReader.t std.fs.File.t)
              (Trait := ltac:(refine _)))
            α1) in
      return_ α2 in
    let* α0 : M.Val unit := M.alloc tt in
    let* α1 := M.read α0 in
    never_to_any α1).

(*
fn main() {
    // Stores the iterator of lines of the file in lines variable.
    let lines = read_lines("./hosts".to_string());
    // Iterate over the lines of the file, and in this case print them.
    for line in lines {
        println!("{}", line.unwrap());
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* lines :
      M.Val
        (std.io.Lines.t
          (std.io.buffered.bufreader.BufReader.t std.fs.File.t)) :=
    let* α0 : ref str.t := M.read (mk_str "./hosts") in
    let* α1 : alloc.string.String.t :=
      M.call
        ((alloc.string.ToString.to_string
            (Self := str.t)
            (Trait := ltac:(refine _)))
          α0) in
    let* α2 :
        std.io.Lines.t (std.io.buffered.bufreader.BufReader.t std.fs.File.t) :=
      M.call (file_io_read_lines.read_lines α1) in
    M.alloc α2 in
  let* α0 :
      std.io.Lines.t (std.io.buffered.bufreader.BufReader.t std.fs.File.t) :=
    M.read lines in
  let* α1 :
      std.io.Lines.t (std.io.buffered.bufreader.BufReader.t std.fs.File.t) :=
    M.call
      ((core.iter.traits.collect.IntoIterator.into_iter
          (Self :=
            std.io.Lines.t
              (std.io.buffered.bufreader.BufReader.t std.fs.File.t))
          (Trait := ltac:(refine _)))
        α0) in
  let* α2 : M.Val unit :=
    match α1 with
    | iter =>
      let* iter := M.alloc iter in
      loop
        (let* _ : M.Val unit :=
          let* α0 :
              core.option.Option.t
                (core.result.Result.t
                  alloc.string.String.t
                  std.io.error.Error.t) :=
            M.call
              ((core.iter.traits.iterator.Iterator.next
                  (Self :=
                    std.io.Lines.t
                      (std.io.buffered.bufreader.BufReader.t std.fs.File.t))
                  (Trait := ltac:(refine _)))
                (borrow_mut iter)) in
          match α0 with
          | core.option.Option.None  =>
            let* α0 : M.Val never.t := Break in
            let* α1 := M.read α0 in
            let* α2 : unit := never_to_any α1 in
            M.alloc α2
          | core.option.Option.Some line =>
            let* line := M.alloc line in
            let* _ : M.Val unit :=
              let* _ : M.Val unit :=
                let* α0 : M.Val (array (ref str.t)) :=
                  M.alloc [ mk_str ""; mk_str "
" ] in
                let* α1 : M.Val (ref (array (ref str.t))) :=
                  M.alloc (borrow α0) in
                let* α2 : ref (slice (ref str.t)) :=
                  M.read (pointer_coercion "Unsize" α1) in
                let* α3 :
                    core.result.Result.t
                      alloc.string.String.t
                      std.io.error.Error.t :=
                  M.read line in
                let* α4 : alloc.string.String.t :=
                  M.call
                    ((core.result.Result.t
                          alloc.string.String.t
                          std.io.error.Error.t)::["unwrap"]
                      α3) in
                let* α5 : M.Val alloc.string.String.t := M.alloc α4 in
                let* α6 : core.fmt.rt.Argument.t :=
                  M.call
                    (core.fmt.rt.Argument.t::["new_display"] (borrow α5)) in
                let* α7 : M.Val core.fmt.rt.Argument.t := M.alloc α6 in
                let* α8 : M.Val (array core.fmt.rt.Argument.t) :=
                  M.alloc [ α7 ] in
                let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
                  M.alloc (borrow α8) in
                let* α10 : ref (slice core.fmt.rt.Argument.t) :=
                  M.read (pointer_coercion "Unsize" α9) in
                let* α11 : core.fmt.Arguments.t :=
                  M.call (core.fmt.Arguments.t::["new_v1"] α2 α10) in
                let* α12 : unit := M.call (std.io.stdio._print α11) in
                M.alloc α12 in
              M.alloc tt in
            M.alloc tt
          end in
        M.alloc tt)
    end in
  let* α3 : unit := M.read α2 in
  let* α0 : M.Val unit := M.alloc (use α3) in
  M.read α0.