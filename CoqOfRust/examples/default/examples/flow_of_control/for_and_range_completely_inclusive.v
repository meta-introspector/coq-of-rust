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
  let* α0 : _ :=
    ltac:(M.get_method (fun ℐ =>
      core.iter.traits.collect.IntoIterator.into_iter
        (Self := core.ops.range.RangeInclusive.t i32.t)
        (Trait := ℐ))) in
  let* α1 : core.ops.range.RangeInclusive.t i32.t :=
    M.call
      (impl (core.ops.range.RangeInclusive.t i32.t) "new"
        ((Integer.of_Z 1) : i32.t)
        ((Integer.of_Z 100) : i32.t)) in
  let* α2 : core.ops.range.RangeInclusive.t i32.t := M.call (α0 α1) in
  let* α3 : M.Val (core.ops.range.RangeInclusive.t i32.t) := M.alloc α2 in
  let* α4 : M.Val unit :=
    match_operator
      α3
      [
        fun γ =>
          (let* iter := M.copy γ in
          M.loop
            (let* _ : M.Val unit :=
              let* α0 : _ :=
                ltac:(M.get_method (fun ℐ =>
                  core.iter.traits.iterator.Iterator.next
                    (Self := core.ops.range.RangeInclusive.t i32.t)
                    (Trait := ℐ))) in
              let* α1 : core.option.Option.t i32.t :=
                M.call (α0 (borrow_mut iter)) in
              let* α2 : M.Val (core.option.Option.t i32.t) := M.alloc α1 in
              match_operator
                α2
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
                      let γ0_0 := core.option.Option.Get_Some_0 γ in
                      let* n := M.copy γ0_0 in
                      let* α0 : i32.t := M.read n in
                      let* α1 : i32.t :=
                        BinOp.Panic.rem α0 ((Integer.of_Z 15) : i32.t) in
                      let* α2 : M.Val bool.t :=
                        M.alloc (BinOp.Pure.eq α1 ((Integer.of_Z 0) : i32.t)) in
                      let* α3 : bool.t := M.read (use α2) in
                      if α3 then
                        let* _ : M.Val unit :=
                          let* _ : M.Val unit :=
                            let* α0 : ref str.t :=
                              M.read (mk_str "fizzbuzz
") in
                            let* α1 : M.Val (array (ref str.t)) :=
                              M.alloc [ α0 ] in
                            let* α2 : M.Val (ref (array (ref str.t))) :=
                              M.alloc (borrow α1) in
                            let* α3 : ref (slice (ref str.t)) :=
                              M.read (pointer_coercion "Unsize" α2) in
                            let* α4 : core.fmt.Arguments.t :=
                              M.call
                                (impl core.fmt.Arguments.t "new_const" α3) in
                            let* α5 : unit := M.call (std.io.stdio._print α4) in
                            M.alloc α5 in
                          M.alloc tt in
                        M.alloc tt
                      else
                        let* α0 : i32.t := M.read n in
                        let* α1 : i32.t :=
                          BinOp.Panic.rem α0 ((Integer.of_Z 3) : i32.t) in
                        let* α2 : M.Val bool.t :=
                          M.alloc
                            (BinOp.Pure.eq α1 ((Integer.of_Z 0) : i32.t)) in
                        let* α3 : bool.t := M.read (use α2) in
                        if α3 then
                          let* _ : M.Val unit :=
                            let* _ : M.Val unit :=
                              let* α0 : ref str.t := M.read (mk_str "fizz
") in
                              let* α1 : M.Val (array (ref str.t)) :=
                                M.alloc [ α0 ] in
                              let* α2 : M.Val (ref (array (ref str.t))) :=
                                M.alloc (borrow α1) in
                              let* α3 : ref (slice (ref str.t)) :=
                                M.read (pointer_coercion "Unsize" α2) in
                              let* α4 : core.fmt.Arguments.t :=
                                M.call
                                  (impl core.fmt.Arguments.t "new_const" α3) in
                              let* α5 : unit :=
                                M.call (std.io.stdio._print α4) in
                              M.alloc α5 in
                            M.alloc tt in
                          M.alloc tt
                        else
                          let* α0 : i32.t := M.read n in
                          let* α1 : i32.t :=
                            BinOp.Panic.rem α0 ((Integer.of_Z 5) : i32.t) in
                          let* α2 : M.Val bool.t :=
                            M.alloc
                              (BinOp.Pure.eq α1 ((Integer.of_Z 0) : i32.t)) in
                          let* α3 : bool.t := M.read (use α2) in
                          if α3 then
                            let* _ : M.Val unit :=
                              let* _ : M.Val unit :=
                                let* α0 : ref str.t :=
                                  M.read (mk_str "buzz
") in
                                let* α1 : M.Val (array (ref str.t)) :=
                                  M.alloc [ α0 ] in
                                let* α2 : M.Val (ref (array (ref str.t))) :=
                                  M.alloc (borrow α1) in
                                let* α3 : ref (slice (ref str.t)) :=
                                  M.read (pointer_coercion "Unsize" α2) in
                                let* α4 : core.fmt.Arguments.t :=
                                  M.call
                                    (impl core.fmt.Arguments.t "new_const"
                                      α3) in
                                let* α5 : unit :=
                                  M.call (std.io.stdio._print α4) in
                                M.alloc α5 in
                              M.alloc tt in
                            M.alloc tt
                          else
                            let* _ : M.Val unit :=
                              let* _ : M.Val unit :=
                                let* α0 : ref str.t := M.read (mk_str "") in
                                let* α1 : ref str.t := M.read (mk_str "
") in
                                let* α2 : M.Val (array (ref str.t)) :=
                                  M.alloc [ α0; α1 ] in
                                let* α3 : M.Val (ref (array (ref str.t))) :=
                                  M.alloc (borrow α2) in
                                let* α4 : ref (slice (ref str.t)) :=
                                  M.read (pointer_coercion "Unsize" α3) in
                                let* α5 : core.fmt.rt.Argument.t :=
                                  M.call
                                    (impl core.fmt.rt.Argument.t "new_display"
                                      (borrow n)) in
                                let* α6 :
                                    M.Val (array core.fmt.rt.Argument.t) :=
                                  M.alloc [ α5 ] in
                                let* α7 :
                                    M.Val
                                      (ref (array core.fmt.rt.Argument.t)) :=
                                  M.alloc (borrow α6) in
                                let* α8 : ref (slice core.fmt.rt.Argument.t) :=
                                  M.read (pointer_coercion "Unsize" α7) in
                                let* α9 : core.fmt.Arguments.t :=
                                  M.call
                                    (impl core.fmt.Arguments.t "new_v1"
                                      α4
                                      α8) in
                                let* α10 : unit :=
                                  M.call (std.io.stdio._print α9) in
                                M.alloc α10 in
                              M.alloc tt in
                            M.alloc tt
                    | _ => M.break_match
                    end) :
                    M (M.Val unit)
                ] in
            M.alloc tt)) :
          M (M.Val unit)
      ] in
  M.read (use α4).
