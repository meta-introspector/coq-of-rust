(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{ℋ : State.Trait} : M unit :=
  M.function_body
    (let* _ :=
      let* α0 := deref (mk_str "12") str in
      let* α1 := borrow α0 str in
      str::["parse"] α1 in
    let* _ :=
      let* α0 := deref (mk_str "true") str in
      let* α1 := borrow α0 str in
      str::["parse"] α1 in
    let* _ :=
      let* α0 := deref (mk_str "unparsable") str in
      let* α1 := borrow α0 str in
      str::["parse"] α1 in
    M.alloc tt).
