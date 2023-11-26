(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    let strings = vec!["tofu", "93", "18"];
    let numbers: Vec<_> = strings.into_iter().map(|s| s.parse::<i32>()).collect();
    println!("Results: {:?}", numbers);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* strings : M.Val (alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t) :=
    let* α0 : ref str.t := M.read (mk_str "93") in
    let* α1 : M.Val (ref str.t) := M.alloc α0 in
    let* α2 : ref str.t := M.read (mk_str "18") in
    let* α3 : M.Val (ref str.t) := M.alloc α2 in
    let* α4 : M.Val (array (ref str.t)) := M.alloc [ mk_str "tofu"; α1; α3 ] in
    let* α5 :
        M.Val (alloc.boxed.Box.t (array (ref str.t)) alloc.alloc.Global.t) :=
      (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α4 in
    let* α6 :
        M.Val (alloc.boxed.Box.t (slice (ref str.t)) alloc.alloc.Global.t) :=
      pointer_coercion "Unsize" α5 in
    let* α7 : alloc.boxed.Box.t (slice (ref str.t)) alloc.alloc.Global.t :=
      M.read α6 in
    let* α8 : alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t :=
      (slice (ref str.t))::["into_vec"] α7 in
    M.alloc α8 in
  let* numbers :
      M.Val
        (alloc.vec.Vec.t
          (core.result.Result.t i32.t core.num.error.ParseIntError.t)
          alloc.alloc.Global.t) :=
    let* α0 : alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t :=
      M.read strings in
    let* α1 : alloc.vec.into_iter.IntoIter.t (ref str.t) alloc.alloc.Global.t :=
      (core.iter.traits.collect.IntoIterator.into_iter
          (Self := alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t)
          (Trait := ltac:(refine _)))
        α0 in
    let* α2 : type not implemented :=
      M.read
        (let* α0 : ref str.t := M.read s in
        let* α1 : core.result.Result.t i32.t core.num.error.ParseIntError.t :=
          str.t::["parse"] α0 in
        M.alloc α1) in
    let* α3 :
        core.iter.adapters.map.Map.t
          (alloc.vec.into_iter.IntoIter.t (ref str.t) alloc.alloc.Global.t)
          type not implemented :=
      (core.iter.traits.iterator.Iterator.map
          (Self :=
            alloc.vec.into_iter.IntoIter.t (ref str.t) alloc.alloc.Global.t)
          (Trait := ltac:(refine _)))
        α1
        α2 in
    let* α4 :
        alloc.vec.Vec.t
          (core.result.Result.t i32.t core.num.error.ParseIntError.t)
          alloc.alloc.Global.t :=
      (core.iter.traits.iterator.Iterator.collect
          (Self :=
            core.iter.adapters.map.Map.t
              (alloc.vec.into_iter.IntoIter.t (ref str.t) alloc.alloc.Global.t)
              type not implemented)
          (Trait := ltac:(refine _)))
        α3 in
    M.alloc α4 in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : M.Val (array (ref str.t)) :=
        M.alloc [ mk_str "Results: "; mk_str "
" ] in
      let* α1 : ref (array (ref str.t)) := borrow α0 in
      let* α2 : M.Val (ref (array (ref str.t))) := M.alloc α1 in
      let* α3 : M.Val (ref (slice (ref str.t))) :=
        pointer_coercion "Unsize" α2 in
      let* α4 : ref (slice (ref str.t)) := M.read α3 in
      let* α5 :
          ref
            (alloc.vec.Vec.t
              (core.result.Result.t i32.t core.num.error.ParseIntError.t)
              alloc.alloc.Global.t) :=
        borrow numbers in
      let* α6 : core.fmt.rt.Argument.t :=
        core.fmt.rt.Argument.t::["new_debug"] α5 in
      let* α7 : M.Val core.fmt.rt.Argument.t := M.alloc α6 in
      let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
      let* α9 : ref (array core.fmt.rt.Argument.t) := borrow α8 in
      let* α10 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α9 in
      let* α11 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
        pointer_coercion "Unsize" α10 in
      let* α12 : ref (slice core.fmt.rt.Argument.t) := M.read α11 in
      let* α13 : core.fmt.Arguments.t :=
        core.fmt.Arguments.t::["new_v1"] α4 α12 in
      let* α14 : unit := std.io.stdio._print α13 in
      M.alloc α14 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
