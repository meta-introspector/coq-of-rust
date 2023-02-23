(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Number.
  Record t : Set := {
    value : i32;
  }.
End Number.
Definition Number : Set := Number.t.

Module Impl__crate_fmt_Debug_for_Number.
  Definition Self := Number.
  
  Global Instance I : _crate.fmt.Debug.Class Self := {|
    _crate.fmt.Debug.fmt
        (self : ref Number)
        (f : mut_ref _crate.fmt.Formatter) :=
      _crate::fmt::ImplFormatter.debug_struct_field1_finish
        f
        "Number"
        "value"
        self.value;
  |}.
Module ImplNumber.

Module Impl_From_for_Number.
  Definition Self := Number.
  
  Global Instance I : From.Class i32 Self := {|
    From.from (item : i32) := {| Number.value := item; |};
  |}.
Module ImplNumber.

Definition main (_ : unit) : unit :=
  let num := ImplNumber.from 30 in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["My number is ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_debug num]) ;;
  tt ;;
  tt.
