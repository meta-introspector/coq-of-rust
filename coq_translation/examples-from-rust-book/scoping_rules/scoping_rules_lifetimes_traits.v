(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Module Borrowed.
  Record t : Set := {
    x : ref i32;
  }.
End Borrowed.
Definition Borrowed : Set := Borrowed.t.

Module Impl__crate_fmt_Debug_for_Borrowed.
  Definition Self := Borrowed.
  
  Global Instance I : _crate.fmt.Debug.Class Self := {|
    _crate.fmt.Debug.fmt
        (self : ref Borrowed<'a>)
        (f : mut_ref _crate.fmt.Formatter) :=
      _crate::fmt::ImplFormatter.debug_struct_field1_finish
        f
        "Borrowed"
        "x"
        self.x;
  |}.
Module ImplBorrowed.

Module Impl_Default_for_Borrowed.
  Definition Self := Borrowed.
  
  Global Instance I : Default.Class Self := {|
    Default.default  := {| Self.x := 10; |};
  |}.
Module ImplBorrowed.

Definition main (_ : unit) : unit :=
  let b := Default.default tt in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["b is ";"\n"]
      [_crate::fmt::ImplArgumentV1.new_debug b]) ;;
  tt ;;
  tt.
