(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition main :=
  ltac:(function (
    let a := 0 in
    let '_ :=
      let '_ := InlineAsm in
      tt in
    let '_ :=
      match (a, 5) with
      | (left_val, right_val) =>
        if
          (((left_val.["deref"](||)).["eq"](| right_val.["deref"](||)
          |)).["not"](||)
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
    : unit)).

Module asm := std.arch.asm.
