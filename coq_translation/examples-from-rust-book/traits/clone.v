(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module Unit.
  Inductive t : Set := Build.
End Unit.
Definition Unit := Unit.t.

Module Impl__crate_fmt_Debug_for_Unit.
  Definition Self := Unit.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref _crate.fmt.Formatter)
      : _crate.fmt.Result :=
    _crate.fmt.Formatter::["write_str"] f "Unit".
  
  Global Instance Method_fmt : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : _crate.fmt.Debug.Trait Self := {
    _crate.fmt.Debug.fmt := fmt;
  }.
End Impl__crate_fmt_Debug_for_Unit.

Module Impl__crate_clone_Clone_for_Unit.
  Definition Self := Unit.
  
  Definition clone (self : ref Self) : Unit := deref self.
  
  Global Instance Method_clone : Notation.Dot "clone" := {
    Notation.dot := clone;
  }.
  
  Global Instance I : _crate.clone.Clone.Trait Self := {
    _crate.clone.Clone.clone := clone;
  }.
End Impl__crate_clone_Clone_for_Unit.

Module Impl__crate_marker_Copy_for_Unit.
  Definition Self := Unit.
  
  Global Instance I : _crate.marker.Copy.Trait Self :=
    _crate.marker.Copy.Build_Class _.
End Impl__crate_marker_Copy_for_Unit.

Module Pair.
  Record t : Set := { _ : Box i32; _ : Box i32;}.
  
  Global Instance Get_0 : Notation.Dot 0 := {
    Notation.dot '(Build_t x0 _) := x0;
  }.
  Global Instance Get_1 : Notation.Dot 1 := {
    Notation.dot '(Build_t _ x1) := x1;
  }.
End Pair.
Definition Pair := Pair.t.

Module Impl__crate_clone_Clone_for_Pair.
  Definition Self := Pair.
  
  Definition clone (self : ref Self) : Pair :=
    Pair.Build_t
      (_crate.clone.Clone.clone (self.[0]))
      (_crate.clone.Clone.clone (self.[1])).
  
  Global Instance Method_clone : Notation.Dot "clone" := {
    Notation.dot := clone;
  }.
  
  Global Instance I : _crate.clone.Clone.Trait Self := {
    _crate.clone.Clone.clone := clone;
  }.
End Impl__crate_clone_Clone_for_Pair.

Module Impl__crate_fmt_Debug_for_Pair.
  Definition Self := Pair.
  
  Definition fmt
      (self : ref Self)
      (f : mut_ref _crate.fmt.Formatter)
      : _crate.fmt.Result :=
    _crate.fmt.Formatter::["debug_tuple_field2_finish"]
      f
      "Pair"
      (self.[0])
      (self.[1]).
  
  Global Instance Method_fmt : Notation.Dot "fmt" := {
    Notation.dot := fmt;
  }.
  
  Global Instance I : _crate.fmt.Debug.Trait Self := {
    _crate.fmt.Debug.fmt := fmt;
  }.
End Impl__crate_fmt_Debug_for_Pair.

Definition main (_ : unit) : unit :=
  let unit := Unit.Build in
  let copied_unit := unit in
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "original: "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_debug"] unit ]) ;;
  tt ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "copy: "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_debug"] copied_unit ]) ;;
  tt ;;
  let pair := Pair.Build_t (Box::["new"] 1) (Box::["new"] 2) in
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "original: "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_debug"] pair ]) ;;
  tt ;;
  let moved_pair := pair in
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "moved: "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_debug"] moved_pair ]) ;;
  tt ;;
  let cloned_pair := moved_pair.["clone"] in
  drop moved_pair ;;
  _crate.io._print
    (_crate.fmt.Arguments::["new_v1"]
      [ "clone: "; "\n" ]
      [ _crate.fmt.ArgumentV1::["new_debug"] cloned_pair ]) ;;
  tt ;;
  tt.

Definition main (_ : unit) : unit := test.
