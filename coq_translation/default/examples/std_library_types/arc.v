(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* apple : ltac:(refine (alloc.sync.Arc (ref str))) :=
      (alloc.sync.Arc (ref str))::["new"] (mk_str "the same apple") in
    let* _ : ltac:(refine unit) :=
      let* α0 : ltac:(refine i32) := M.alloc 0 in
      let* α1 : ltac:(refine i32) := M.alloc 10 in
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
              let* α1 : ltac:(refine (core.option.Option i32)) :=
                (core.iter.traits.iterator.Iterator.next
                    (Self := core.ops.range.Range i32)
                    (Trait := ltac:(refine _)))
                  α0 in
              let* α2 := M.read α1 in
              match α2 with
              | core.option.Option.None  =>
                let* α0 : ltac:(refine never) := Break in
                never_to_any α0
              | core.option.Option.Some _ =>
                let* apple : ltac:(refine (alloc.sync.Arc (ref str))) :=
                  let* α0 : ltac:(refine (ref (alloc.sync.Arc (ref str)))) :=
                    borrow apple in
                  (core.clone.Clone.clone
                      (Self := alloc.sync.Arc (ref str))
                      (Trait := ltac:(refine _)))
                    α0 in
                let* _ : ltac:(refine (std.thread.JoinHandle unit)) :=
                  std.thread.spawn
                    (let* _ : ltac:(refine unit) :=
                      let* _ : ltac:(refine unit) :=
                        let* α0 : ltac:(refine (array (ref str))) :=
                          M.alloc [ mk_str ""; mk_str "
" ] in
                        let* α1 : ltac:(refine (ref (array (ref str)))) :=
                          borrow α0 in
                        let* α2 : ltac:(refine (ref (slice (ref str)))) :=
                          pointer_coercion "Unsize" α1 in
                        let* α3 :
                            ltac:(refine (ref (alloc.sync.Arc (ref str)))) :=
                          borrow apple in
                        let* α4 : ltac:(refine core.fmt.rt.Argument) :=
                          core.fmt.rt.Argument::["new_debug"] α3 in
                        let* α5 : ltac:(refine (array core.fmt.rt.Argument)) :=
                          M.alloc [ α4 ] in
                        let* α6 :
                            ltac:(refine (ref (array core.fmt.rt.Argument))) :=
                          borrow α5 in
                        let* α7 :
                            ltac:(refine (ref (slice core.fmt.rt.Argument))) :=
                          pointer_coercion "Unsize" α6 in
                        let* α8 : ltac:(refine core.fmt.Arguments) :=
                          core.fmt.Arguments::["new_v1"] α2 α7 in
                        std.io.stdio._print α8 in
                      M.alloc tt in
                    M.alloc tt) in
                M.alloc tt
              end in
            M.alloc tt)
        end in
      use α5 in
    let* _ : ltac:(refine unit) :=
      let* α0 : ltac:(refine u64) := M.alloc 1 in
      let* α1 : ltac:(refine core.time.Duration) :=
        core.time.Duration::["from_secs"] α0 in
      std.thread.sleep α1 in
    M.alloc tt).
