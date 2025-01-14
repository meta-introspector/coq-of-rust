(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    let args: Vec<String> = env::args().collect();

    // The first argument is the path that was used to call the program.
    println!("My path is {}.", args[0]);

    // The rest of the arguments are the passed command line parameters.
    // Call the program like this:
    //   $ ./args arg1 arg2
    println!("I got {:?} arguments: {:?}.", args.len() - 1, &args[1..]);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* args :
      M.Val (alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t) :=
    let* α0 :
        std.env.Args.t ->
          M (alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t) :=
      ltac:(M.get_method (fun ℐ =>
        core.iter.traits.iterator.Iterator.collect
          (Self := std.env.Args.t)
          (B := alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t)
          (Trait := ℐ))) in
    let* α1 : std.env.Args.t := M.call std.env.args in
    let* α2 : alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t :=
      M.call (α0 α1) in
    M.alloc α2 in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "My path is ") in
      let* α1 : ref str.t := M.read (mk_str ".
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 :
          (ref (alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t)) ->
            usize.t ->
            M (ref _) :=
        ltac:(M.get_method (fun ℐ =>
          core.ops.index.Index.index
            (Self := alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t)
            (Idx := usize.t)
            (Trait := ℐ))) in
      let* α4 : ref alloc.string.String.t :=
        M.call (α3 (borrow args) ((Integer.of_Z 0) : usize.t)) in
      let* α5 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] α4) in
      let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
      let* α7 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α6))) in
      let* α8 : unit := M.call (std.io.stdio._print α7) in
      M.alloc α8 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "I got ") in
      let* α1 : ref str.t := M.read (mk_str " arguments: ") in
      let* α2 : ref str.t := M.read (mk_str ".
") in
      let* α3 : M.Val (array (ref str.t)) := M.alloc [ α0; α1; α2 ] in
      let* α4 : usize.t :=
        M.call
          ((alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t)::["len"]
            (borrow args)) in
      let* α5 : usize.t := BinOp.Panic.sub α4 ((Integer.of_Z 1) : usize.t) in
      let* α6 : M.Val usize.t := M.alloc α5 in
      let* α7 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow α6)) in
      let* α8 :
          (ref (alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t)) ->
            (core.ops.range.RangeFrom.t usize.t) ->
            M (ref _) :=
        ltac:(M.get_method (fun ℐ =>
          core.ops.index.Index.index
            (Self := alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t)
            (Idx := core.ops.range.RangeFrom.t usize.t)
            (Trait := ℐ))) in
      let* α9 : ref (slice alloc.string.String.t) :=
        M.call
          (α8
            (borrow args)
            {| core.ops.range.RangeFrom.start := (Integer.of_Z 1) : usize.t;
            |}) in
      let* α10 : M.Val (ref (slice alloc.string.String.t)) := M.alloc α9 in
      let* α11 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow α10)) in
      let* α12 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7; α11 ] in
      let* α13 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α3))
            (pointer_coercion "Unsize" (borrow α12))) in
      let* α14 : unit := M.call (std.io.stdio._print α13) in
      M.alloc α14 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
