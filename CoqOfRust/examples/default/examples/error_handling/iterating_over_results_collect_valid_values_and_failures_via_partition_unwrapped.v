(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    let strings = vec!["tofu", "93", "18"];
    let (numbers, errors): (Vec<_>, Vec<_>) = strings
        .into_iter()
        .map(|s| s.parse::<i32>())
        .partition(Result::is_ok);
    let numbers: Vec<_> = numbers.into_iter().map(Result::unwrap).collect();
    let errors: Vec<_> = errors.into_iter().map(Result::unwrap_err).collect();
    println!("Numbers: {:?}", numbers);
    println!("Errors: {:?}", errors);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* strings :
        ltac:(refine
          (M.Val (alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t))) :=
      let* α0 : ltac:(refine (M.Val str.t)) := deref (mk_str "93") in
      let* α1 : ltac:(refine (M.Val (ref str.t))) := borrow α0 in
      let* α2 : ltac:(refine (M.Val str.t)) := deref (mk_str "18") in
      let* α3 : ltac:(refine (M.Val (ref str.t))) := borrow α2 in
      let* α4 : ltac:(refine (M.Val (array (ref str.t)))) :=
        M.alloc [ mk_str "tofu"; α1; α3 ] in
      let* α5 :
          ltac:(refine
            (M.Val
              (alloc.boxed.Box.t (array (ref str.t)) alloc.alloc.Global.t))) :=
        (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"] α4 in
      let* α6 :
          ltac:(refine
            (M.Val
              (alloc.boxed.Box.t (slice (ref str.t)) alloc.alloc.Global.t))) :=
        pointer_coercion "Unsize" α5 in
      let* α7 := (slice (ref str.t))::["into_vec"] α6 in
      M.alloc α7 in
    let* '(numbers, errors) :
        ltac:(refine
          (M.Val
            ((alloc.vec.Vec.t
              (core.result.Result.t i32.t core.num.error.ParseIntError.t)
              alloc.alloc.Global.t)
            *
            (alloc.vec.Vec.t
              (core.result.Result.t i32.t core.num.error.ParseIntError.t)
              alloc.alloc.Global.t)))) :=
      let* α0 :=
        (core.iter.traits.collect.IntoIterator.into_iter
            (Self := alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t)
            (Trait := ltac:(refine _)))
          strings in
      let* α1 :
          ltac:(refine
            (M.Val
              (alloc.vec.into_iter.IntoIter.t
                (ref str.t)
                alloc.alloc.Global.t))) :=
        M.alloc α0 in
      let* α2 :=
        (core.iter.traits.iterator.Iterator.map
            (Self :=
              alloc.vec.into_iter.IntoIter.t (ref str.t) alloc.alloc.Global.t)
            (Trait := ltac:(refine _)))
          α1
          (let* α0 : ltac:(refine (M.Val str.t)) := deref s in
          let* α1 : ltac:(refine (M.Val (ref str.t))) := borrow α0 in
          let* α2 := str.t::["parse"] α1 in
          M.alloc α2) in
      let* α3 :
          ltac:(refine
            (M.Val
              (core.iter.adapters.map.Map.t
                (alloc.vec.into_iter.IntoIter.t
                  (ref str.t)
                  alloc.alloc.Global.t)
                type not implemented))) :=
        M.alloc α2 in
      let* α4 :=
        (core.iter.traits.iterator.Iterator.partition
            (Self :=
              core.iter.adapters.map.Map.t
                (alloc.vec.into_iter.IntoIter.t
                  (ref str.t)
                  alloc.alloc.Global.t)
                type not implemented)
            (Trait := ltac:(refine _)))
          α3
          (core.result.Result.t
              i32.t
              core.num.error.ParseIntError.t)::["is_ok"] in
      M.alloc α4 in
    let* numbers :
        ltac:(refine (M.Val (alloc.vec.Vec.t i32.t alloc.alloc.Global.t))) :=
      let* α0 :=
        (core.iter.traits.collect.IntoIterator.into_iter
            (Self :=
              alloc.vec.Vec.t
                (core.result.Result.t i32.t core.num.error.ParseIntError.t)
                alloc.alloc.Global.t)
            (Trait := ltac:(refine _)))
          numbers in
      let* α1 :
          ltac:(refine
            (M.Val
              (alloc.vec.into_iter.IntoIter.t
                (core.result.Result.t i32.t core.num.error.ParseIntError.t)
                alloc.alloc.Global.t))) :=
        M.alloc α0 in
      let* α2 :=
        (core.iter.traits.iterator.Iterator.map
            (Self :=
              alloc.vec.into_iter.IntoIter.t
                (core.result.Result.t i32.t core.num.error.ParseIntError.t)
                alloc.alloc.Global.t)
            (Trait := ltac:(refine _)))
          α1
          (core.result.Result.t
              i32.t
              core.num.error.ParseIntError.t)::["unwrap"] in
      let* α3 :
          ltac:(refine
            (M.Val
              (core.iter.adapters.map.Map.t
                (alloc.vec.into_iter.IntoIter.t
                  (core.result.Result.t i32.t core.num.error.ParseIntError.t)
                  alloc.alloc.Global.t)
                _))) :=
        M.alloc α2 in
      let* α4 :=
        (core.iter.traits.iterator.Iterator.collect
            (Self :=
              core.iter.adapters.map.Map.t
                (alloc.vec.into_iter.IntoIter.t
                  (core.result.Result.t i32.t core.num.error.ParseIntError.t)
                  alloc.alloc.Global.t)
                _)
            (Trait := ltac:(refine _)))
          α3 in
      M.alloc α4 in
    let* errors :
        ltac:(refine
          (M.Val
            (alloc.vec.Vec.t
              core.num.error.ParseIntError.t
              alloc.alloc.Global.t))) :=
      let* α0 :=
        (core.iter.traits.collect.IntoIterator.into_iter
            (Self :=
              alloc.vec.Vec.t
                (core.result.Result.t i32.t core.num.error.ParseIntError.t)
                alloc.alloc.Global.t)
            (Trait := ltac:(refine _)))
          errors in
      let* α1 :
          ltac:(refine
            (M.Val
              (alloc.vec.into_iter.IntoIter.t
                (core.result.Result.t i32.t core.num.error.ParseIntError.t)
                alloc.alloc.Global.t))) :=
        M.alloc α0 in
      let* α2 :=
        (core.iter.traits.iterator.Iterator.map
            (Self :=
              alloc.vec.into_iter.IntoIter.t
                (core.result.Result.t i32.t core.num.error.ParseIntError.t)
                alloc.alloc.Global.t)
            (Trait := ltac:(refine _)))
          α1
          (core.result.Result.t
              i32.t
              core.num.error.ParseIntError.t)::["unwrap_err"] in
      let* α3 :
          ltac:(refine
            (M.Val
              (core.iter.adapters.map.Map.t
                (alloc.vec.into_iter.IntoIter.t
                  (core.result.Result.t i32.t core.num.error.ParseIntError.t)
                  alloc.alloc.Global.t)
                _))) :=
        M.alloc α2 in
      let* α4 :=
        (core.iter.traits.iterator.Iterator.collect
            (Self :=
              core.iter.adapters.map.Map.t
                (alloc.vec.into_iter.IntoIter.t
                  (core.result.Result.t i32.t core.num.error.ParseIntError.t)
                  alloc.alloc.Global.t)
                _)
            (Trait := ltac:(refine _)))
          α3 in
      M.alloc α4 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "Numbers: "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 :
            ltac:(refine
              (M.Val (ref (alloc.vec.Vec.t i32.t alloc.alloc.Global.t)))) :=
          borrow numbers in
        let* α4 := core.fmt.rt.Argument.t::["new_debug"] α3 in
        let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α4 in
        let* α6 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α5 ] in
        let* α7 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α6 in
        let* α8 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α7 in
        let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
        let* α10 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α9 in
        let* α11 := std.io.stdio._print α10 in
        M.alloc α11 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "Errors: "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 :
            ltac:(refine
              (M.Val
                (ref
                  (alloc.vec.Vec.t
                    core.num.error.ParseIntError.t
                    alloc.alloc.Global.t)))) :=
          borrow errors in
        let* α4 := core.fmt.rt.Argument.t::["new_debug"] α3 in
        let* α5 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α4 in
        let* α6 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α5 ] in
        let* α7 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α6 in
        let* α8 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α7 in
        let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
        let* α10 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α9 in
        let* α11 := std.io.stdio._print α10 in
        M.alloc α11 in
      M.alloc tt in
    M.alloc tt).
