(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    let strings = vec!["tofu", "93", "18"];
    let (numbers, errors): (Vec<_>, Vec<_>) = strings
        .into_iter()
        .map(|s| s.parse::<i32>())
        .partition(Result::is_ok);
    println!("Numbers: {:?}", numbers);
    println!("Errors: {:?}", errors);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* strings : M.Val (alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t) :=
    let* α0 : ref str.t := M.read (mk_str "tofu") in
    let* α1 : ref str.t := M.read (mk_str "93") in
    let* α2 : ref str.t := M.read (mk_str "18") in
    let* α3 : M.Val (array (ref str.t)) := M.alloc [ α0; α1; α2 ] in
    let* α4 :
        M.Val (alloc.boxed.Box.t (array (ref str.t)) alloc.alloc.Global.t) :=
      M.call ((alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α3) in
    let* α5 : alloc.boxed.Box.t (array (ref str.t)) alloc.alloc.Global.t :=
      M.read α4 in
    let* α6 : alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t :=
      M.call
        ((slice (ref str.t))::["into_vec"] (pointer_coercion "Unsize" α5)) in
    M.alloc α6 in
  let* α0 : _ :=
    ltac:(M.get_method (fun ℐ =>
      core.iter.traits.iterator.Iterator.partition
        (Self :=
          core.iter.adapters.map.Map.t
            (alloc.vec.into_iter.IntoIter.t (ref str.t) alloc.alloc.Global.t)
            ((ref str.t) ->
              M (core.result.Result.t i32.t core.num.error.ParseIntError.t)))
        (B :=
          alloc.vec.Vec.t
            (core.result.Result.t i32.t core.num.error.ParseIntError.t)
            alloc.alloc.Global.t)
        (F := _)
        (Trait := ℐ))) in
  let* α1 : _ :=
    ltac:(M.get_method (fun ℐ =>
      core.iter.traits.iterator.Iterator.map
        (Self :=
          alloc.vec.into_iter.IntoIter.t (ref str.t) alloc.alloc.Global.t)
        (B := core.result.Result.t i32.t core.num.error.ParseIntError.t)
        (F :=
          (ref str.t) ->
            M (core.result.Result.t i32.t core.num.error.ParseIntError.t))
        (Trait := ℐ))) in
  let* α2 : _ :=
    ltac:(M.get_method (fun ℐ =>
      core.iter.traits.collect.IntoIterator.into_iter
        (Self := alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t)
        (Trait := ℐ))) in
  let* α3 : alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t :=
    M.read strings in
  let* α4 : alloc.vec.into_iter.IntoIter.t (ref str.t) alloc.alloc.Global.t :=
    M.call (α2 α3) in
  let* α5 :
      core.iter.adapters.map.Map.t
        (alloc.vec.into_iter.IntoIter.t (ref str.t) alloc.alloc.Global.t)
        ((ref str.t) ->
          M (core.result.Result.t i32.t core.num.error.ParseIntError.t)) :=
    M.call
      (α1
        α4
        (fun (α0 : ref str.t) =>
          (let* α0 := M.alloc α0 in
          match_operator
            α0
            [
              fun γ =>
                (let* s := M.copy γ in
                let* α0 : ref str.t := M.read s in
                M.call (str.t::["parse"] α0)) :
                M (core.result.Result.t i32.t core.num.error.ParseIntError.t)
            ]) :
          M (core.result.Result.t i32.t core.num.error.ParseIntError.t))) in
  let* α6 :
      (alloc.vec.Vec.t
        (core.result.Result.t i32.t core.num.error.ParseIntError.t)
        alloc.alloc.Global.t)
      *
      (alloc.vec.Vec.t
        (core.result.Result.t i32.t core.num.error.ParseIntError.t)
        alloc.alloc.Global.t) :=
    M.call
      (α0
        α5
        (core.result.Result.t
            i32.t
            core.num.error.ParseIntError.t)::["is_ok"]) in
  let* α7 :
      M.Val
        ((alloc.vec.Vec.t
          (core.result.Result.t i32.t core.num.error.ParseIntError.t)
          alloc.alloc.Global.t)
        *
        (alloc.vec.Vec.t
          (core.result.Result.t i32.t core.num.error.ParseIntError.t)
          alloc.alloc.Global.t)) :=
    M.alloc α6 in
  let* α0 : M.Val unit :=
    match_operator
      α7
      [
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | (_, _) =>
            let γ0_0 := Tuple.Access.left γ in
            let γ0_1 := Tuple.Access.right γ in
            let* numbers := M.copy γ0_0 in
            let* errors := M.copy γ0_1 in
            let* _ : M.Val unit :=
              let* _ : M.Val unit :=
                let* α0 : ref str.t := M.read (mk_str "Numbers: ") in
                let* α1 : ref str.t := M.read (mk_str "
") in
                let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
                let* α3 : core.fmt.rt.Argument.t :=
                  M.call
                    (core.fmt.rt.Argument.t::["new_debug"] (borrow numbers)) in
                let* α4 : M.Val (array core.fmt.rt.Argument.t) :=
                  M.alloc [ α3 ] in
                let* α5 : core.fmt.Arguments.t :=
                  M.call
                    (core.fmt.Arguments.t::["new_v1"]
                      (pointer_coercion "Unsize" (borrow α2))
                      (pointer_coercion "Unsize" (borrow α4))) in
                let* α6 : unit := M.call (std.io.stdio._print α5) in
                M.alloc α6 in
              M.alloc tt in
            let* _ : M.Val unit :=
              let* _ : M.Val unit :=
                let* α0 : ref str.t := M.read (mk_str "Errors: ") in
                let* α1 : ref str.t := M.read (mk_str "
") in
                let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
                let* α3 : core.fmt.rt.Argument.t :=
                  M.call
                    (core.fmt.rt.Argument.t::["new_debug"] (borrow errors)) in
                let* α4 : M.Val (array core.fmt.rt.Argument.t) :=
                  M.alloc [ α3 ] in
                let* α5 : core.fmt.Arguments.t :=
                  M.call
                    (core.fmt.Arguments.t::["new_v1"]
                      (pointer_coercion "Unsize" (borrow α2))
                      (pointer_coercion "Unsize" (borrow α4))) in
                let* α6 : unit := M.call (std.io.stdio._print α5) in
                M.alloc α6 in
              M.alloc tt in
            M.alloc tt
          end) :
          M (M.Val unit)
      ] in
  M.read α0.
