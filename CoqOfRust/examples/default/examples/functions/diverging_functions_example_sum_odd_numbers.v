(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    fn sum_odd_numbers(up_to: u32) -> u32 {
        let mut acc = 0;
        for i in 0..up_to {
            // Notice that the return type of this match expression must be u32
            // because of the type of the "addition" variable.
            let addition: u32 = match i % 2 == 1 {
                // The "i" variable is of type u32, which is perfectly fine.
                true => i,
                // On the other hand, the "continue" expression does not return
                // u32, but it is still fine, because it never returns and therefore
                // does not violate the type requirements of the match expression.
                false => continue,
            };
            acc += addition;
        }
        acc
    }
    println!(
        "Sum of odd numbers up to 9 (excluding): {}",
        sum_odd_numbers(9)
    );
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t :=
        M.read (mk_str "Sum of odd numbers up to 9 (excluding): ") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : M.Val (ref (array (ref str.t))) := M.alloc (borrow α2) in
      let* α4 : ref (slice (ref str.t)) :=
        M.read (pointer_coercion "Unsize" α3) in
      let* α5 : u32.t :=
        M.call ("unimplemented parent_kind" (Integer.of_Z 9)) in
      let* α6 : M.Val u32.t := M.alloc α5 in
      let* α7 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α6)) in
      let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
      let* α9 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
        M.alloc (borrow α8) in
      let* α10 : ref (slice core.fmt.rt.Argument.t) :=
        M.read (pointer_coercion "Unsize" α9) in
      let* α11 : core.fmt.Arguments.t :=
        M.call (core.fmt.Arguments.t::["new_v1"] α4 α10) in
      let* α12 : unit := M.call (std.io.stdio._print α11) in
      M.alloc α12 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

(*
    fn sum_odd_numbers(up_to: u32) -> u32 {
        let mut acc = 0;
        for i in 0..up_to {
            // Notice that the return type of this match expression must be u32
            // because of the type of the "addition" variable.
            let addition: u32 = match i % 2 == 1 {
                // The "i" variable is of type u32, which is perfectly fine.
                true => i,
                // On the other hand, the "continue" expression does not return
                // u32, but it is still fine, because it never returns and therefore
                // does not violate the type requirements of the match expression.
                false => continue,
            };
            acc += addition;
        }
        acc
    }
*)
Definition sum_odd_numbers (up_to : u32.t) : M u32.t :=
  let* up_to := M.alloc up_to in
  let* acc : M.Val u32.t := M.alloc (Integer.of_Z 0) in
  let* _ : M.Val unit :=
    let* α0 : u32.t := M.read up_to in
    let* α1 : core.ops.range.Range.t u32.t :=
      M.call
        ((core.iter.traits.collect.IntoIterator.into_iter
            (Self := core.ops.range.Range.t u32.t)
            (Trait := ltac:(refine _)))
          {|
            core.ops.range.Range.start := Integer.of_Z 0;
            core.ops.range.Range.end_ := α0;
          |}) in
    let* α2 : M.Val (core.ops.range.Range.t u32.t) := M.alloc α1 in
    let* α3 : M.Val unit :=
      match_operator
        α2
        [
          fun γ =>
            (let* iter := M.copy γ in
            M.loop
              (let* _ : M.Val unit :=
                let* α0 : core.option.Option.t u32.t :=
                  M.call
                    ((core.iter.traits.iterator.Iterator.next
                        (Self := core.ops.range.Range.t u32.t)
                        (Trait := ltac:(refine _)))
                      (borrow_mut iter)) in
                let* α1 : M.Val (core.option.Option.t u32.t) := M.alloc α0 in
                match_operator
                  α1
                  [
                    fun γ =>
                      (let* α0 := M.read γ in
                      match α0 with
                      | core.option.Option.None =>
                        let* α0 : M.Val never.t := M.break in
                        let* α1 := M.read α0 in
                        let* α2 : unit := never_to_any α1 in
                        M.alloc α2
                      | _ => M.break_match
                      end) :
                      M (M.Val unit);
                    fun γ =>
                      (let* α0 := M.read γ in
                      match α0 with
                      | core.option.Option.Some _ =>
                        let γ0 := γ.["Some.0"] in
                        let* i := M.copy γ0 in
                        let* addition : M.Val u32.t :=
                          let* α0 : u32.t := M.read i in
                          let* α1 : u32.t :=
                            BinOp.Panic.rem α0 (Integer.of_Z 2) in
                          let* α2 : M.Val bool.t :=
                            M.alloc (BinOp.Pure.eq α1 (Integer.of_Z 1)) in
                          let* α3 : M.Val u32.t :=
                            match_operator
                              α2
                              [
                                fun γ => (M.pure i) : M (M.Val u32.t);
                                fun γ =>
                                  (let* α0 : M.Val never.t := M.continue in
                                  let* α1 := M.read α0 in
                                  let* α2 : u32.t := never_to_any α1 in
                                  M.alloc α2) :
                                  M (M.Val u32.t)
                              ] in
                          M.copy α3 in
                        let* _ : M.Val unit :=
                          let β : M.Val u32.t := acc in
                          let* α0 := M.read β in
                          let* α1 : u32.t := M.read addition in
                          let* α2 := BinOp.Panic.add α0 α1 in
                          assign β α2 in
                        M.alloc tt
                      | _ => M.break_match
                      end) :
                      M (M.Val unit)
                  ] in
              M.alloc tt)) :
            M (M.Val unit)
        ] in
    M.pure (use α3) in
  M.read acc.
