(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H' : State.Trait} : M (H := H') unit :=
  let* _ :=
    match 1 with
    | 0 => Pure false
    | _ => Pure true
    end in
  let* _ :=
    if (true : bool) then
      Pure 0
    else
      Pure 1 in
  let* _ :=
    if (false : bool) then
      Pure 2
    else
      if (false : bool) then
        Pure 3
      else
        if (false : bool) then
          Pure 4
        else
          Pure 5 in
  Pure tt.
