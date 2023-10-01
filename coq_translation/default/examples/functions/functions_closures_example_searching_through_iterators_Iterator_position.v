(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H' : State.Trait} : M (H := H') unit :=
  let* vec :=
    let* α0 :=
      (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"]
        [ 1; 9; 3; 3; 13; 2 ] in
    (Slice _)::["into_vec"] α0 in
  let* index_of_first_even_number :=
    let* α0 := vec.["iter"] in
    α0.["position"]
      (fun x =>
        let* α0 := x.["rem"] 2 in
        α0.["eq"] 0) in
  let* _ :=
    match
      (addr_of index_of_first_even_number, addr_of (core.option.Option.Some 5))
    with
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
  let* index_of_first_negative_number :=
    let* α0 := vec.["into_iter"] in
    α0.["position"] (fun x => x.["lt"] 0) in
  let* _ :=
    match
      (addr_of index_of_first_negative_number, addr_of core.option.Option.None)
    with
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
