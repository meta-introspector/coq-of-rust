(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition add `{ℋ : State.Trait} (a : i32) (b : i32) : M i32 :=
  M.function_body (BinOp.add a b).

Definition div `{ℋ : State.Trait} (a : i32) (b : i32) : M i32 :=
  M.function_body
    (let* _ :=
      let* α0 := M.alloc 0 in
      let* α1 := BinOp.eq b α0 in
      let* α2 := use α1 in
      if (α2 : bool) then
        let* _ :=
          let* α0 :=
            std.panicking.begin_panic (mk_str "Divide-by-zero error") in
          never_to_any α0 in
        let* α0 := M.alloc tt in
        never_to_any α0
      else
        M.alloc tt in
    BinOp.div a b).
