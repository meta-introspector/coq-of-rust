(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition main :=
  let return_type := unit in
  ltac:(function (
    let x := 3 in
    let '_ :=
      let '_ := InlineAsm in
      tt in
    let '_ :=
      match (x, 8) with
      | (left_val, right_val) =>
        if
          (left_val.["deref"](||).["eq"](| right_val.["deref"](||)
          |).["not"](||)
          : bool)
        then
          let kind := _crate.panicking.AssertKind.Eq in
          let '_ :=
            _crate.panicking.assert_failed(|
              kind,
              left_val.["deref"](||),
              right_val.["deref"](||),
              _crate.option.Option.None
            |) in
          tt
        else
          tt
      end in
    tt
  : return_type)).

Module asm := std.arch.asm.
