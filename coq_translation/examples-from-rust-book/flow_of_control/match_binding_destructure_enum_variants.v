(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition some_number (_ : unit) : Option u32 := Some 42.

Definition main (_ : unit) : unit :=
  match some_number tt with
  | 'Some.Build_t n =>
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"]
        [ "The Answer: "; "!\n" ]
        [ _crate.fmt.ArgumentV1::["new_display"] n ]) ;;
    tt
  | 'Some.Build_t n =>
    _crate.io._print
      (_crate.fmt.Arguments::["new_v1"]
        [ "Not interesting... "; "\n" ]
        [ _crate.fmt.ArgumentV1::["new_display"] n ]) ;;
    tt
  | _ => ()
  end.
