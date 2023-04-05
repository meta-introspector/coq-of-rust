(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition elided_input (x : ref i32) : unit :=
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "`elided_input`: "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_display"] x ]) ;;
  tt ;;
  tt.

Definition annotated_input (x : ref i32) : unit :=
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "`annotated_input`: "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_display"] x ]) ;;
  tt ;;
  tt.

Definition elided_pass (x : ref i32) : ref i32 := x.

Definition annotated_pass (x : ref i32) : ref i32 := x.

Definition main (_ : unit) : unit :=
  let x := 3 in
  elided_input x ;;
  annotated_input x ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "`elided_pass`: "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_display"] (elided_pass x) ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "`annotated_pass`: "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_display"] (annotated_pass x) ]) ;;
  tt ;;
  tt.
