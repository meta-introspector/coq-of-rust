(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    let strings = vec!["42", "tofu", "93", "999", "18"];
    let mut errors = vec![];
    let numbers: Vec<_> = strings
        .into_iter()
        .map(|s| s.parse::<u8>())
        .filter_map(|r| r.map_err(|e| errors.push(e)).ok())
        .collect();
    println!("Numbers: {:?}", numbers);
    println!("Errors: {:?}", errors);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* strings : M.Val (alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t) :=
    let* α0 : ref str.t := M.read (mk_str "42") in
    let* α1 : ref str.t := M.read (mk_str "tofu") in
    let* α2 : ref str.t := M.read (mk_str "93") in
    let* α3 : ref str.t := M.read (mk_str "999") in
    let* α4 : ref str.t := M.read (mk_str "18") in
    let* α5 : M.Val (array (ref str.t)) := M.alloc [ α0; α1; α2; α3; α4 ] in
    let* α6 :
        M.Val (alloc.boxed.Box.t (array (ref str.t)) alloc.alloc.Global.t) :=
      M.call ((alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α5) in
    let* α7 : alloc.boxed.Box.t (slice (ref str.t)) alloc.alloc.Global.t :=
      M.read (pointer_coercion "Unsize" α6) in
    let* α8 : alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t :=
      M.call (impl (slice (ref str.t)) "into_vec" α7) in
    M.alloc α8 in
  let* errors :
      M.Val
        (alloc.vec.Vec.t core.num.error.ParseIntError.t alloc.alloc.Global.t) :=
    let* α0 :
        alloc.vec.Vec.t core.num.error.ParseIntError.t alloc.alloc.Global.t :=
      M.call
        (impl
          (alloc.vec.Vec.t core.num.error.ParseIntError.t alloc.alloc.Global.t)
          "new") in
    M.alloc α0 in
  let* numbers : M.Val (alloc.vec.Vec.t u8.t alloc.alloc.Global.t) :=
    let* α0 : _ :=
      ltac:(M.get_method (fun ℐ =>
        core.iter.traits.iterator.Iterator.collect
          (Self :=
            core.iter.adapters.filter_map.FilterMap.t
              (core.iter.adapters.map.Map.t
                (alloc.vec.into_iter.IntoIter.t
                  (ref str.t)
                  alloc.alloc.Global.t)
                ((ref str.t) ->
                  M (core.result.Result.t u8.t core.num.error.ParseIntError.t)))
              ((core.result.Result.t u8.t core.num.error.ParseIntError.t) ->
                M (core.option.Option.t u8.t)))
          (B := alloc.vec.Vec.t u8.t alloc.alloc.Global.t)
          (Trait := ℐ))) in
    let* α1 : _ :=
      ltac:(M.get_method (fun ℐ =>
        core.iter.traits.iterator.Iterator.filter_map
          (Self :=
            core.iter.adapters.map.Map.t
              (alloc.vec.into_iter.IntoIter.t (ref str.t) alloc.alloc.Global.t)
              ((ref str.t) ->
                M (core.result.Result.t u8.t core.num.error.ParseIntError.t)))
          (B := u8.t)
          (F :=
            (core.result.Result.t u8.t core.num.error.ParseIntError.t) ->
              M (core.option.Option.t u8.t))
          (Trait := ℐ))) in
    let* α2 : _ :=
      ltac:(M.get_method (fun ℐ =>
        core.iter.traits.iterator.Iterator.map
          (Self :=
            alloc.vec.into_iter.IntoIter.t (ref str.t) alloc.alloc.Global.t)
          (B := core.result.Result.t u8.t core.num.error.ParseIntError.t)
          (F :=
            (ref str.t) ->
              M (core.result.Result.t u8.t core.num.error.ParseIntError.t))
          (Trait := ℐ))) in
    let* α3 : _ :=
      ltac:(M.get_method (fun ℐ =>
        core.iter.traits.collect.IntoIterator.into_iter
          (Self := alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t)
          (Trait := ℐ))) in
    let* α4 : alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t :=
      M.read strings in
    let* α5 : alloc.vec.into_iter.IntoIter.t (ref str.t) alloc.alloc.Global.t :=
      M.call (α3 α4) in
    let* α6 :
        core.iter.adapters.map.Map.t
          (alloc.vec.into_iter.IntoIter.t (ref str.t) alloc.alloc.Global.t)
          ((ref str.t) ->
            M (core.result.Result.t u8.t core.num.error.ParseIntError.t)) :=
      M.call
        (α2
          α5
          (fun (α0 : ref str.t) =>
            (let* α0 := M.alloc α0 in
            match_operator
              α0
              [
                fun γ =>
                  (let* s := M.copy γ in
                  let* α0 : ref str.t := M.read s in
                  M.call (impl str.t "parse" α0)) :
                  M (core.result.Result.t u8.t core.num.error.ParseIntError.t)
              ]) :
            M (core.result.Result.t u8.t core.num.error.ParseIntError.t))) in
    let* α7 :
        core.iter.adapters.filter_map.FilterMap.t
          (core.iter.adapters.map.Map.t
            (alloc.vec.into_iter.IntoIter.t (ref str.t) alloc.alloc.Global.t)
            ((ref str.t) ->
              M (core.result.Result.t u8.t core.num.error.ParseIntError.t)))
          ((core.result.Result.t u8.t core.num.error.ParseIntError.t) ->
            M (core.option.Option.t u8.t)) :=
      M.call
        (α1
          α6
          (fun
              (α0 : core.result.Result.t u8.t core.num.error.ParseIntError.t) =>
            (let* α0 := M.alloc α0 in
            match_operator
              α0
              [
                fun γ =>
                  (let* r := M.copy γ in
                  let* α0 :
                      core.result.Result.t
                        u8.t
                        core.num.error.ParseIntError.t :=
                    M.read r in
                  let* α1 : core.result.Result.t u8.t unit :=
                    M.call
                      (impl
                          (core.result.Result.t
                            u8.t
                            core.num.error.ParseIntError.t)
                          "map_err"
                        α0
                        (fun (α0 : core.num.error.ParseIntError.t) =>
                          (let* α0 := M.alloc α0 in
                          match_operator
                            α0
                            [
                              fun γ =>
                                (let* e := M.copy γ in
                                let* α0 : core.num.error.ParseIntError.t :=
                                  M.read e in
                                M.call
                                  (impl
                                      (alloc.vec.Vec.t
                                        core.num.error.ParseIntError.t
                                        alloc.alloc.Global.t)
                                      "push"
                                    (borrow_mut errors)
                                    α0)) :
                                M unit
                            ]) :
                          M unit)) in
                  M.call (impl (core.result.Result.t u8.t unit) "ok" α1)) :
                  M (core.option.Option.t u8.t)
              ]) :
            M (core.option.Option.t u8.t))) in
    let* α8 : alloc.vec.Vec.t u8.t alloc.alloc.Global.t := M.call (α0 α7) in
    M.alloc α8 in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "Numbers: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : core.fmt.rt.Argument.t :=
        M.call (impl core.fmt.rt.Argument.t "new_debug" (borrow numbers)) in
      let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
      let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α6) in
      let* α8 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α7) in
      let* α9 : core.fmt.Arguments.t :=
        M.call (impl core.fmt.Arguments.t "new_v1" α4 α8) in
      let* α10 : unit := M.call (std.io.stdio._print α9) in
      M.alloc α10 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "Errors: ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : core.fmt.rt.Argument.t :=
        M.call (impl core.fmt.rt.Argument.t "new_debug" (borrow errors)) in
      let* α6 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α5 ] in
      let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α6) in
      let* α8 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α7) in
      let* α9 : core.fmt.Arguments.t :=
        M.call (impl core.fmt.Arguments.t "new_v1" α4 α8) in
      let* α10 : unit := M.call (std.io.stdio._print α9) in
      M.alloc α10 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.
