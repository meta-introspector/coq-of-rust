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
      let* α1 :=
        (core.iter.traits.iterator.Iterator.collect
            (Self := std.env.Args.t)
            (Trait := ltac:(refine _)))
          α0 in
      M.alloc α1 in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "My path is "; mk_str ".
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := M.read α2 in
        let* α4 :
            M.Val
              (ref
                (alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t)) :=
          borrow args in
        let* α5 := M.read α4 in
        let* α6 : M.Val usize.t := M.alloc 0 in
        let* α7 := M.read α6 in
        let* α8 :=
          (core.ops.index.Index.index
              (Self :=
                alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t)
              (Trait := ltac:(refine _)))
            α5
            α7 in
        let* α9 : M.Val (ref alloc.string.String.t) := M.alloc α8 in
        let* α10 : M.Val alloc.string.String.t := deref α9 in
        let* α11 : M.Val (ref alloc.string.String.t) := borrow α10 in
        let* α12 := M.read α11 in
        let* α13 := core.fmt.rt.Argument.t::["new_display"] α12 in
        let* α14 : M.Val core.fmt.rt.Argument.t := M.alloc α13 in
        let* α15 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α14 ] in
        let* α16 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α15 in
        let* α17 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α16 in
        let* α18 := M.read α17 in
        let* α19 := core.fmt.Arguments.t::["new_v1"] α3 α18 in
        let* α20 := std.io.stdio._print α19 in
        M.alloc α20 in
      M.alloc tt in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str "I got "; mk_str " arguments: "; mk_str ".
" ] in
        let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
        let* α2 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := M.read α2 in
        let* α4 :
            M.Val
              (ref
                (alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t)) :=
          borrow args in
        let* α5 := M.read α4 in
        let* α6 :=
          (alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t)::["len"]
            α5 in
        let* α7 : M.Val usize.t := M.alloc α6 in
        let* α8 : M.Val usize.t := M.alloc 1 in
        let* α9 : M.Val usize.t := BinOp.sub α7 α8 in
        let* α10 : M.Val (ref usize.t) := borrow α9 in
        let* α11 := M.read α10 in
        let* α12 := core.fmt.rt.Argument.t::["new_debug"] α11 in
        let* α13 : M.Val core.fmt.rt.Argument.t := M.alloc α12 in
        let* α14 :
            M.Val
              (ref
                (alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t)) :=
          borrow args in
        let* α15 := M.read α14 in
        let* α16 : M.Val usize.t := M.alloc 1 in
        let* α17 := M.read α16 in
        let* α18 :=
          (core.ops.index.Index.index
              (Self :=
                alloc.vec.Vec.t alloc.string.String.t alloc.alloc.Global.t)
              (Trait := ltac:(refine _)))
            α15
            {| core.ops.range.RangeFrom.start := α17; |} in
        let* α19 : M.Val (ref (slice alloc.string.String.t)) := M.alloc α18 in
        let* α20 : M.Val (slice alloc.string.String.t) := deref α19 in
        let* α21 : M.Val (ref (slice alloc.string.String.t)) := borrow α20 in
        let* α22 : M.Val (ref (ref (slice alloc.string.String.t))) :=
          borrow α21 in
        let* α23 := M.read α22 in
        let* α24 := core.fmt.rt.Argument.t::["new_debug"] α23 in
        let* α25 : M.Val core.fmt.rt.Argument.t := M.alloc α24 in
        let* α26 : M.Val (array core.fmt.rt.Argument.t) :=
          M.alloc [ α13; α25 ] in
        let* α27 : M.Val (ref (array core.fmt.rt.Argument.t)) := borrow α26 in
        let* α28 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α27 in
        let* α29 := M.read α28 in
        let* α30 := core.fmt.Arguments.t::["new_v1"] α3 α29 in
        let* α31 := std.io.stdio._print α30 in
        M.alloc α31 in
      M.alloc tt in
    M.alloc tt).
