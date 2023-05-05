(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition add (a : i32) (b : i32) :=
  let return_type := i32 in
  ltac:(function (
    a.["add"](| b |)
  : return_type)).

Definition bad_add (a : i32) (b : i32) :=
  let return_type := i32 in
  ltac:(function (
    a.["sub"](| b |)
  : return_type)).

Module tests.
  Import super.
  
  Definition test_add :=
    let return_type := unit in
    ltac:(function (
      let '_ :=
        match (add(| 1, 2 |), 3) with
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
  
  Definition test_bad_add :=
    let return_type := unit in
    ltac:(function (
      let '_ :=
        match (bad_add(| 1, 2 |), 3) with
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
End tests.

Import super.

Definition test_add :=
  let return_type := unit in
  ltac:(function (
    let '_ :=
      match (add(| 1, 2 |), 3) with
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

Definition test_bad_add :=
  let return_type := unit in
  ltac:(function (
    let '_ :=
      match (bad_add(| 1, 2 |), 3) with
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
