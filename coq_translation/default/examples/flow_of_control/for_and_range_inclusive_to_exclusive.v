(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* α0 : ltac:(refine i32) := M.alloc 1 in
    let* α1 : ltac:(refine i32) := M.alloc 101 in
    let* α2 : ltac:(refine (core.ops.range.Range i32)) :=
      M.alloc
        {| core.ops.range.Range.start := α0; core.ops.range.Range.end := α1;
        |} in
    let* α3 : ltac:(refine (core.ops.range.Range i32)) :=
      (core.iter.traits.collect.IntoIterator.into_iter
          (Self := core.ops.range.Range i32)
          (Trait := ltac:(refine _)))
        α2 in
    let* α4 := M.read α3 in
    let* α5 : ltac:(refine unit) :=
      match α4 with
      | iter =>
        loop
          (let* _ : ltac:(refine unit) :=
            let* α0 : ltac:(refine (mut_ref (core.ops.range.Range i32))) :=
              borrow_mut iter in
            let* α1 : ltac:(refine (core.ops.range.Range i32)) := deref α0 in
            let* α2 : ltac:(refine (mut_ref (core.ops.range.Range i32))) :=
              borrow_mut α1 in
            let* α3 : ltac:(refine (core.option.Option i32)) :=
              (core.iter.traits.iterator.Iterator.next
                  (Self := core.ops.range.Range i32)
                  (Trait := ltac:(refine _)))
                α2 in
            let* α4 := M.read α3 in
            match α4 with
            | core.option.Option.None  =>
              let* α0 : ltac:(refine never) := Break in
              never_to_any α0
            | core.option.Option.Some n =>
              let* α0 : ltac:(refine i32) := M.alloc 15 in
              let* α1 : ltac:(refine i32) := BinOp.rem n α0 in
              let* α2 : ltac:(refine i32) := M.alloc 0 in
              let* α3 : ltac:(refine bool) := BinOp.eq α1 α2 in
              let* α4 : ltac:(refine bool) := use α3 in
              if (α4 : bool) then
                let* _ : ltac:(refine unit) :=
                  let* _ : ltac:(refine unit) :=
                    let* α0 : ltac:(refine (array (ref str))) :=
                      M.alloc [ mk_str "fizzbuzz
" ] in
                    let* α1 : ltac:(refine (ref (array (ref str)))) :=
                      borrow α0 in
                    let* α2 : ltac:(refine (array (ref str))) := deref α1 in
                    let* α3 : ltac:(refine (ref (array (ref str)))) :=
                      borrow α2 in
                    let* α4 : ltac:(refine (ref (slice (ref str)))) :=
                      pointer_coercion "Unsize" α3 in
                    let* α5 : ltac:(refine core.fmt.Arguments) :=
                      core.fmt.Arguments::["new_const"] α4 in
                    std.io.stdio._print α5 in
                  M.alloc tt in
                M.alloc tt
              else
                let* α0 : ltac:(refine i32) := M.alloc 3 in
                let* α1 : ltac:(refine i32) := BinOp.rem n α0 in
                let* α2 : ltac:(refine i32) := M.alloc 0 in
                let* α3 : ltac:(refine bool) := BinOp.eq α1 α2 in
                let* α4 : ltac:(refine bool) := use α3 in
                if (α4 : bool) then
                  let* _ : ltac:(refine unit) :=
                    let* _ : ltac:(refine unit) :=
                      let* α0 : ltac:(refine (array (ref str))) :=
                        M.alloc [ mk_str "fizz
" ] in
                      let* α1 : ltac:(refine (ref (array (ref str)))) :=
                        borrow α0 in
                      let* α2 : ltac:(refine (array (ref str))) := deref α1 in
                      let* α3 : ltac:(refine (ref (array (ref str)))) :=
                        borrow α2 in
                      let* α4 : ltac:(refine (ref (slice (ref str)))) :=
                        pointer_coercion "Unsize" α3 in
                      let* α5 : ltac:(refine core.fmt.Arguments) :=
                        core.fmt.Arguments::["new_const"] α4 in
                      std.io.stdio._print α5 in
                    M.alloc tt in
                  M.alloc tt
                else
                  let* α0 : ltac:(refine i32) := M.alloc 5 in
                  let* α1 : ltac:(refine i32) := BinOp.rem n α0 in
                  let* α2 : ltac:(refine i32) := M.alloc 0 in
                  let* α3 : ltac:(refine bool) := BinOp.eq α1 α2 in
                  let* α4 : ltac:(refine bool) := use α3 in
                  if (α4 : bool) then
                    let* _ : ltac:(refine unit) :=
                      let* _ : ltac:(refine unit) :=
                        let* α0 : ltac:(refine (array (ref str))) :=
                          M.alloc [ mk_str "buzz
" ] in
                        let* α1 : ltac:(refine (ref (array (ref str)))) :=
                          borrow α0 in
                        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
                        let* α3 : ltac:(refine (ref (array (ref str)))) :=
                          borrow α2 in
                        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
                          pointer_coercion "Unsize" α3 in
                        let* α5 : ltac:(refine core.fmt.Arguments) :=
                          core.fmt.Arguments::["new_const"] α4 in
                        std.io.stdio._print α5 in
                      M.alloc tt in
                    M.alloc tt
                  else
                    let* _ : ltac:(refine unit) :=
                      let* _ : ltac:(refine unit) :=
                        let* α0 : ltac:(refine (array (ref str))) :=
                          M.alloc [ mk_str ""; mk_str "
" ] in
                        let* α1 : ltac:(refine (ref (array (ref str)))) :=
                          borrow α0 in
                        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
                        let* α3 : ltac:(refine (ref (array (ref str)))) :=
                          borrow α2 in
                        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
                          pointer_coercion "Unsize" α3 in
                        let* α5 : ltac:(refine (ref i32)) := borrow n in
                        let* α6 : ltac:(refine i32) := deref α5 in
                        let* α7 : ltac:(refine (ref i32)) := borrow α6 in
                        let* α8 : ltac:(refine core.fmt.rt.Argument) :=
                          core.fmt.rt.Argument::["new_display"] α7 in
                        let* α9 : ltac:(refine (array core.fmt.rt.Argument)) :=
                          M.alloc [ α8 ] in
                        let*
                            α10 :
                            ltac:(refine (ref (array core.fmt.rt.Argument))) :=
                          borrow α9 in
                        let* α11 : ltac:(refine (array core.fmt.rt.Argument)) :=
                          deref α10 in
                        let*
                            α12 :
                            ltac:(refine (ref (array core.fmt.rt.Argument))) :=
                          borrow α11 in
                        let*
                            α13 :
                            ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
                          pointer_coercion "Unsize" α12 in
                        let* α14 : ltac:(refine core.fmt.Arguments) :=
                          core.fmt.Arguments::["new_v1"] α4 α13 in
                        std.io.stdio._print α14 in
                      M.alloc tt in
                    M.alloc tt
            end in
          M.alloc tt)
      end in
    use α5).
