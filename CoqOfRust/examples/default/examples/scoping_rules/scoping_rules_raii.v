(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn create_box() {
    // Allocate an integer on the heap
    let _box1 = Box::new(3i32);

    // `_box1` is destroyed here, and memory gets freed
}
*)
Definition create_box : M unit :=
  let* _box1 : M.Val (alloc.boxed.Box.t i32.t alloc.alloc.Global.t) :=
    let* α0 : alloc.boxed.Box.t i32.t alloc.alloc.Global.t :=
      M.call
        (impl (alloc.boxed.Box.t i32.t alloc.alloc.Global.t) "new"
          ((Integer.of_Z 3) : i32.t)) in
    M.alloc α0 in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.

(*
fn main() {
    // Allocate an integer on the heap
    let _box2 = Box::new(5i32);

    // A nested scope:
    {
        // Allocate an integer on the heap
        let _box3 = Box::new(4i32);

        // `_box3` is destroyed here, and memory gets freed
    }

    // Creating lots of boxes just for fun
    // There's no need to manually free memory!
    for _ in 0u32..1_000 {
        create_box();
    }

    // `_box2` is destroyed here, and memory gets freed
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* _box2 : M.Val (alloc.boxed.Box.t i32.t alloc.alloc.Global.t) :=
    let* α0 : alloc.boxed.Box.t i32.t alloc.alloc.Global.t :=
      M.call
        (impl (alloc.boxed.Box.t i32.t alloc.alloc.Global.t) "new"
          ((Integer.of_Z 5) : i32.t)) in
    M.alloc α0 in
  let* _ : M.Val unit :=
    let* _box3 : M.Val (alloc.boxed.Box.t i32.t alloc.alloc.Global.t) :=
      let* α0 : alloc.boxed.Box.t i32.t alloc.alloc.Global.t :=
        M.call
          (impl (alloc.boxed.Box.t i32.t alloc.alloc.Global.t) "new"
            ((Integer.of_Z 4) : i32.t)) in
      M.alloc α0 in
    M.alloc tt in
  let* α0 : _ :=
    ltac:(M.get_method (fun ℐ =>
      core.iter.traits.collect.IntoIterator.into_iter
        (Self := core.ops.range.Range.t u32.t)
        (Trait := ℐ))) in
  let* α1 : core.ops.range.Range.t u32.t :=
    M.call
      (α0
        {|
          core.ops.range.Range.start := (Integer.of_Z 0) : u32.t;
          core.ops.range.Range.end_ := (Integer.of_Z 1000) : u32.t;
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
                      let* _ : M.Val unit :=
                        let* α0 : unit :=
                          M.call scoping_rules_raii.create_box in
                        M.alloc α0 in
                      M.alloc tt
                    | _ => M.break_match
                    end) :
                    M (M.Val unit)
                ] in
            M.alloc tt)) :
          M (M.Val unit)
      ] in
  M.read (use α3).
