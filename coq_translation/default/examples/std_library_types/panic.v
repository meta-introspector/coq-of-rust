(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition division
    `{H : State.Trait}
    (dividend : i32)
    (divisor : i32)
    : M (H := H) i32 :=
  let* α0 := divisor.["eq"] 0 in
  if (α0 : bool) then
    let* _ := std.panicking.begin_panic "division by zero" in
    Pure tt
  else
    dividend.["div"] divisor.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H : State.Trait} (_ : unit) : M (H := H) unit :=
  let* _x := alloc.boxed.Box::["new"] 0 in
  let* _ := panic.division 3 0 in
  let* _ :=
    let* _ :=
      let* α0 :=
        format_arguments::["new_const"]
          (addr_of [ "This point won't be reached!
" ]) in
      std.io.stdio._print α0 in
    Pure tt in
  Pure tt.
