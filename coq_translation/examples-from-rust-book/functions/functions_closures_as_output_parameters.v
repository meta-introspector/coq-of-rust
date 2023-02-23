(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Definition create_fn (_ : unit) : OpaqueDef :=
  let text := method "to_owned" "Fn" in
  fun  =>
    _crate.io._print
      (_crate.fmt.ImplArguments.new_v1
        [ "This is a: "; "\n" ]
        [ _crate.fmt.ImplArgumentV1.new_display text ]) ;;
    tt.

Error OpaqueTy.

Definition create_fnmut (_ : unit) : OpaqueDef :=
  let text := method "to_owned" "FnMut" in
  fun  =>
    _crate.io._print
      (_crate.fmt.ImplArguments.new_v1
        [ "This is a: "; "\n" ]
        [ _crate.fmt.ImplArgumentV1.new_display text ]) ;;
    tt.

Error OpaqueTy.

Definition create_fnonce (_ : unit) : OpaqueDef :=
  let text := method "to_owned" "FnOnce" in
  fun  =>
    _crate.io._print
      (_crate.fmt.ImplArguments.new_v1
        [ "This is a: "; "\n" ]
        [ _crate.fmt.ImplArgumentV1.new_display text ]) ;;
    tt.

Error OpaqueTy.

Definition main (_ : unit) : unit :=
  let fn_plain := create_fn tt in
  let fn_mut := create_fnmut tt in
  let fn_once := create_fnonce tt in
  fn_plain tt ;;
  fn_mut tt ;;
  fn_once tt ;;
  tt.
