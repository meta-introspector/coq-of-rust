(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module From := std.convert.From.

Module Number.
  Record t : Set := {
    value : i32;
  }.
  
  Global Instance Get_value : Notation.Dot "value" := {|
    Notation.dot '(Build_t x0) := x0;
  |}.
End Number.
Definition Number : Set := Number.t.

Module Impl__crate_fmt_Debug_for_Number.
  Definition Self := Number.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref _crate.fmt.Formatter)
      : _crate.fmt.Result :=
    _crate.fmt.Formatter::["debug_struct_field1_finish"]
      f
      "Number"
      "value"
      self.["value"].
  
  Global Instance Method_fmt : Notation.Dot "fmt" := {|
    Notation.dot := fmt;
  |}.
  Global Instance AssociatedFunction_fmt : Notation.DoubleColon Self "fmt" := {|
    Notation.double_colon := fmt;
  |}.
  
  Global Instance I : _crate.fmt.Debug.Trait Self := {|
    _crate.fmt.Debug.fmt := fmt;
  |}.
End Impl__crate_fmt_Debug_for_Number.

Module Impl_From_for_Number.
  Definition Self := Number.
  
  Definition from (item : i32) : Self := {| Number.value := item; |}.
  
  Global Instance AssociatedFunction_from :
    Notation.DoubleColon Self "from" := {|
    Notation.double_colon := from;
  |}.
  
  Global Instance I : From.Trait i32 Self := {|
    From.from := from;
  |}.
End Impl_From_for_Number.

Definition main (_ : unit) : unit :=
  let num := Number::["from"] 30 in
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "My number is "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_debug"] num ]) ;;
  tt ;;
  tt.
