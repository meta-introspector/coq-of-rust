(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(*
pub fn add(a: i32, b: i32) -> i32 {
    a + b
}
*)
Definition add (a : M.Val i32.t) (b : M.Val i32.t) : M i32.t :=
  M.function_body (BinOp.add a b).

(*
pub fn div(a: i32, b: i32) -> i32 {
    if b == 0 {
        panic!("Divide-by-zero error");
    }

    a / b
}
*)
Definition div (a : M.Val i32.t) (b : M.Val i32.t) : M i32.t :=
  M.function_body
    (let* _ : ltac:(refine (M.Val unit)) :=
      let* α0 : ltac:(refine (M.Val i32.t)) := M.alloc 0 in
      let* α1 : ltac:(refine (M.Val bool.t)) := BinOp.eq b α0 in
      let* α2 : ltac:(refine (M.Val bool.t)) := use α1 in
      let* α3 := M.read α2 in
      if (α3 : bool) then
        let* _ : ltac:(refine (M.Val unit)) :=
          let* α0 :=
            std.panicking.begin_panic (mk_str "Divide-by-zero error") in
          let* α1 : ltac:(refine (M.Val never.t)) := M.alloc α0 in
          never_to_any α1 in
        let* α0 : ltac:(refine (M.Val unit)) := M.alloc tt in
        never_to_any α0
      else
        M.alloc tt in
    BinOp.div a b).
