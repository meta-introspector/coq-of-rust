(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition NTHREADS : M.Val u32.t :=
  M.run (M.alloc ((Integer.of_Z 10) : u32.t)).

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
Definition main : M unit :=
  let* children :
      M.Val
        (alloc.vec.Vec.t (std.thread.JoinHandle.t unit) alloc.alloc.Global.t) :=
    let* α0 :
        alloc.vec.Vec.t (std.thread.JoinHandle.t unit) alloc.alloc.Global.t :=
      M.call
        (impl
          (alloc.vec.Vec.t (std.thread.JoinHandle.t unit) alloc.alloc.Global.t)
          "new") in
    M.alloc α0 in
  let* _ : M.Val unit :=
    let* α0 : _ :=
      ltac:(M.get_method (fun ℐ =>
        core.iter.traits.collect.IntoIterator.into_iter
          (Self := core.ops.range.Range.t u32.t)
          (Trait := ℐ))) in
    let* α1 : u32.t := M.read threads.NTHREADS in
    let* α2 : core.ops.range.Range.t u32.t :=
      M.call
        (α0
          {|
            core.ops.range.Range.start := (Integer.of_Z 0) : u32.t;
            core.ops.range.Range.end_ := α1;
          |}) in
    let* α3 : M.Val (core.ops.range.Range.t u32.t) := M.alloc α2 in
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
                      (Self := core.ops.range.Range.t u32.t)
                      (Trait := ℐ))) in
                let* α1 : core.option.Option.t u32.t :=
                  M.call (α0 (borrow_mut iter)) in
                let* α2 : M.Val (core.option.Option.t u32.t) := M.alloc α1 in
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
                        let* i := M.copy γ0_0 in
                        let* _ : M.Val unit :=
                          let* α0 : std.thread.JoinHandle.t unit :=
                            M.call
                              (std.thread.spawn
                                ((let* _ : M.Val unit :=
                                  let* _ : M.Val unit :=
                                    let* α0 : ref str.t :=
                                      M.read
                                        (mk_str "this is thread number ") in
                                    let* α1 : ref str.t :=
                                      M.read (mk_str "
") in
                                    let* α2 : M.Val (array (ref str.t)) :=
                                      M.alloc [ α0; α1 ] in
                                    let* α3 : M.Val (ref (array (ref str.t))) :=
                                      M.alloc (borrow α2) in
                                    let* α4 : ref (slice (ref str.t)) :=
                                      M.read (pointer_coercion "Unsize" α3) in
                                    let* α5 : core.fmt.rt.Argument.t :=
                                      M.call
                                        (impl
                                            core.fmt.rt.Argument.t
                                            "new_display"
                                          (borrow i)) in
                                    let* α6 :
                                        M.Val (array core.fmt.rt.Argument.t) :=
                                      M.alloc [ α5 ] in
                                    let* α7 :
                                        M.Val
                                          (ref
                                            (array core.fmt.rt.Argument.t)) :=
                                      M.alloc (borrow α6) in
                                    let* α8 :
                                        ref (slice core.fmt.rt.Argument.t) :=
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
                                let* α0 : M.Val unit := M.alloc tt in
                                M.read α0) :
                                M unit)) in
                          let* α1 : unit :=
                            M.call
                              (impl
                                  (alloc.vec.Vec.t
                                    (std.thread.JoinHandle.t unit)
                                    alloc.alloc.Global.t)
                                  "push"
                                (borrow_mut children)
                                α0) in
                          M.alloc α1 in
                        M.alloc tt
                      | _ => M.break_match
                      end) :
                      M (M.Val unit)
                  ] in
              M.alloc tt)) :
            M (M.Val unit)
        ] in
    M.pure (use α4) in
  let* α0 : _ :=
    ltac:(M.get_method (fun ℐ =>
      core.iter.traits.collect.IntoIterator.into_iter
        (Self :=
          alloc.vec.Vec.t (std.thread.JoinHandle.t unit) alloc.alloc.Global.t)
        (Trait := ℐ))) in
  let* α1 :
      alloc.vec.Vec.t (std.thread.JoinHandle.t unit) alloc.alloc.Global.t :=
    M.read children in
  let* α2 :
      alloc.vec.into_iter.IntoIter.t
        (std.thread.JoinHandle.t unit)
        alloc.alloc.Global.t :=
    M.call (α0 α1) in
  let* α3 :
      M.Val
        (alloc.vec.into_iter.IntoIter.t
          (std.thread.JoinHandle.t unit)
          alloc.alloc.Global.t) :=
    M.alloc α2 in
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
                    (Self :=
                      alloc.vec.into_iter.IntoIter.t
                        (std.thread.JoinHandle.t unit)
                        alloc.alloc.Global.t)
                    (Trait := ℐ))) in
              let* α1 : core.option.Option.t (std.thread.JoinHandle.t unit) :=
                M.call (α0 (borrow_mut iter)) in
              let* α2 :
                  M.Val (core.option.Option.t (std.thread.JoinHandle.t unit)) :=
                M.alloc α1 in
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
                      let* child := M.copy γ0_0 in
                      let* α0 : std.thread.JoinHandle.t unit := M.read child in
                      let* α1 :
                          core.result.Result.t
                            unit
                            (alloc.boxed.Box.t
                              _ (* dyn *)
                              alloc.alloc.Global.t) :=
                        M.call
                          (impl (std.thread.JoinHandle.t unit) "join" α0) in
                      let* α2 :
                          M.Val
                            (core.result.Result.t
                              unit
                              (alloc.boxed.Box.t
                                _ (* dyn *)
                                alloc.alloc.Global.t)) :=
                        M.alloc α1 in
                      match_operator
                        α2
                        [ fun γ => (M.alloc tt) : M (M.Val unit) ]
                    | _ => M.break_match
                    end) :
                    M (M.Val unit)
                ] in
            M.alloc tt)) :
          M (M.Val unit)
      ] in
  M.read (use α4).
