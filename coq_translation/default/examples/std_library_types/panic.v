(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition division
    `{ℋ : State.Trait}
    (dividend : i32)
    (divisor : i32)
    : M i32 :=
  M.function_body
    (let* α0 : ltac:(refine i32) := M.alloc 0 in
    let* α1 : ltac:(refine bool) := BinOp.eq divisor α0 in
    let* α2 : ltac:(refine bool) := use α1 in
    if (α2 : bool) then
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine never) :=
          std.panicking.begin_panic (mk_str "division by zero") in
        never_to_any α0 in
      let* α0 : ltac:(refine unit) := M.alloc tt in
      never_to_any α0
    else
      BinOp.div dividend divisor).

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* _x : ltac:(refine (alloc.boxed.Box i32 alloc.alloc.Global)) :=
      let* α0 : ltac:(refine i32) := M.alloc 0 in
      (alloc.boxed.Box i32 alloc.alloc.Global)::["new"] α0 in
    let* _ : ltac:(refine i32) :=
      let* α0 : ltac:(refine i32) := M.alloc 3 in
      let* α1 : ltac:(refine i32) := M.alloc 0 in
      panic.division α0 α1 in
    let* _ : ltac:(refine unit) :=
      let* _ : ltac:(refine unit) :=
        let* α0 : ltac:(refine (array (ref str))) :=
          M.alloc [ mk_str "This point won't be reached!
" ] in
        let* α1 : ltac:(refine (ref (array (ref str)))) := borrow α0 in
        let* α2 : ltac:(refine (array (ref str))) := deref α1 in
        let* α3 : ltac:(refine (ref (array (ref str)))) := borrow α2 in
        let* α4 : ltac:(refine (ref (slice (ref str)))) :=
          pointer_coercion "Unsize" α3 in
        let* α5 : ltac:(refine core.fmt.Arguments) :=
          core.fmt.Arguments::["new_const"] α4 in
        std.io.stdio._print α5 in
      M.alloc tt in
    M.alloc tt).
