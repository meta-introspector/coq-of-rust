(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition NTHREADS : M.Val i32.t := M.run (M.alloc (Integer.of_Z 3)).

(*
fn main() {
    // Channels have two endpoints: the `Sender<T>` and the `Receiver<T>`,
    // where `T` is the type of the message to be transferred
    // (type annotation is superfluous)
    let (tx, rx): (Sender<i32>, Receiver<i32>) = mpsc::channel();
    let mut children = Vec::new();

    for id in 0..NTHREADS {
        // The sender endpoint can be copied
        let thread_tx = tx.clone();

        // Each thread will send its id via the channel
        let child = thread::spawn(move || {
            // The thread takes ownership over `thread_tx`
            // Each thread queues a message in the channel
            thread_tx.send(id).unwrap();

            // Sending is a non-blocking operation, the thread will continue
            // immediately after sending its message
            println!("thread {} finished", id);
        });

        children.push(child);
    }

    // Here, all the messages are collected
    let mut ids = Vec::with_capacity(NTHREADS as usize);
    for _ in 0..NTHREADS {
        // The `recv` method picks a message from the channel
        // `recv` will block the current thread if there are no messages available
        ids.push(rx.recv());
    }

    // Wait for the threads to complete any remaining work
    for child in children {
        child.join().expect("oops! the child thread panicked");
    }

    // Show the order in which the messages were sent
    println!("{:?}", ids);
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* α0 : (std.sync.mpsc.Sender.t i32.t) * (std.sync.mpsc.Receiver.t i32.t) :=
    M.call std.sync.mpsc.channel in
  let* α1 :
      M.Val
        ((std.sync.mpsc.Sender.t i32.t) * (std.sync.mpsc.Receiver.t i32.t)) :=
    M.alloc α0 in
  let* α2 : M.Val unit :=
    match_operator
      α1
      [
        fun γ =>
          (let* α0 := M.read γ in
          match α0 with
          | (_, _) =>
            let γ0 := Tuple.Access.left γ in
            let γ1 := Tuple.Access.right γ in
            let* tx := M.copy γ0 in
            let* rx := M.copy γ1 in
            let* children :
                M.Val
                  (alloc.vec.Vec.t
                    (std.thread.JoinHandle.t unit)
                    alloc.alloc.Global.t) :=
              let* α0 :
                  alloc.vec.Vec.t
                    (std.thread.JoinHandle.t unit)
                    alloc.alloc.Global.t :=
                M.call
                  (alloc.vec.Vec.t
                      (std.thread.JoinHandle.t unit)
                      alloc.alloc.Global.t)::["new"] in
              M.alloc α0 in
            let* _ : M.Val unit :=
              let* α0 : ref i32.t := M.read channels.NTHREADS in
              let* α1 : i32.t := M.read (deref α0) in
              let* α2 : core.ops.range.Range.t i32.t :=
                M.call
                  ((core.iter.traits.collect.IntoIterator.into_iter
                      (Self := core.ops.range.Range.t i32.t)
                      (Trait := ltac:(refine _)))
                    {|
                      core.ops.range.Range.start := Integer.of_Z 0;
                      core.ops.range.Range.end_ := α1;
                    |}) in
              let* α3 : M.Val (core.ops.range.Range.t i32.t) := M.alloc α2 in
              let* α4 : M.Val unit :=
                match_operator
                  α3
                  [
                    fun γ =>
                      (let* iter := M.copy γ in
                      M.loop
                        (let* _ : M.Val unit :=
                          let* α0 : core.option.Option.t i32.t :=
                            M.call
                              ((core.iter.traits.iterator.Iterator.next
                                  (Self := core.ops.range.Range.t i32.t)
                                  (Trait := ltac:(refine _)))
                                (borrow_mut iter)) in
                          let* α1 : M.Val (core.option.Option.t i32.t) :=
                            M.alloc α0 in
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
                                  let* id := M.copy γ0 in
                                  let* thread_tx :
                                      M.Val (std.sync.mpsc.Sender.t i32.t) :=
                                    let* α0 : std.sync.mpsc.Sender.t i32.t :=
                                      M.call
                                        ((core.clone.Clone.clone
                                            (Self :=
                                              std.sync.mpsc.Sender.t i32.t)
                                            (Trait := ltac:(refine _)))
                                          (borrow tx)) in
                                    M.alloc α0 in
                                  let* child :
                                      M.Val (std.thread.JoinHandle.t unit) :=
                                    let* α0 : std.thread.JoinHandle.t unit :=
                                      M.call
                                        (std.thread.spawn
                                          ((let* _ : M.Val unit :=
                                            let* α0 : i32.t := M.read id in
                                            let* α1 :
                                                core.result.Result.t
                                                  unit
                                                  (std.sync.mpsc.SendError.t
                                                    i32.t) :=
                                              M.call
                                                ((std.sync.mpsc.Sender.t
                                                      i32.t)::["send"]
                                                  (borrow thread_tx)
                                                  α0) in
                                            let* α2 : unit :=
                                              M.call
                                                ((core.result.Result.t
                                                      unit
                                                      (std.sync.mpsc.SendError.t
                                                        i32.t))::["unwrap"]
                                                  α1) in
                                            M.alloc α2 in
                                          let* _ : M.Val unit :=
                                            let* _ : M.Val unit :=
                                              let* α0 : ref str.t :=
                                                M.read (mk_str "thread ") in
                                              let* α1 : ref str.t :=
                                                M.read (mk_str " finished
") in
                                              let* α2 :
                                                  M.Val (array (ref str.t)) :=
                                                M.alloc [ α0; α1 ] in
                                              let* α3 :
                                                  M.Val
                                                    (ref (array (ref str.t))) :=
                                                M.alloc (borrow α2) in
                                              let* α4 :
                                                  ref (slice (ref str.t)) :=
                                                M.read
                                                  (pointer_coercion
                                                    "Unsize"
                                                    α3) in
                                              let* α5 :
                                                  core.fmt.rt.Argument.t :=
                                                M.call
                                                  (core.fmt.rt.Argument.t::["new_display"]
                                                    (borrow id)) in
                                              let* α6 :
                                                  M.Val
                                                    (array
                                                      core.fmt.rt.Argument.t) :=
                                                M.alloc [ α5 ] in
                                              let* α7 :
                                                  M.Val
                                                    (ref
                                                      (array
                                                        core.fmt.rt.Argument.t)) :=
                                                M.alloc (borrow α6) in
                                              let* α8 :
                                                  ref
                                                    (slice
                                                      core.fmt.rt.Argument.t) :=
                                                M.read
                                                  (pointer_coercion
                                                    "Unsize"
                                                    α7) in
                                              let* α9 : core.fmt.Arguments.t :=
                                                M.call
                                                  (core.fmt.Arguments.t::["new_v1"]
                                                    α4
                                                    α8) in
                                              let* α10 : unit :=
                                                M.call
                                                  (std.io.stdio._print α9) in
                                              M.alloc α10 in
                                            M.alloc tt in
                                          let* α0 : M.Val unit := M.alloc tt in
                                          M.read α0) :
                                          M unit)) in
                                    M.alloc α0 in
                                  let* _ : M.Val unit :=
                                    let* α0 : std.thread.JoinHandle.t unit :=
                                      M.read child in
                                    let* α1 : unit :=
                                      M.call
                                        ((alloc.vec.Vec.t
                                              (std.thread.JoinHandle.t unit)
                                              alloc.alloc.Global.t)::["push"]
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
            let* ids :
                M.Val
                  (alloc.vec.Vec.t
                    (core.result.Result.t i32.t std.sync.mpsc.RecvError.t)
                    alloc.alloc.Global.t) :=
              let* α0 : ref i32.t := M.read channels.NTHREADS in
              let* α1 : i32.t := M.read (deref α0) in
              let* α2 : usize.t := cast α1 in
              let* α3 :
                  alloc.vec.Vec.t
                    (core.result.Result.t i32.t std.sync.mpsc.RecvError.t)
                    alloc.alloc.Global.t :=
                M.call
                  ((alloc.vec.Vec.t
                        (core.result.Result.t i32.t std.sync.mpsc.RecvError.t)
                        alloc.alloc.Global.t)::["with_capacity"]
                    α2) in
              M.alloc α3 in
            let* _ : M.Val unit :=
              let* α0 : ref i32.t := M.read channels.NTHREADS in
              let* α1 : i32.t := M.read (deref α0) in
              let* α2 : core.ops.range.Range.t i32.t :=
                M.call
                  ((core.iter.traits.collect.IntoIterator.into_iter
                      (Self := core.ops.range.Range.t i32.t)
                      (Trait := ltac:(refine _)))
                    {|
                      core.ops.range.Range.start := Integer.of_Z 0;
                      core.ops.range.Range.end_ := α1;
                    |}) in
              let* α3 : M.Val (core.ops.range.Range.t i32.t) := M.alloc α2 in
              let* α4 : M.Val unit :=
                match_operator
                  α3
                  [
                    fun γ =>
                      (let* iter := M.copy γ in
                      M.loop
                        (let* _ : M.Val unit :=
                          let* α0 : core.option.Option.t i32.t :=
                            M.call
                              ((core.iter.traits.iterator.Iterator.next
                                  (Self := core.ops.range.Range.t i32.t)
                                  (Trait := ltac:(refine _)))
                                (borrow_mut iter)) in
                          let* α1 : M.Val (core.option.Option.t i32.t) :=
                            M.alloc α0 in
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
                                  let* _ : M.Val unit :=
                                    let* α0 :
                                        core.result.Result.t
                                          i32.t
                                          std.sync.mpsc.RecvError.t :=
                                      M.call
                                        ((std.sync.mpsc.Receiver.t
                                              i32.t)::["recv"]
                                          (borrow rx)) in
                                    let* α1 : unit :=
                                      M.call
                                        ((alloc.vec.Vec.t
                                              (core.result.Result.t
                                                i32.t
                                                std.sync.mpsc.RecvError.t)
                                              alloc.alloc.Global.t)::["push"]
                                          (borrow_mut ids)
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
            let* _ : M.Val unit :=
              let* α0 :
                  alloc.vec.Vec.t
                    (std.thread.JoinHandle.t unit)
                    alloc.alloc.Global.t :=
                M.read children in
              let* α1 :
                  alloc.vec.into_iter.IntoIter.t
                    (std.thread.JoinHandle.t unit)
                    alloc.alloc.Global.t :=
                M.call
                  ((core.iter.traits.collect.IntoIterator.into_iter
                      (Self :=
                        alloc.vec.Vec.t
                          (std.thread.JoinHandle.t unit)
                          alloc.alloc.Global.t)
                      (Trait := ltac:(refine _)))
                    α0) in
              let* α2 :
                  M.Val
                    (alloc.vec.into_iter.IntoIter.t
                      (std.thread.JoinHandle.t unit)
                      alloc.alloc.Global.t) :=
                M.alloc α1 in
              let* α3 : M.Val unit :=
                match_operator
                  α2
                  [
                    fun γ =>
                      (let* iter := M.copy γ in
                      M.loop
                        (let* _ : M.Val unit :=
                          let* α0 :
                              core.option.Option.t
                                (std.thread.JoinHandle.t unit) :=
                            M.call
                              ((core.iter.traits.iterator.Iterator.next
                                  (Self :=
                                    alloc.vec.into_iter.IntoIter.t
                                      (std.thread.JoinHandle.t unit)
                                      alloc.alloc.Global.t)
                                  (Trait := ltac:(refine _)))
                                (borrow_mut iter)) in
                          let* α1 :
                              M.Val
                                (core.option.Option.t
                                  (std.thread.JoinHandle.t unit)) :=
                            M.alloc α0 in
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
                                  let* child := M.copy γ0 in
                                  let* _ : M.Val unit :=
                                    let* α0 : std.thread.JoinHandle.t unit :=
                                      M.read child in
                                    let* α1 :
                                        core.result.Result.t
                                          unit
                                          (alloc.boxed.Box.t
                                            dynamic
                                            alloc.alloc.Global.t) :=
                                      M.call
                                        ((std.thread.JoinHandle.t
                                              unit)::["join"]
                                          α0) in
                                    let* α2 : ref str.t :=
                                      M.read
                                        (mk_str
                                          "oops! the child thread panicked") in
                                    let* α3 : unit :=
                                      M.call
                                        ((core.result.Result.t
                                              unit
                                              (alloc.boxed.Box.t
                                                dynamic
                                                alloc.alloc.Global.t))::["expect"]
                                          α1
                                          α2) in
                                    M.alloc α3 in
                                  M.alloc tt
                                | _ => M.break_match
                                end) :
                                M (M.Val unit)
                            ] in
                        M.alloc tt)) :
                      M (M.Val unit)
                  ] in
              M.pure (use α3) in
            let* _ : M.Val unit :=
              let* _ : M.Val unit :=
                let* α0 : ref str.t := M.read (mk_str "") in
                let* α1 : ref str.t := M.read (mk_str "
") in
                let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
                let* α3 : M.Val (ref (array (ref str.t))) :=
                  M.alloc (borrow α2) in
                let* α4 : ref (slice (ref str.t)) :=
                  M.read (pointer_coercion "Unsize" α3) in
                let* α5 : core.fmt.rt.Argument.t :=
                  M.call (core.fmt.rt.Argument.t::["new_debug"] (borrow ids)) in
                let* α6 : M.Val (array core.fmt.rt.Argument.t) :=
                  M.alloc [ α5 ] in
                let* α7 : M.Val (ref (array core.fmt.rt.Argument.t)) :=
                  M.alloc (borrow α6) in
                let* α8 : ref (slice core.fmt.rt.Argument.t) :=
                  M.read (pointer_coercion "Unsize" α7) in
                let* α9 : core.fmt.Arguments.t :=
                  M.call (core.fmt.Arguments.t::["new_v1"] α4 α8) in
                let* α10 : unit := M.call (std.io.stdio._print α9) in
                M.alloc α10 in
              M.alloc tt in
            M.alloc tt
          end) :
          M (M.Val unit)
      ] in
  M.read α2.
