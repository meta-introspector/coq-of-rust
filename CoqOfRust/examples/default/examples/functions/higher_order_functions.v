(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn is_odd(n: u32) -> bool {
    n % 2 == 1
}
*)
Definition is_odd (n : M.Val u32.t) : M (M.Val bool.t) :=
  M.function_body
    (let* α0 : ltac:(refine (M.Val u32.t)) := M.alloc 2 in
    let* α1 : ltac:(refine (M.Val u32.t)) := BinOp.rem n α0 in
    let* α2 : ltac:(refine (M.Val u32.t)) := M.alloc 1 in
    BinOp.eq α1 α2).

(*
fn main() {
    println!("Find the sum of all the squared odd numbers under 1000");
    let upper = 1000;

    // Imperative approach
    // Declare accumulator variable
    let mut acc = 0;
    // Iterate: 0, 1, 2, ... to infinity
    for n in 0.. {
        // Square the number
        let n_squared = n * n;

        if n_squared >= upper {
            // Break loop if exceeded the upper limit
            break;
        } else if is_odd(n_squared) {
            // Accumulate value, if it's odd
            acc += n_squared;
        }
    }
    println!("imperative style: {}", acc);

    // Functional approach
    let sum_of_squared_odd_numbers: u32 = (0..)
        .map(|n| n * n) // All natural numbers squared
        .take_while(|&n_squared| n_squared < upper) // Below upper limit
        .filter(|&n_squared| is_odd(n_squared)) // That are odd
        .sum(); // Sum them
    println!("functional style: {}", sum_of_squared_odd_numbers);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M (M.Val unit) :=
  M.function_body
    (let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc
            [ mk_str "Find the sum of all the squared odd numbers under 1000
"
            ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_const"] α2 in
        std.io.stdio._print α3 in
      M.alloc tt in
    let* upper : ltac:(refine (M.Val u32.t)) :=
      let* α0 : ltac:(refine (M.Val u32.t)) := M.alloc 1000 in
      M.copy α0 in
    let* acc : ltac:(refine (M.Val u32.t)) :=
      let* α0 : ltac:(refine (M.Val u32.t)) := M.alloc 0 in
      M.copy α0 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* α0 : ltac:(refine (M.Val u32.t)) := M.alloc 0 in
      let* α1 := M.read α0 in
      let* α2 : ltac:(refine (M.Val (core.ops.range.RangeFrom.t u32.t))) :=
        M.alloc {| core.ops.range.RangeFrom.start := α1; |} in
      let* α3 : ltac:(refine (M.Val (core.ops.range.RangeFrom.t u32.t))) :=
        (core.iter.traits.collect.IntoIterator.into_iter
            (Self := core.ops.range.RangeFrom.t u32.t)
            (Trait := ltac:(refine _)))
          α2 in
      let* α4 := M.read α3 in
      let* α5 : ltac:(refine (M.Val unit)) :=
        match α4 with
        | iter =>
          let* iter := M.alloc iter in
          loop
            (let* _ : ltac:(refine (M.Val unit)) :=
              let* α0 :
                  ltac:(refine
                    (M.Val (mut_ref (core.ops.range.RangeFrom.t u32.t)))) :=
                borrow_mut iter in
              let* α1 : ltac:(refine (M.Val (core.option.Option.t u32.t))) :=
                (core.iter.traits.iterator.Iterator.next
                    (Self := core.ops.range.RangeFrom.t u32.t)
                    (Trait := ltac:(refine _)))
                  α0 in
              let* α2 := M.read α1 in
              match α2 with
              | core.option.Option.None  =>
                let* α0 : ltac:(refine (M.Val never.t)) := Break in
                never_to_any α0
              | core.option.Option.Some n =>
                let* n := M.alloc n in
                let* n_squared : ltac:(refine (M.Val u32.t)) :=
                  let* α0 : ltac:(refine (M.Val u32.t)) := BinOp.mul n n in
                  M.copy α0 in
                let* α0 : ltac:(refine (M.Val bool.t)) :=
                  BinOp.ge n_squared upper in
                let* α1 : ltac:(refine (M.Val bool.t)) := use α0 in
                let* α2 := M.read α1 in
                if (α2 : bool) then
                  let* _ : ltac:(refine (M.Val never.t)) := Break in
                  let* α0 : ltac:(refine (M.Val unit)) := M.alloc tt in
                  never_to_any α0
                else
                  let* α0 : ltac:(refine (M.Val bool.t)) :=
                    higher_order_functions.is_odd n_squared in
                  let* α1 : ltac:(refine (M.Val bool.t)) := use α0 in
                  let* α2 := M.read α1 in
                  if (α2 : bool) then
                    let* _ : ltac:(refine (M.Val unit)) :=
                      assign_op add acc n_squared in
                    M.alloc tt
                  else
                    M.alloc tt
              end in
            M.alloc tt)
        end in
      use α5 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "imperative style: "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref u32.t))) := borrow acc in
        let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α3 in
        let* α5 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α4 ] in
        let* α6 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α5 in
        let* α7 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α7 in
        std.io.stdio._print α8 in
      M.alloc tt in
    let* sum_of_squared_odd_numbers : ltac:(refine (M.Val u32.t)) :=
      let* α0 : ltac:(refine (M.Val u32.t)) := M.alloc 0 in
      let* α1 := M.read α0 in
      let* α2 : ltac:(refine (M.Val (core.ops.range.RangeFrom.t u32.t))) :=
        M.alloc {| core.ops.range.RangeFrom.start := α1; |} in
      let* α3 :
          ltac:(refine
            (M.Val
              (core.iter.adapters.map.Map.t
                (core.ops.range.RangeFrom.t u32.t)
                type not implemented))) :=
        (core.iter.traits.iterator.Iterator.map
            (Self := core.ops.range.RangeFrom.t u32.t)
            (Trait := ltac:(refine _)))
          α2
          (BinOp.mul n n) in
      let* α4 :
          ltac:(refine
            (M.Val
              (core.iter.adapters.take_while.TakeWhile.t
                (core.iter.adapters.map.Map.t
                  (core.ops.range.RangeFrom.t u32.t)
                  type not implemented)
                type not implemented))) :=
        (core.iter.traits.iterator.Iterator.take_while
            (Self :=
              core.iter.adapters.map.Map.t
                (core.ops.range.RangeFrom.t u32.t)
                type not implemented)
            (Trait := ltac:(refine _)))
          α3
          (BinOp.lt n_squared upper) in
      let* α5 :
          ltac:(refine
            (M.Val
              (core.iter.adapters.filter.Filter.t
                (core.iter.adapters.take_while.TakeWhile.t
                  (core.iter.adapters.map.Map.t
                    (core.ops.range.RangeFrom.t u32.t)
                    type not implemented)
                  type not implemented)
                type not implemented))) :=
        (core.iter.traits.iterator.Iterator.filter
            (Self :=
              core.iter.adapters.take_while.TakeWhile.t
                (core.iter.adapters.map.Map.t
                  (core.ops.range.RangeFrom.t u32.t)
                  type not implemented)
                type not implemented)
            (Trait := ltac:(refine _)))
          α4
          (higher_order_functions.is_odd n_squared) in
      let* α6 : ltac:(refine (M.Val u32.t)) :=
        (core.iter.traits.iterator.Iterator.sum
            (Self :=
              core.iter.adapters.filter.Filter.t
                (core.iter.adapters.take_while.TakeWhile.t
                  (core.iter.adapters.map.Map.t
                    (core.ops.range.RangeFrom.t u32.t)
                    type not implemented)
                  type not implemented)
                type not implemented)
            (Trait := ltac:(refine _)))
          α5 in
      M.copy α6 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* _ : ltac:(refine (M.Val unit)) :=
        let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
          M.alloc [ mk_str "functional style: "; mk_str "
" ] in
        let* α1 : ltac:(refine (M.Val (ref (array (ref str.t))))) :=
          borrow α0 in
        let* α2 : ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
          pointer_coercion "Unsize" α1 in
        let* α3 : ltac:(refine (M.Val (ref u32.t))) :=
          borrow sum_of_squared_odd_numbers in
        let* α4 : ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
          core.fmt.rt.Argument.t::["new_display"] α3 in
        let* α5 : ltac:(refine (M.Val (array core.fmt.rt.Argument.t))) :=
          M.alloc [ α4 ] in
        let* α6 : ltac:(refine (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
          borrow α5 in
        let* α7 : ltac:(refine (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
          pointer_coercion "Unsize" α6 in
        let* α8 : ltac:(refine (M.Val core.fmt.Arguments.t)) :=
          core.fmt.Arguments.t::["new_v1"] α2 α7 in
        std.io.stdio._print α8 in
      M.alloc tt in
    M.alloc tt).
