(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H : State.Trait} (_ : unit) : M (H := H) unit :=
  let* some_vector :=
    let* α0 := alloc.boxed.Box::["new"] [ 1; 2; 3; 4 ] in
    Slice::["into_vec"] α0 in
  let* pointer := some_vector.["as_ptr"] in
  let* length := some_vector.["len"] in
  let* my_slice := core.slice.raw.from_raw_parts pointer length in
  let* _ :=
    let* α0 := some_vector.["as_slice"] in
    match (addr_of α0, addr_of my_slice) with
    | (left_val, right_val) =>
      let* α0 := left_val.["deref"] in
      let* α1 := right_val.["deref"] in
      let* α2 := α0.["eq"] α1 in
      let* α3 := α2.["not"] in
      if (α3 : bool) then
        let kind := core.panicking.AssertKind.Eq in
        let* _ :=
          let* α0 := left_val.["deref"] in
          let* α1 := right_val.["deref"] in
          core.panicking.assert_failed
            kind
            (addr_of α0)
            (addr_of α1)
            core.option.Option.None in
        Pure tt
      else
        Pure tt
    end in
  Pure tt.
