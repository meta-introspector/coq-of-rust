(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition main (_ : unit) : unit :=
  let counter := 0 in
  let result :=
    loop
      counter.["add_assign"] 1 ;;
      if (counter.["eq"] 10 : bool) then
        Break ;;
        tt
      else
        tt
      from
      loop in
  match (result, 20) with
  | (left_val, right_val) =>
    if (not ((deref left_val).["eq"] (deref right_val)) : bool) then
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

Definition main (_ : unit) : unit := test.
