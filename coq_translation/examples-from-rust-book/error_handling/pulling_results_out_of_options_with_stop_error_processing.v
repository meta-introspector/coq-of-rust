(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module ParseIntError := std.num.ParseIntError.
Definition ParseIntError := ParseIntError.t.

Definition double_first
    (vec : Vec (ref str))
    : Result (Option i32) ParseIntError :=
  let opt :=
    vec.["first"].["map"]
      (fun first => first.["parse"].["map"] (fun n => 2.["mul"] n)) in
  opt.["map_or"] (Ok None) (fun r => r.["map"] Some).

Definition main (_ : unit) : unit :=
  let numbers := Slice::["into_vec"] [ "42"; "93"; "18" ] in
  let empty := _crate.vec.Vec::["new"] tt in
  let strings := Slice::["into_vec"] [ "tofu"; "93"; "18" ] in
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "The first doubled is "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_debug"] (double_first numbers) ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "The first doubled is "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_debug"] (double_first empty) ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "The first doubled is "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_debug"] (double_first strings) ]) ;;
  tt ;;
  tt.

Definition main (_ : unit) : unit := test.
