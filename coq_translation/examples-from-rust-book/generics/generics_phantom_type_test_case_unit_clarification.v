(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Error Enum.

Module Impl__crate_fmt_Debug_for_Inch.
  Definition Self := Inch.
  
  #[global] Instance I : _crate.fmt.Debug.Class Self := {|
    fmt
      (self : static_ref Inch)
      (f : mut_ref _crate.fmt.Formatter)
      : _crate.fmt.Result :=
      _crate.intrinsics.unreachable tt;
  |}.
Module ImplInch.

Module Impl__crate_clone_Clone_for_Inch.
  Definition Self := Inch.
  
  #[global] Instance I : _crate.clone.Clone.Class Self := {|
    clone (self : static_ref Inch) : Inch := deref self;
  |}.
Module ImplInch.

Module Impl__crate_marker_Copy_for_Inch.
  Definition Self := Inch.
  
  #[global] Instance I : _crate.marker.Copy.Class Self := {|
  |}.
Module ImplInch.

Error Enum.

Module Impl__crate_fmt_Debug_for_Mm.
  Definition Self := Mm.
  
  #[global] Instance I : _crate.fmt.Debug.Class Self := {|
    fmt
      (self : static_ref Mm)
      (f : mut_ref _crate.fmt.Formatter)
      : _crate.fmt.Result :=
      _crate.intrinsics.unreachable tt;
  |}.
Module ImplMm.

Module Impl__crate_clone_Clone_for_Mm.
  Definition Self := Mm.
  
  #[global] Instance I : _crate.clone.Clone.Class Self := {|
    clone (self : static_ref Mm) : Mm := deref self;
  |}.
Module ImplMm.

Module Impl__crate_marker_Copy_for_Mm.
  Definition Self := Mm.
  
  #[global] Instance I : _crate.marker.Copy.Class Self := {|
  |}.
Module ImplMm.

Definition Length : Set :=
  f64 * PhantomData.

Module Impl__crate_fmt_Debug_for_Length.
  Definition Self := Length.
  
  #[global] Instance I : _crate.fmt.Debug.Class Self := {|
    fmt
      (self : static_ref Length<Unit>)
      (f : mut_ref _crate.fmt.Formatter)
      : _crate.fmt.Result :=
      _crate::fmt::ImplFormatter.debug_tuple_field2_finish
        f
        "Length"
        self.0
        self.1;
  |}.
Module ImplLength.

Module Impl__crate_clone_Clone_for_Length.
  Definition Self := Length.
  
  #[global] Instance I : _crate.clone.Clone.Class Self := {|
    clone
      (self : static_ref Length<Unit>)
      : Length :=
      Length
        (_crate.clone.Clone.clone self.0)
        (_crate.clone.Clone.clone self.1);
  |}.
Module ImplLength.

Module Impl__crate_marker_Copy_for_Length.
  Definition Self := Length.
  
  #[global] Instance I : _crate.marker.Copy.Class Self := {|
  |}.
Module ImplLength.

Module Impl_Add_for_Length.
  Definition Self := Length.
  
  #[global] Instance I : Add.Class Self := {|
    Output := Length;
    add
      (self : Length<Unit>)
      (rhs : Length)
      : Length :=
      Length (add self.0 rhs.0) PhantomData;
  |}.
Module ImplLength.

Definition main (_ : unit) :=
  let one_foot := Length 12 (* 12.0 *) PhantomData in
  let one_meter := Length 1000 (* 1000.0 *) PhantomData in
  let two_feet := add one_foot one_foot in
  let two_meters := add one_meter one_meter in
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["one foot + one_foot = ";" in\n"]
      [_crate::fmt::ImplArgumentV1.new_debug two_feet.0]) ;;
  tt ;;
  _crate.io._print
    (_crate::fmt::ImplArguments.new_v1
      ["one meter + one_meter = ";" mm\n"]
      [_crate::fmt::ImplArgumentV1.new_debug two_meters.0]) ;;
  tt ;;
  tt.
