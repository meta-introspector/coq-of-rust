(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn double_first(vec: Vec<&str>) -> Option<Result<i32, ParseIntError>> {
    vec.first().map(|first| first.parse::<i32>().map(|n| 2 * n))
}
*)
Definition double_first
    (vec : M.Val (alloc.vec.Vec.t (ref str.t) alloc.vec.Vec.Default.A))
    :
      M
        (core.option.Option.t
          (core.result.Result.t i32.t core.num.error.ParseIntError.t)) :=
  M.function_body
    (let* α0 :
        ltac:(refine
          (M.Val (ref (alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t)))) :=
      borrow vec in
    let* α1 :=
      (core.ops.deref.Deref.deref
          (Self := alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t)
          (Trait := ltac:(refine _)))
        α0 in
    let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) := M.alloc α1 in
    let* α3 : ltac:(refine (M.Val (slice (ref str.t)))) := deref α2 in
    let* α4 : ltac:(refine (M.Val (ref (slice (ref str.t))))) := borrow α3 in
    let* α5 := (slice (ref str.t))::["first"] α4 in
    let* α6 : ltac:(refine (M.Val (core.option.Option.t (ref (ref str.t))))) :=
      M.alloc α5 in
    let* α7 :=
      (core.option.Option.t (ref (ref str.t)))::["map"]
        α6
        (let* α0 : ltac:(refine (M.Val (ref str.t))) := deref first in
        let* α1 : ltac:(refine (M.Val str.t)) := deref α0 in
        let* α2 : ltac:(refine (M.Val (ref str.t))) := borrow α1 in
        let* α3 := str.t::["parse"] α2 in
        let* α4 :
            ltac:(refine
              (M.Val
                (core.result.Result.t i32.t core.num.error.ParseIntError.t))) :=
          M.alloc α3 in
        let* α5 :=
          (core.result.Result.t i32.t core.num.error.ParseIntError.t)::["map"]
            α4
            (let* α0 : ltac:(refine (M.Val i32.t)) := M.alloc 2 in
            BinOp.mul α0 n) in
        M.alloc α5) in
    M.alloc α7).

(*
fn main() {
    let numbers = vec!["42", "93", "18"];
    let empty = vec![];
    let strings = vec!["tofu", "93", "18"];

    println!("The first doubled is {:?}", double_first(numbers));

    println!("The first doubled is {:?}", double_first(empty));
    // Error 1: the input vector is empty

    println!("The first doubled is {:?}", double_first(strings));
    // Error 2: the element doesn't parse to a number
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* numbers :
        ltac:(refine
          (M.Val (alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t))) :=
      let* α0 : ltac:(refine (M.Val str.t)) := deref (mk_str "93") in
      let* α1 : ltac:(refine (M.Val (ref str.t))) := borrow α0 in
      let* α2 : ltac:(refine (M.Val str.t)) := deref (mk_str "18") in
      let* α3 : ltac:(refine (M.Val (ref str.t))) := borrow α2 in
      let* α4 : ltac:(refine (M.Val (array (ref str.t)))) :=
        M.alloc [ mk_str "42"; α1; α3 ] in
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
    let* empty :
        ltac:(refine
          (M.Val (alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t))) :=
      let* α0 := (alloc.vec.Vec.t (ref str.t) alloc.alloc.Global.t)::["new"] in
      M.alloc α0 in
    let* strings :
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
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "The first doubled is "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := pulling_results_out_of_options.double_first numbers in
        let* α4 :
            ltac:(refine
              (M.Val
                (core.option.Option.t
                  (core.result.Result.t
                    i32.t
                    core.num.error.ParseIntError.t)))) :=
          M.alloc α3 in
        let* α5 :
            ltac:(refine
              (M.Val
                (ref
                  (core.option.Option.t
                    (core.result.Result.t
                      i32.t
                      core.num.error.ParseIntError.t))))) :=
          borrow α4 in
        let* α6 := core.fmt.rt.Argument.t::["new_debug"] α5 in
        let* α7 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α6 in
        let* α8 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α7 ] in
        let* α9 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α8 in
        let* α10 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α9 in
        let* α11 := core.fmt.Arguments.t::["new_v1"] α2 α10 in
        let* α12 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α11 in
        let* α13 := std.io.stdio._print α12 in
        M.alloc α13 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "The first doubled is "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := pulling_results_out_of_options.double_first empty in
        let* α4 :
            ltac:(refine
              (M.Val
                (core.option.Option.t
                  (core.result.Result.t
                    i32.t
                    core.num.error.ParseIntError.t)))) :=
          M.alloc α3 in
        let* α5 :
            ltac:(refine
              (M.Val
                (ref
                  (core.option.Option.t
                    (core.result.Result.t
                      i32.t
                      core.num.error.ParseIntError.t))))) :=
          borrow α4 in
        let* α6 := core.fmt.rt.Argument.t::["new_debug"] α5 in
        let* α7 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α6 in
        let* α8 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α7 ] in
        let* α9 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α8 in
        let* α10 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α9 in
        let* α11 := core.fmt.Arguments.t::["new_v1"] α2 α10 in
        let* α12 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α11 in
        let* α13 := std.io.stdio._print α12 in
        M.alloc α13 in
      M.alloc tt in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "The first doubled is "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 := pulling_results_out_of_options.double_first strings in
        let* α4 :
            ltac:(refine
              (M.Val
                (core.option.Option.t
                  (core.result.Result.t
                    i32.t
                    core.num.error.ParseIntError.t)))) :=
          M.alloc α3 in
        let* α5 :
            ltac:(refine
              (M.Val
                (ref
                  (core.option.Option.t
                    (core.result.Result.t
                      i32.t
                      core.num.error.ParseIntError.t))))) :=
          borrow α4 in
        let* α6 := core.fmt.rt.Argument.t::["new_debug"] α5 in
        let* α7 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) := M.alloc α6 in
        let* α8 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α7 ] in
        let* α9 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α8 in
        let* α10 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α9 in
        let* α11 := core.fmt.Arguments.t::["new_v1"] α2 α10 in
        let* α12 : ltac:(refine (M.Val core.fmt.Arguments.t)) := M.alloc α11 in
        let* α13 := std.io.stdio._print α12 in
        M.alloc α13 in
      M.alloc tt in
    M.alloc tt).
