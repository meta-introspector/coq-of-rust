(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition NTHREADS : i32.t := M.run (M.alloc 3).

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
  M.function_body
    (let* '(tx, rx) :
        M.Val
          ((std.sync.mpsc.Sender.t i32.t) * (std.sync.mpsc.Receiver.t i32.t)) :=
      let* α0 :
          (std.sync.mpsc.Sender.t i32.t) * (std.sync.mpsc.Receiver.t i32.t) :=
        std.sync.mpsc.channel in
      M.alloc α0 in
    let* children :
        M.Val
          (alloc.vec.Vec.t
            (std.thread.JoinHandle.t unit)
            alloc.alloc.Global.t) :=
      let* α0 :
          alloc.vec.Vec.t (std.thread.JoinHandle.t unit) alloc.alloc.Global.t :=
        (alloc.vec.Vec.t
            (std.thread.JoinHandle.t unit)
            alloc.alloc.Global.t)::["new"] in
      M.alloc α0 in
    let* _ : M.Val unit :=
      let* α0 : M.Val i32.t := M.alloc 0 in
      let* α1 := M.read α0 in
      let* α2 := M.read channels.NTHREADS in
      let* α3 : M.Val i32.t := deref α2 in
      let* α4 := M.read α3 in
      let* α5 : core.ops.range.Range.t i32.t :=
        (core.iter.traits.collect.IntoIterator.into_iter
            (Self := core.ops.range.Range.t i32.t)
            (Trait := ltac:(refine _)))
          {| core.ops.range.Range.start := α1; core.ops.range.Range.end := α4;
          |} in
      let* α6 : M.Val (core.ops.range.Range.t i32.t) := M.alloc α5 in
      let* α7 := M.read α6 in
      let* α8 : M.Val unit :=
        match α7 with
        | iter =>
          let* iter := M.alloc iter in
          loop
            (let* _ : M.Val unit :=
              let* α0 : mut_ref (core.ops.range.Range.t i32.t) :=
                borrow_mut iter in
              let* α1 : M.Val (core.ops.range.Range.t i32.t) := deref α0 in
              let* α2 : mut_ref (core.ops.range.Range.t i32.t) :=
                borrow_mut α1 in
              let* α3 : core.option.Option.t i32.t :=
                (core.iter.traits.iterator.Iterator.next
                    (Self := core.ops.range.Range.t i32.t)
                    (Trait := ltac:(refine _)))
                  α2 in
              let* α4 : M.Val (core.option.Option.t i32.t) := M.alloc α3 in
              let* α5 := M.read α4 in
              match α5 with
              | core.option.Option.None  =>
                let* α0 : M.Val never.t := Break in
                never_to_any α0
              | core.option.Option.Some id =>
                let* id := M.alloc id in
                let* thread_tx : M.Val (std.sync.mpsc.Sender.t i32.t) :=
                  let* α0 : ref (std.sync.mpsc.Sender.t i32.t) := borrow tx in
                  let* α1 : std.sync.mpsc.Sender.t i32.t :=
                    (core.clone.Clone.clone
                        (Self := std.sync.mpsc.Sender.t i32.t)
                        (Trait := ltac:(refine _)))
                      α0 in
                  M.alloc α1 in
                let* child : M.Val (std.thread.JoinHandle.t unit) :=
                  let* α0 :=
                    M.read
                      (let* _ : M.Val unit :=
                        let* α0 : ref (std.sync.mpsc.Sender.t i32.t) :=
                          borrow thread_tx in
                        let* α1 := M.read id in
                        let* α2 :
                            core.result.Result.t
                              unit
                              (std.sync.mpsc.SendError.t i32.t) :=
                          (std.sync.mpsc.Sender.t i32.t)::["send"] α0 α1 in
                        let* α3 : unit :=
                          (core.result.Result.t
                                unit
                                (std.sync.mpsc.SendError.t i32.t))::["unwrap"]
                            α2 in
                        M.alloc α3 in
                      let* _ : M.Val unit :=
                        let* _ : M.Val unit :=
                          let* α0 : M.Val (array (ref str.t)) :=
                            M.alloc [ mk_str "thread "; mk_str " finished
" ] in
                          let* α1 : ref (array (ref str.t)) := borrow α0 in
                          let* α2 : M.Val (array (ref str.t)) := deref α1 in
                          let* α3 : ref (array (ref str.t)) := borrow α2 in
                          let* α4 : M.Val (ref (array (ref str.t))) :=
                            M.alloc α3 in
                          let* α5 : M.Val (ref (slice (ref str.t))) :=
                            pointer_coercion "Unsize" α4 in
                          let* α6 := M.read α5 in
                          let* α7 : ref i32.t := borrow id in
                          let* α8 : M.Val i32.t := deref α7 in
                          let* α9 : ref i32.t := borrow α8 in
                          let* α10 : core.fmt.rt.Argument.t :=
                            core.fmt.rt.Argument.t::["new_display"] α9 in
                          let* α11 : M.Val core.fmt.rt.Argument.t :=
                            M.alloc α10 in
                          let* α12 : M.Val (array core.fmt.rt.Argument.t) :=
                            M.alloc [ α11 ] in
                          let* α13 : ref (array core.fmt.rt.Argument.t) :=
                            borrow α12 in
                          let* α14 : M.Val (array core.fmt.rt.Argument.t) :=
                            deref α13 in
                          let* α15 : ref (array core.fmt.rt.Argument.t) :=
                            borrow α14 in
                          let* α16 :
                              M.Val (ref (array core.fmt.rt.Argument.t)) :=
                            M.alloc α15 in
                          let* α17 :
                              M.Val (ref (slice core.fmt.rt.Argument.t)) :=
                            pointer_coercion "Unsize" α16 in
                          let* α18 := M.read α17 in
                          let* α19 : core.fmt.Arguments.t :=
                            core.fmt.Arguments.t::["new_v1"] α6 α18 in
                          let* α20 : unit := std.io.stdio._print α19 in
                          M.alloc α20 in
                        M.alloc tt in
                      M.alloc tt) in
                  let* α1 : std.thread.JoinHandle.t unit :=
                    std.thread.spawn α0 in
                  M.alloc α1 in
                let* _ : M.Val unit :=
                  let* α0 :
                      mut_ref
                        (alloc.vec.Vec.t
                          (std.thread.JoinHandle.t unit)
                          alloc.alloc.Global.t) :=
                    borrow_mut children in
                  let* α1 := M.read child in
                  let* α2 : unit :=
                    (alloc.vec.Vec.t
                          (std.thread.JoinHandle.t unit)
                          alloc.alloc.Global.t)::["push"]
                      α0
                      α1 in
                  M.alloc α2 in
                M.alloc tt
              end in
            M.alloc tt)
        end in
      use α8 in
    let* ids :
        M.Val
          (alloc.vec.Vec.t
            (core.result.Result.t i32.t std.sync.mpsc.RecvError.t)
            alloc.alloc.Global.t) :=
      let* α0 := M.read channels.NTHREADS in
      let* α1 : M.Val i32.t := deref α0 in
      let* α2 : M.Val usize.t := cast α1 in
      let* α3 := M.read α2 in
      let* α4 :
          alloc.vec.Vec.t
            (core.result.Result.t i32.t std.sync.mpsc.RecvError.t)
            alloc.alloc.Global.t :=
        (alloc.vec.Vec.t
              (core.result.Result.t i32.t std.sync.mpsc.RecvError.t)
              alloc.alloc.Global.t)::["with_capacity"]
          α3 in
      M.alloc α4 in
    let* _ : M.Val unit :=
      let* α0 : M.Val i32.t := M.alloc 0 in
      let* α1 := M.read α0 in
      let* α2 := M.read channels.NTHREADS in
      let* α3 : M.Val i32.t := deref α2 in
      let* α4 := M.read α3 in
      let* α5 : core.ops.range.Range.t i32.t :=
        (core.iter.traits.collect.IntoIterator.into_iter
            (Self := core.ops.range.Range.t i32.t)
            (Trait := ltac:(refine _)))
          {| core.ops.range.Range.start := α1; core.ops.range.Range.end := α4;
          |} in
      let* α6 : M.Val (core.ops.range.Range.t i32.t) := M.alloc α5 in
      let* α7 := M.read α6 in
      let* α8 : M.Val unit :=
        match α7 with
        | iter =>
          let* iter := M.alloc iter in
          loop
            (let* _ : M.Val unit :=
              let* α0 : mut_ref (core.ops.range.Range.t i32.t) :=
                borrow_mut iter in
              let* α1 : M.Val (core.ops.range.Range.t i32.t) := deref α0 in
              let* α2 : mut_ref (core.ops.range.Range.t i32.t) :=
                borrow_mut α1 in
              let* α3 : core.option.Option.t i32.t :=
                (core.iter.traits.iterator.Iterator.next
                    (Self := core.ops.range.Range.t i32.t)
                    (Trait := ltac:(refine _)))
                  α2 in
              let* α4 : M.Val (core.option.Option.t i32.t) := M.alloc α3 in
              let* α5 := M.read α4 in
              match α5 with
              | core.option.Option.None  =>
                let* α0 : M.Val never.t := Break in
                never_to_any α0
              | core.option.Option.Some _ =>
                let* _ : M.Val unit :=
                  let* α0 :
                      mut_ref
                        (alloc.vec.Vec.t
                          (core.result.Result.t i32.t std.sync.mpsc.RecvError.t)
                          alloc.alloc.Global.t) :=
                    borrow_mut ids in
                  let* α1 : ref (std.sync.mpsc.Receiver.t i32.t) := borrow rx in
                  let* α2 :
                      core.result.Result.t i32.t std.sync.mpsc.RecvError.t :=
                    (std.sync.mpsc.Receiver.t i32.t)::["recv"] α1 in
                  let* α3 : unit :=
                    (alloc.vec.Vec.t
                          (core.result.Result.t i32.t std.sync.mpsc.RecvError.t)
                          alloc.alloc.Global.t)::["push"]
                      α0
                      α2 in
                  M.alloc α3 in
                M.alloc tt
              end in
            M.alloc tt)
        end in
      use α8 in
    let* _ : M.Val unit :=
      let* α0 := M.read children in
      let* α1 :
          alloc.vec.into_iter.IntoIter.t
            (std.thread.JoinHandle.t unit)
            alloc.alloc.Global.t :=
        (core.iter.traits.collect.IntoIterator.into_iter
            (Self :=
              alloc.vec.Vec.t
                (std.thread.JoinHandle.t unit)
                alloc.alloc.Global.t)
            (Trait := ltac:(refine _)))
          α0 in
      let* α2 :
          M.Val
            (alloc.vec.into_iter.IntoIter.t
              (std.thread.JoinHandle.t unit)
              alloc.alloc.Global.t) :=
        M.alloc α1 in
      let* α3 := M.read α2 in
      let* α4 : M.Val unit :=
        match α3 with
        | iter =>
          let* iter := M.alloc iter in
          loop
            (let* _ : M.Val unit :=
              let* α0 :
                  mut_ref
                    (alloc.vec.into_iter.IntoIter.t
                      (std.thread.JoinHandle.t unit)
                      alloc.alloc.Global.t) :=
                borrow_mut iter in
              let* α1 :
                  M.Val
                    (alloc.vec.into_iter.IntoIter.t
                      (std.thread.JoinHandle.t unit)
                      alloc.alloc.Global.t) :=
                deref α0 in
              let* α2 :
                  mut_ref
                    (alloc.vec.into_iter.IntoIter.t
                      (std.thread.JoinHandle.t unit)
                      alloc.alloc.Global.t) :=
                borrow_mut α1 in
              let* α3 : core.option.Option.t (std.thread.JoinHandle.t unit) :=
                (core.iter.traits.iterator.Iterator.next
                    (Self :=
                      alloc.vec.into_iter.IntoIter.t
                        (std.thread.JoinHandle.t unit)
                        alloc.alloc.Global.t)
                    (Trait := ltac:(refine _)))
                  α2 in
              let* α4 :
                  M.Val (core.option.Option.t (std.thread.JoinHandle.t unit)) :=
                M.alloc α3 in
              let* α5 := M.read α4 in
              match α5 with
              | core.option.Option.None  =>
                let* α0 : M.Val never.t := Break in
                never_to_any α0
              | core.option.Option.Some child =>
                let* child := M.alloc child in
                let* _ : M.Val unit :=
                  let* α0 := M.read child in
                  let* α1 :
                      core.result.Result.t
                        unit
                        (alloc.boxed.Box.t
                          type not implemented
                          alloc.alloc.Global.t) :=
                    (std.thread.JoinHandle.t unit)::["join"] α0 in
                  let* α2 :=
                    M.read (mk_str "oops! the child thread panicked") in
                  let* α3 : M.Val str.t := deref α2 in
                  let* α4 : ref str.t := borrow α3 in
                  let* α5 : unit :=
                    (core.result.Result.t
                          unit
                          (alloc.boxed.Box.t
                            type not implemented
                            alloc.alloc.Global.t))::["expect"]
                      α1
                      α4 in
                  M.alloc α5 in
                M.alloc tt
              end in
            M.alloc tt)
        end in
      use α4 in
    let* _ : M.Val unit :=
      let* _ : M.Val unit :=
        let* α0 : M.Val (array (ref str.t)) :=
          M.alloc [ mk_str ""; mk_str "
" ] in
        let* α1 : ref (array (ref str.t)) := borrow α0 in
        let* α2 : M.Val (array (ref str.t)) := deref α1 in
        let* α3 : ref (array (ref str.t)) := borrow α2 in
        let* α4 : M.Val (ref (array (ref str.t))) := M.alloc α3 in
        let* α5 : M.Val (ref (slice (ref str.t))) :=
          pointer_coercion "Unsize" α4 in
        let* α6 := M.read α5 in
        let* α7 :
            ref
              (alloc.vec.Vec.t
                (core.result.Result.t i32.t std.sync.mpsc.RecvError.t)
                alloc.alloc.Global.t) :=
          borrow ids in
        let* α8 :
            M.Val
              (alloc.vec.Vec.t
                (core.result.Result.t i32.t std.sync.mpsc.RecvError.t)
                alloc.alloc.Global.t) :=
          deref α7 in
        let* α9 :
            ref
              (alloc.vec.Vec.t
                (core.result.Result.t i32.t std.sync.mpsc.RecvError.t)
                alloc.alloc.Global.t) :=
          borrow α8 in
        let* α10 : core.fmt.rt.Argument.t :=
          core.fmt.rt.Argument.t::["new_debug"] α9 in
        let* α11 : M.Val core.fmt.rt.Argument.t := M.alloc α10 in
        let* α12 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α11 ] in
        let* α13 : ref (array core.fmt.rt.Argument.t) := borrow α12 in
        let* α14 : M.Val (array core.fmt.rt.Argument.t) := deref α13 in
        let* α15 : ref (array core.fmt.rt.Argument.t) := borrow α14 in
        let* α16 : M.Val (ref (array core.fmt.rt.Argument.t)) := M.alloc α15 in
        let* α17 : M.Val (ref (slice core.fmt.rt.Argument.t)) :=
          pointer_coercion "Unsize" α16 in
        let* α18 := M.read α17 in
        let* α19 : core.fmt.Arguments.t :=
          core.fmt.Arguments.t::["new_v1"] α6 α18 in
        let* α20 : unit := std.io.stdio._print α19 in
        M.alloc α20 in
      M.alloc tt in
    M.alloc tt).
