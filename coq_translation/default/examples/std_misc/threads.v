(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition NTHREADS : u32.t := M.run (M.alloc 10).

(*
fn main() {
    // Make a vector to hold the children which are spawned.
    let mut children = vec![];

    for i in 0..NTHREADS {
        // Spin up another thread
        children.push(thread::spawn(move || {
            println!("this is thread number {}", i);
        }));
    }

    for child in children {
        // Wait for the thread to finish. Returns a result.
        let _ = child.join();
    }
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M (M.Val unit) :=
  M.function_body
    (let* children :
        ltac:(refine
          (M.Val
            (alloc.vec.Vec.t
              (std.thread.JoinHandle.t unit)
              alloc.alloc.Global.t))) :=
      (alloc.vec.Vec.t
          (std.thread.JoinHandle.t unit)
          alloc.alloc.Global.t)::["new"] in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* α0 : ltac:(refine (M.Val u32.t)) := M.alloc 0 in
      let* α1 := M.read α0 in
      let* α2 := M.read threads.NTHREADS in
      let* α3 : ltac:(refine (M.Val (core.ops.range.Range.t u32.t))) :=
        M.alloc
          {| core.ops.range.Range.start := α1; core.ops.range.Range.end := α2;
          |} in
      let* α4 : ltac:(refine (M.Val (core.ops.range.Range.t u32.t))) :=
        (core.iter.traits.collect.IntoIterator.into_iter
            (Self := core.ops.range.Range.t u32.t)
            (Trait := ltac:(refine _)))
          α3 in
      let* α5 := M.read α4 in
      let* α6 : ltac:(refine (M.Val unit)) :=
        match α5 with
        | iter =>
          let* iter := M.alloc iter in
          loop
            (let* _ : ltac:(refine (M.Val unit)) :=
              let* α0 :
                  ltac:(refine
                    (M.Val (mut_ref (core.ops.range.Range.t u32.t)))) :=
                borrow_mut iter in
              let* α1 : ltac:(refine (M.Val (core.option.Option.t u32.t))) :=
                (core.iter.traits.iterator.Iterator.next
                    (Self := core.ops.range.Range.t u32.t)
                    (Trait := ltac:(refine _)))
                  α0 in
              let* α2 := M.read α1 in
              match α2 with
              | core.option.Option.None  =>
                let* α0 : ltac:(refine (M.Val never.t)) := Break in
                never_to_any α0
              | core.option.Option.Some i =>
                let* i := M.alloc i in
                let* _ : ltac:(refine (M.Val unit)) :=
                  let* α0 :
                      ltac:(refine
                        (M.Val
                          (mut_ref
                            (alloc.vec.Vec.t
                              (std.thread.JoinHandle.t unit)
                              alloc.alloc.Global.t)))) :=
                    borrow_mut children in
                  let* α1 :
                      ltac:(refine (M.Val (std.thread.JoinHandle.t unit))) :=
                    std.thread.spawn
                      (let* _ : ltac:(refine (M.Val unit)) :=
                        let* _ : ltac:(refine (M.Val unit)) :=
                          let* α0 : ltac:(refine (M.Val (array (ref str)))) :=
                            M.alloc
                              [ mk_str "this is thread number "; mk_str "
" ] in
                          let* α1 :
                              ltac:(refine (M.Val (ref (array (ref str))))) :=
                            borrow α0 in
                          let* α2 :
                              ltac:(refine (M.Val (ref (slice (ref str))))) :=
                            pointer_coercion "Unsize" α1 in
                          let* α3 : ltac:(refine (M.Val (ref u32.t))) :=
                            borrow i in
                          let* α4 :
                              ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
                            core.fmt.rt.Argument.t::["new_display"] α3 in
                          let* α5 :
                              ltac:(refine
                                (M.Val (array core.fmt.rt.Argument.t))) :=
                            M.alloc [ α4 ] in
                          let* α6 :
                              ltac:(refine
                                (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
                            borrow α5 in
                          let* α7 :
                              ltac:(refine
                                (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
                            pointer_coercion "Unsize" α6 in
                          let* α8 :
                              ltac:(refine (M.Val core.fmt.Arguments.t)) :=
                            core.fmt.Arguments.t::["new_v1"] α2 α7 in
                          std.io.stdio._print α8 in
                        M.alloc tt in
                      M.alloc tt) in
                  (alloc.vec.Vec.t
                        (std.thread.JoinHandle.t unit)
                        alloc.alloc.Global.t)::["push"]
                    α0
                    α1 in
                M.alloc tt
              end in
            M.alloc tt)
        end in
      use α6 in
    let* α0 :
        ltac:(refine
          (M.Val
            (alloc.vec.into_iter.IntoIter.t
              (std.thread.JoinHandle.t unit)
              alloc.alloc.Global.t))) :=
      (core.iter.traits.collect.IntoIterator.into_iter
          (Self :=
            alloc.vec.Vec.t (std.thread.JoinHandle.t unit) alloc.alloc.Global.t)
          (Trait := ltac:(refine _)))
        children in
    let* α1 := M.read α0 in
    let* α2 : ltac:(refine (M.Val unit)) :=
      match α1 with
      | iter =>
        let* iter := M.alloc iter in
        loop
          (let* _ : ltac:(refine (M.Val unit)) :=
            let* α0 :
                ltac:(refine
                  (M.Val
                    (mut_ref
                      (alloc.vec.into_iter.IntoIter.t
                        (std.thread.JoinHandle.t unit)
                        alloc.alloc.Global.t)))) :=
              borrow_mut iter in
            let* α1 :
                ltac:(refine
                  (M.Val
                    (core.option.Option.t (std.thread.JoinHandle.t unit)))) :=
              (core.iter.traits.iterator.Iterator.next
                  (Self :=
                    alloc.vec.into_iter.IntoIter.t
                      (std.thread.JoinHandle.t unit)
                      alloc.alloc.Global.t)
                  (Trait := ltac:(refine _)))
                α0 in
            let* α2 := M.read α1 in
            match α2 with
            | core.option.Option.None  =>
              let* α0 : ltac:(refine (M.Val never.t)) := Break in
              never_to_any α0
            | core.option.Option.Some child =>
              let* child := M.alloc child in
              let* _ :
                  ltac:(refine
                    (M.Val
                      (core.result.Result.t
                        unit
                        (alloc.boxed.Box.t
                          type not implemented
                          alloc.alloc.Global.t)))) :=
                (std.thread.JoinHandle.t unit)::["join"] child in
              M.alloc tt
            end in
          M.alloc tt)
      end in
    use α2).
