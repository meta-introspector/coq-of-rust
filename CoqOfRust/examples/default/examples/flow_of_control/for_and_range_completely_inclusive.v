(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    // `n` will take the values: 1, 2, ..., 100 in each iteration
    for n in 1..=100 {
        if n % 15 == 0 {
            println!("fizzbuzz");
        } else if n % 3 == 0 {
            println!("fizz");
        } else if n % 5 == 0 {
            println!("buzz");
        } else {
            println!("{}", n);
        }
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* α0 : M.Val i32.t := M.alloc 1 in
    let* α1 := M.read α0 in
    let* α2 : M.Val i32.t := M.alloc 100 in
    let* α3 := M.read α2 in
    let* α4 := (core.ops.range.RangeInclusive.t i32.t)::["new"] α1 α3 in
    let* α5 :=
      (core.iter.traits.collect.IntoIterator.into_iter
          (Self := core.ops.range.RangeInclusive.t i32.t)
          (Trait := ltac:(refine _)))
        α4 in
    let* α6 : M.Val (core.ops.range.RangeInclusive.t i32.t) := M.alloc α5 in
    let* α7 := M.read α6 in
    let* α8 : M.Val unit :=
      match α7 with
      | iter =>
        let* iter := M.alloc iter in
        loop
          (let* _ : M.Val unit :=
            let* α0 : M.Val (mut_ref (core.ops.range.RangeInclusive.t i32.t)) :=
              borrow_mut iter in
            let* α1 := M.read α0 in
            let* α2 :=
              (core.iter.traits.iterator.Iterator.next
                  (Self := core.ops.range.RangeInclusive.t i32.t)
                  (Trait := ltac:(refine _)))
                α1 in
            let* α3 : M.Val (core.option.Option.t i32.t) := M.alloc α2 in
            let* α4 := M.read α3 in
            match α4 with
            | core.option.Option.None  =>
              let* α0 : M.Val never.t := Break in
              never_to_any α0
            | core.option.Option.Some n =>
              let* n := M.alloc n in
              let* α0 : M.Val i32.t := M.alloc 15 in
              let* α1 : M.Val i32.t := BinOp.rem n α0 in
              let* α2 : M.Val i32.t := M.alloc 0 in
              let* α3 : M.Val bool.t := BinOp.eq α1 α2 in
              let* α4 : M.Val bool.t := use α3 in
              let* α5 := M.read α4 in
              if (α5 : bool) then
                let* _ : M.Val unit :=
                  let* _ : M.Val unit :=
                    let* α0 : M.Val (array (ref str.t)) :=
                      M.alloc [ mk_str "fizzbuzz
" ] in
                    let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
                    let* α2 : M.Val (ref (slice (ref str.t))) :=
                      pointer_coercion "Unsize" α1 in
                    let* α3 := M.read α2 in
                    let* α4 := core.fmt.Arguments.t::["new_const"] α3 in
                    let* α5 := std.io.stdio._print α4 in
                    M.alloc α5 in
                  M.alloc tt in
                M.alloc tt
              else
                let* α0 : M.Val i32.t := M.alloc 3 in
                let* α1 : M.Val i32.t := BinOp.rem n α0 in
                let* α2 : M.Val i32.t := M.alloc 0 in
                let* α3 : M.Val bool.t := BinOp.eq α1 α2 in
                let* α4 : M.Val bool.t := use α3 in
                let* α5 := M.read α4 in
                if (α5 : bool) then
                  let* _ : M.Val unit :=
                    let* _ : M.Val unit :=
                      let* α0 : M.Val (array (ref str.t)) :=
                        M.alloc [ mk_str "fizz
" ] in
                      let* α1 : M.Val (ref (array (ref str.t))) := borrow α0 in
                      let* α2 : M.Val (ref (slice (ref str.t))) :=
                        pointer_coercion "Unsize" α1 in
                      let* α3 := M.read α2 in
                      let* α4 := core.fmt.Arguments.t::["new_const"] α3 in
                      let* α5 := std.io.stdio._print α4 in
                      M.alloc α5 in
                    M.alloc tt in
                  M.alloc tt
                else
                  let* α0 : M.Val i32.t := M.alloc 5 in
                  let* α1 : M.Val i32.t := BinOp.rem n α0 in
                  let* α2 : M.Val i32.t := M.alloc 0 in
                  let* α3 : M.Val bool.t := BinOp.eq α1 α2 in
                  let* α4 : M.Val bool.t := use α3 in
                  let* α5 := M.read α4 in
                  if (α5 : bool) then
                    let* _ : M.Val unit :=
                      let* _ : M.Val unit :=
                        let* α0 : M.Val (array (ref str.t)) :=
                          M.alloc [ mk_str "buzz
" ] in
                        let* α1 : M.Val (ref (array (ref str.t))) :=
                          borrow α0 in
                        let* α2 : M.Val (ref (slice (ref str.t))) :=
                          pointer_coercion "Unsize" α1 in
                        let* α3 := M.read α2 in
                        let* α4 := core.fmt.Arguments.t::["new_const"] α3 in
                        let* α5 := std.io.stdio._print α4 in
                        M.alloc α5 in
                      M.alloc tt in
                    M.alloc tt
                  else
                    let* _ : M.Val unit :=
                      let* _ : M.Val unit :=
                        let* α0 : M.Val (array (ref str.t)) :=
                          M.alloc [ mk_str ""; mk_str "
" ] in
                        let* α1 : M.Val (ref (array (ref str.t))) :=
                          borrow α0 in
                        let* α2 : M.Val (ref (slice (ref str.t))) :=
                          pointer_coercion "Unsize" α1 in
                        let* α3 := M.read α2 in
                        let* α4 : M.Val (ref i32.t) := borrow n in
                        let* α5 := M.read α4 in
                        let* α6 := core.fmt.rt.Argument.t::["new_display"] α5 in
                        let* α7 : M.Val core.fmt.rt.Argument.t := M.alloc α6 in
                        let* α8 : M.Val (array core.fmt.rt.Argument.t) :=
                          M.alloc [ α7 ] in
                        let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
                          borrow α8 in
                        let* α10 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
                          pointer_coercion "Unsize" α9 in
                        let* α11 := M.read α10 in
                        let* α12 := core.fmt.Arguments.t::["new_v1"] α3 α11 in
                        let* α13 := std.io.stdio._print α12 in
                        M.alloc α13 in
                      M.alloc tt in
                    M.alloc tt
            end in
          M.alloc tt)
      end in
    use α8).
