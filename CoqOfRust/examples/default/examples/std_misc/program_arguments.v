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
  M.function_body
    (let* args :
        M.Val (alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t) :=
      let* α0 := std.env.args in
      let* α1 : M.Val std.env.Args.t := M.alloc α0 in
      let* α2 :=
        (core.iter.traits.iterator.Iterator.collect
            (Self := std.env.Args.t)
            (Trait := ltac:(refine _)))
          α1 in
      M.alloc α2 in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "My path is "; mk_str ".
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 :
            M.Val
              (ref
                (alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t)) :=
          borrow args in
        let* α4 : M.Val usize.t := M.alloc 0 in
        let* α5 :=
          (core.ops.index.Index.index
              (Self :=
                alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t)
              (Trait := ltac:(refine _)))
            α3
            α4 in
        let* α6 : M.Val (ref alloc.string.String.t) := M.alloc α5 in
        let* α7 : M.Val alloc.string.String.t := deref α6 in
        let* α8 : M.Val (ref alloc.string.String.t) := borrow α7 in
        let* α9 := core.fmt.rt.Argument.t::["new_display"] α8 in
        let* α10 : M.Val core.fmt.rt.Argument.t := M.alloc α9 in
        let* α11 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α10 ] in
        let* α12 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α11 in
        let* α13 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α12 in
        let* α14 := core.fmt.Arguments.t::["new_v1"] α2 α13 in
        let* α15 : M.Val core.fmt.Arguments.t := M.alloc α14 in
        let* α16 := std.io.stdio._print α15 in
        M.alloc α16 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "I got "; mk_str " arguments: "; mk_str ".
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 :
            M.Val
              (ref
                (alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t)) :=
          borrow args in
        let* α4 :=
          (alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t)::["len"]
            α3 in
        let* α5 : M.Val usize.t := M.alloc α4 in
        let* α6 : M.Val usize.t := M.alloc 1 in
        let* α7 : M.Val usize.t := BinOp.sub α5 α6 in
        let* α8 : M.Val (ref usize.t) := borrow α7 in
        let* α9 := core.fmt.rt.Argument.t::["new_debug"] α8 in
        let* α10 : M.Val core.fmt.rt.Argument.t := M.alloc α9 in
        let* α11 :
            M.Val
              (ref
                (alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t)) :=
          borrow args in
        let* α12 : M.Val usize.t := M.alloc 1 in
        let* α13 := M.read α12 in
        let* α14 : M.Val (core.ops.range.RangeFrom.t usize.t) :=
          M.alloc {| core.ops.range.RangeFrom.start := α13; |} in
        let* α15 :=
          (core.ops.index.Index.index
              (Self :=
                alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t)
              (Trait := ltac:(refine _)))
            α11
            α14 in
        let* α16 : M.Val (ref (slice alloc.string.String.t)) := M.alloc α15 in
        let* α17 : M.Val (slice alloc.string.String.t) := deref α16 in
        let* α18 : M.Val (ref (slice alloc.string.String.t)) := borrow α17 in
        let* α19 : M.Val (ref (ref (slice alloc.string.String.t))) :=
          borrow α18 in
        let* α20 := core.fmt.rt.Argument.t::["new_debug"] α19 in
        let* α21 : M.Val core.fmt.rt.Argument.t := M.alloc α20 in
        let* α22 : M.Val (array core.fmt.rt.Argument.t) :=
          M.alloc [ α10; α21 ] in
        let* α23 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α22 in
        let* α24 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α23 in
        let* α25 := core.fmt.Arguments.t::["new_v1"] α2 α24 in
        let* α26 : M.Val core.fmt.Arguments.t := M.alloc α25 in
        let* α27 := std.io.stdio._print α26 in
        M.alloc α27 in
      M.alloc tt in
    M.alloc tt).
