(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let counter := 0 in
  let* result :=
    loop
      let* _ := counter.["add_assign"] 1 in
      let* α0 := counter.["eq"] 10 in
      if (α0 : bool) then
        let _ := Break in
        Pure tt
      else
        Pure tt
      from
      loop in
  let* _ :=
    match (deref result, deref 20) with
    | (left_val, right_val) =>
      let* α0 := left_val.["deref"] in
      let* α1 := right_val.["deref"] in
      let* α2 := α0.["eq"] α1 in
      let* α3 := α2.["not"] in
      if (α3 : bool) then
        let kind := _crate.panicking.AssertKind.Eq in
        let* α0 := left_val.["deref"] in
        let* α1 := right_val.["deref"] in
        let* _ :=
          _crate.panicking.assert_failed
            kind
            (deref α0)
            (deref α1)
            _crate.option.Option.None in
        Pure tt
      else
        Pure tt
    end in
  Pure tt.
