(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module slice := std.slice.

Definition main (_ : unit) : unit :=
  let some_vector := ComplexTypePath.into_vec [ 1; 2; 3; 4 ] in
  let pointer := method "as_ptr" some_vector in
  let length := method "len" some_vector in
  let my_slice := slice.from_raw_parts pointer length in
  match (method "as_slice" some_vector, my_slice) with
  | (left_val, right_val) =>
    if (not (eqb (deref left_val) (deref right_val)) : bool) then
      let kind := _crate.panicking.AssertKind.Eq in
      _crate.panicking.assert_failed
        kind
        (deref left_val)
        (deref right_val)
        _crate.option.Option.None ;;
      tt
    else
      tt
  end ;;
  tt.
