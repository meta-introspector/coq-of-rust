(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    // This variable declaration is where its value is specified.
    let apple = Arc::new("the same apple");

    for _ in 0..10 {
        // Here there is no value specification as it is a pointer to a
        // reference in the memory heap.
        let apple = Arc::clone(&apple);

        thread::spawn(move || {
            // As Arc was used, threads can be spawned using the value allocated
            // in the Arc variable pointer's location.
            println!("{:?}", apple);
        });
    }

    // Make sure all Arc instances are printed from spawned threads.
    thread::sleep(Duration::from_secs(1));
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  M.function_body
    (let* apple : ltac:(refine (M.Val (alloc.sync.Arc.t (ref str.t)))) :=
      let* α0 :=
        (alloc.sync.Arc.t (ref str.t))::["new"] (mk_str "the same apple") in
      M.alloc α0 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* α0 : ltac:(refine (M.Val i32.t)) := M.alloc 0 in
      let* α1 := M.read α0 in
      let* α2 : ltac:(refine (M.Val i32.t)) := M.alloc 10 in
      let* α3 := M.read α2 in
      let* α4 : ltac:(refine (M.Val (core.ops.range.Range.t i32.t))) :=
        M.alloc
          {| core.ops.range.Range.start := α1; core.ops.range.Range.end := α3;
          |} in
      let* α5 :=
        (core.iter.traits.collect.IntoIterator.into_iter
            (Self := core.ops.range.Range.t i32.t)
            (Trait := ltac:(refine _)))
          α4 in
      let* α6 : ltac:(refine (M.Val (core.ops.range.Range.t i32.t))) :=
        M.alloc α5 in
      let* α7 := M.read α6 in
      let* α8 : ltac:(refine (M.Val unit)) :=
        match α7 with
        | iter =>
          let* iter := M.alloc iter in
          loop
            (let* _ : ltac:(refine (M.Val unit)) :=
              let* α0 :
                  ltac:(refine
                    (M.Val (mut_ref (core.ops.range.Range.t i32.t)))) :=
                borrow_mut iter in
              let* α1 :=
                (core.iter.traits.iterator.Iterator.next
                    (Self := core.ops.range.Range.t i32.t)
                    (Trait := ltac:(refine _)))
                  α0 in
              let* α2 : ltac:(refine (M.Val (core.option.Option.t i32.t))) :=
                M.alloc α1 in
              let* α3 := M.read α2 in
              match α3 with
              | core.option.Option.None  =>
                let* α0 : ltac:(refine (M.Val never.t)) := Break in
                never_to_any α0
              | core.option.Option.Some _ =>
                let* apple :
                    ltac:(refine (M.Val (alloc.sync.Arc.t (ref str.t)))) :=
                  let* α0 :
                      ltac:(refine
                        (M.Val (ref (alloc.sync.Arc.t (ref str.t))))) :=
                    borrow apple in
                  let* α1 :=
                    (core.clone.Clone.clone
                        (Self := alloc.sync.Arc.t (ref str.t))
                        (Trait := ltac:(refine _)))
                      α0 in
                  M.alloc α1 in
                let* _ : ltac:(refine (M.Val (std.thread.JoinHandle.t unit))) :=
                  let* α0 :=
                    std.thread.spawn
                      (let* _ : ltac:(refine (M.Val unit)) :=
                        let* _ : ltac:(refine (M.Val unit)) :=
                          let* α0 : ltac:(refine (M.Val (array (ref str.t)))) :=
                            M.alloc [ mk_str ""; mk_str "
" ] in
                          let* α1 :
                              ltac:(refine (M.Val (ref (array (ref str.t))))) :=
                            borrow α0 in
                          let* α2 :
                              ltac:(refine (M.Val (ref (slice (ref str.t))))) :=
                            pointer_coercion "Unsize" α1 in
                          let* α3 :
                              ltac:(refine
                                (M.Val (ref (alloc.sync.Arc.t (ref str.t))))) :=
                            borrow apple in
                          let* α4 := core.fmt.rt.Argument.t::["new_debug"] α3 in
                          let* α5 :
                              ltac:(refine (M.Val core.fmt.rt.Argument.t)) :=
                            M.alloc α4 in
                          let* α6 :
                              ltac:(refine
                                (M.Val (array core.fmt.rt.Argument.t))) :=
                            M.alloc [ α5 ] in
                          let* α7 :
                              ltac:(refine
                                (M.Val (ref (array core.fmt.rt.Argument.t)))) :=
                            borrow α6 in
                          let* α8 :
                              ltac:(refine
                                (M.Val (ref (slice core.fmt.rt.Argument.t)))) :=
                            pointer_coercion "Unsize" α7 in
                          let* α9 := core.fmt.Arguments.t::["new_v1"] α2 α8 in
                          let* α10 :
                              ltac:(refine (M.Val core.fmt.Arguments.t)) :=
                            M.alloc α9 in
                          let* α11 := std.io.stdio._print α10 in
                          M.alloc α11 in
                        M.alloc tt in
                      M.alloc tt) in
                  M.alloc α0 in
                M.alloc tt
              end in
            M.alloc tt)
        end in
      use α8 in
    let* _ : ltac:(refine (M.Val unit)) :=
      let* α0 : ltac:(refine (M.Val u64.t)) := M.alloc 1 in
      let* α1 := core.time.Duration.t::["from_secs"] α0 in
      let* α2 : ltac:(refine (M.Val core.time.Duration.t)) := M.alloc α1 in
      let* α3 := std.thread.sleep α2 in
      M.alloc α3 in
    M.alloc tt).
