(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* raw_p :=
      let* α0 := M.alloc 10 in
      let* α1 := borrow α0 u32 in
      let* α2 := deref α1 u32 in
      addr_of α2 in
    let* _ :=
      let* α0 := deref raw_p u32 in
      let* α1 := M.alloc 10 in
      let* α2 := BinOp.eq α0 α1 in
      let* α3 := UnOp.not α2 in
      let* α4 := use α3 in
      if (α4 : bool) then
        let* α0 :=
          core.panicking.panic (mk_str "assertion failed: *raw_p == 10") in
        never_to_any α0
      else
        M.alloc tt in
    M.alloc tt).
