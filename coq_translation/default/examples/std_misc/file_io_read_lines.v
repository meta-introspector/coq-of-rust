(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition read_lines
    `{State.Trait}
    (filename : alloc.string.String)
    : M (std.io.Lines (std.io.buffered.bufreader.BufReader std.fs.File)) :=
  let* file :=
    let* α0 := std.fs.File::["open"] filename in
    (core.result.Result _ _)::["unwrap"] α0 in
  let* _ :=
    let* α0 := (std.io.buffered.bufreader.BufReader _)::["new"] file in
    let* α1 := std.io.BufRead.lines α0 in
    Return α1 in
  let* α0 := M.alloc tt in
  never_to_any α0.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{State.Trait} : M unit :=
  let* lines :=
    let* α0 := deref (mk_str "./hosts") str in
    let* α1 := borrow α0 str in
    let* α2 := alloc.string.ToString.to_string α1 in
    file_io_read_lines.read_lines α2 in
  let* α0 := core.iter.traits.collect.IntoIterator.into_iter lines in
  let* α1 :=
    match α0 with
    | iter =>
      loop
        (let* _ :=
          let* α0 :=
            borrow_mut
              iter
              (std.io.Lines
                (std.io.buffered.bufreader.BufReader std.fs.File)) in
          let* α1 :=
            deref
              α0
              (std.io.Lines
                (std.io.buffered.bufreader.BufReader std.fs.File)) in
          let* α2 :=
            borrow_mut
              α1
              (std.io.Lines
                (std.io.buffered.bufreader.BufReader std.fs.File)) in
          let* α3 := core.iter.traits.iterator.Iterator.next α2 in
          match α3 with
          | core.option.Option  =>
            let* α0 := Break in
            never_to_any α0
          | core.option.Option line =>
            let* _ :=
              let* _ :=
                let* α0 := borrow [ mk_str ""; mk_str "
" ] (list (ref str)) in
                let* α1 := deref α0 (list (ref str)) in
                let* α2 := borrow α1 (list (ref str)) in
                let* α3 := pointer_coercion "Unsize" α2 in
                let* α4 := (core.result.Result _ _)::["unwrap"] line in
                let* α5 := borrow α4 alloc.string.String in
                let* α6 := deref α5 alloc.string.String in
                let* α7 := borrow α6 alloc.string.String in
                let* α8 := core.fmt.rt.Argument::["new_display"] α7 in
                let* α9 := borrow [ α8 ] (list core.fmt.rt.Argument) in
                let* α10 := deref α9 (list core.fmt.rt.Argument) in
                let* α11 := borrow α10 (list core.fmt.rt.Argument) in
                let* α12 := pointer_coercion "Unsize" α11 in
                let* α13 := core.fmt.Arguments::["new_v1"] α3 α12 in
                std.io.stdio._print α13 in
              M.alloc tt in
            M.alloc tt
          end in
        M.alloc tt)
    end in
  use α1.
