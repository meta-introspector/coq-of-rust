(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition print_one (x : ref i32) : unit :=
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "`print_one`: x is "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_display"] x ]) ;;
  tt ;;
  tt.

Definition add_one (x : mut_ref i32) : unit :=
  assign (deref x) (add (deref x) 1) ;;
  tt.

Definition print_multi (x : ref i32) (y : ref i32) : unit :=
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "`print_multi`: x is "; ", y is "; "\n" ]
      [
        _crate.fmt.ArgumentV1::["new_display"] x;
        _crate.fmt.ArgumentV1::["new_display"] y
      ]) ;;
  tt ;;
  tt.

Definition pass_x (x : ref i32) (arg : ref i32) : ref i32 := x.

Definition main (_ : unit) : unit :=
  let x := 7 in
  let y := 9 in
  print_one x ;;
  print_multi x y ;;
  let z := pass_x x y in
  print_one z ;;
  let t := 3 in
  add_one t ;;
  print_one t ;;
  tt.
