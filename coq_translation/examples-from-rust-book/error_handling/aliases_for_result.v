(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Error TyAlias.

Definition multiply (_ : unit) :=
  and_then
    (parse first_number_str)
    (fun first_number => map
      (parse second_number_str)
      (fun second_number => mul first_number second_number)).

Definition print (_ : unit) :=
  match result with
  | Ok (n) =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1
        ["n is ";"\n"]
        [_crate::fmt::ImplArgumentV1.new_display n]) ;;
    tt
  | Err (e) =>
    _crate.io._print
      (_crate::fmt::ImplArguments.new_v1
        ["Error: ";"\n"]
        [_crate::fmt::ImplArgumentV1.new_display e]) ;;
    tt
  end.

Definition main (_ : unit) :=
  print (multiply "10" "2") ;;
  print (multiply "t" "2") ;;
  tt.
