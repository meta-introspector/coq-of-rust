(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
fn main() {
    // `Vec` has non-copy semantics.
    let haystack = vec![1, 2, 3];

    let contains = move |needle| haystack.contains(needle);

    println!("{}", contains(&1));
    println!("{}", contains(&4));

    // println!("There're {} elements in vec", haystack.len());
    // ^ Uncommenting above line will result in compile-time error
    // because borrow checker doesn't allow re-using variable after it
    // has been moved.

    // Removing `move` from closure's signature will cause closure
    // to borrow _haystack_ variable immutably, hence _haystack_ is still
    // available and uncommenting above line will not cause an error.
}
*)
(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main : M unit :=
  let* haystack : M.Val (alloc.vec.Vec.t i32.t alloc.alloc.Global.t) :=
    let* α0 : M.Val (array i32.t) :=
      M.alloc
        [
          (Integer.of_Z 1) : i32.t;
          (Integer.of_Z 2) : i32.t;
          (Integer.of_Z 3) : i32.t
        ] in
    let* α1 : M.Val (alloc.boxed.Box.t (array i32.t) alloc.alloc.Global.t) :=
      M.call ((alloc.boxed.Box.t _ alloc.boxed.Box.Default.A)::["new"] α0) in
    let* α2 : alloc.boxed.Box.t (array i32.t) alloc.alloc.Global.t :=
      M.read α1 in
    let* α3 : alloc.vec.Vec.t i32.t alloc.alloc.Global.t :=
      M.call ((slice i32.t)::["into_vec"] (pointer_coercion "Unsize" α2)) in
    M.alloc α3 in
  let* contains : M.Val ((ref i32.t) -> M bool.t) :=
    M.alloc
      (fun (α0 : ref i32.t) =>
        (let* α0 := M.alloc α0 in
        match_operator
          α0
          [
            fun γ =>
              (let* needle := M.copy γ in
              let* α0 :
                  (ref (alloc.vec.Vec.t i32.t alloc.alloc.Global.t)) ->
                    M (ref _) :=
                ltac:(M.get_method (fun ℐ =>
                  core.ops.deref.Deref.deref
                    (Self := alloc.vec.Vec.t i32.t alloc.alloc.Global.t)
                    (Trait := ℐ))) in
              let* α1 : ref (slice i32.t) := M.call (α0 (borrow haystack)) in
              let* α2 : ref i32.t := M.read needle in
              M.call ((slice i32.t)::["contains"] α1 α2)) :
              M bool.t
          ]) :
        M bool.t) in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : (ref ((ref i32.t) -> M bool.t)) -> (ref i32.t) -> M _ :=
        ltac:(M.get_method (fun ℐ =>
          core.ops.function.Fn.call
            (Self := (ref i32.t) -> M bool.t)
            (Args := ref i32.t)
            (Trait := ℐ))) in
      let* α4 : M.Val i32.t := M.alloc ((Integer.of_Z 1) : i32.t) in
      let* α5 : bool.t := M.call (α3 (borrow contains) (borrow α4)) in
      let* α6 : M.Val bool.t := M.alloc α5 in
      let* α7 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α6)) in
      let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
      let* α9 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α8))) in
      let* α10 : unit := M.call (std.io.stdio._print α9) in
      M.alloc α10 in
    M.alloc tt in
  let* _ : M.Val unit :=
    let* _ : M.Val unit :=
      let* α0 : ref str.t := M.read (mk_str "") in
      let* α1 : ref str.t := M.read (mk_str "
") in
      let* α2 : M.Val (array (ref str.t)) := M.alloc [ α0; α1 ] in
      let* α3 : (ref ((ref i32.t) -> M bool.t)) -> (ref i32.t) -> M _ :=
        ltac:(M.get_method (fun ℐ =>
          core.ops.function.Fn.call
            (Self := (ref i32.t) -> M bool.t)
            (Args := ref i32.t)
            (Trait := ℐ))) in
      let* α4 : M.Val i32.t := M.alloc ((Integer.of_Z 4) : i32.t) in
      let* α5 : bool.t := M.call (α3 (borrow contains) (borrow α4)) in
      let* α6 : M.Val bool.t := M.alloc α5 in
      let* α7 : core.fmt.rt.Argument.t :=
        M.call (core.fmt.rt.Argument.t::["new_display"] (borrow α6)) in
      let* α8 : M.Val (array core.fmt.rt.Argument.t) := M.alloc [ α7 ] in
      let* α9 : core.fmt.Arguments.t :=
        M.call
          (core.fmt.Arguments.t::["new_v1"]
            (pointer_coercion "Unsize" (borrow α2))
            (pointer_coercion "Unsize" (borrow α8))) in
      let* α10 : unit := M.call (std.io.stdio._print α9) in
      M.alloc α10 in
    M.alloc tt in
  let* α0 : M.Val unit := M.alloc tt in
  M.read α0.