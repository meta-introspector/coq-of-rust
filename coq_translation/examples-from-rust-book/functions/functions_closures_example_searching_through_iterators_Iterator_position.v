(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition main :=
  let return_type := unit in
  ltac:(function (
    let vec :=
      Slice::["into_vec"](| _crate.boxed.Box::["new"](| [ 1; 9; 3; 3; 13; 2 ] |)
      |) in
    let index_of_first_even_number :=
      vec.["iter"](||).["position"](| fun x => x.["rem"](| 2 |).["eq"](| 0 |)
      |) in
    let _ : unit :=
      match (index_of_first_even_number, Some 5) with
      | (left_val, right_val) =>
        if
          (left_val.["deref"](||).["eq"](| right_val.["deref"](||)
          |).["not"](||)
          : bool)
        then
          let kind := _crate.panicking.AssertKind.Eq in
          let _ : unit :=
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
    let index_of_first_negative_number :=
      vec.["into_iter"](||).["position"](| fun x => x.["lt"](| 0 |) |) in
    let _ : unit :=
      match (index_of_first_negative_number, None) with
      | (left_val, right_val) =>
        if
          (left_val.["deref"](||).["eq"](| right_val.["deref"](||)
          |).["not"](||)
          : bool)
        then
          let kind := _crate.panicking.AssertKind.Eq in
          let _ : unit :=
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
