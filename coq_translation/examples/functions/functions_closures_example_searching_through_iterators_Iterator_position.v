(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main (_ : unit) : M unit :=
  let* α0 := _crate.boxed.Box::["new"] [ 1; 9; 3; 3; 13; 2 ] in
  let* vec := Slice::["into_vec"] α0 in
  let* α1 := vec.["iter"] in
  let* index_of_first_even_number :=
    α1.["position"]
      (fun x =>
        let* α0 := x.["rem"] 2 in
        α0.["eq"] 0) in
  let* α2 := Some 5 in
  let* _ :=
    match (deref index_of_first_even_number, deref α2) with
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
  let* α3 := vec.["into_iter"] in
  let* index_of_first_negative_number :=
    α3.["position"] (fun x => x.["lt"] 0) in
  let* _ :=
    match (deref index_of_first_negative_number, deref None) with
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
