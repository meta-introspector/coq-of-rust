(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H : State.Trait} (_ : unit) : M (H := H) unit :=
  let optional := core.option.Option.Some 0 in
  loop
    (let* α0 := let_if core.option.Option.Some i := optional in
    if (α0 : bool) then
      let* α0 := i.["gt"] 9 in
      if (α0 : bool) then
        let* _ :=
          let* _ :=
            let* α0 :=
              format_arguments::["new_const"]
                (addr_of [ "Greater than 9, quit!
" ]) in
            std.io.stdio._print α0 in
          Pure tt in
        let* _ := assign optional core.option.Option.None in
        Pure tt
      else
        let* _ :=
          let* _ :=
            let* α0 := format_argument::["new_debug"] (addr_of i) in
            let* α1 :=
              format_arguments::["new_v1"]
                (addr_of [ "`i` is `"; "`. Try again.
" ])
                (addr_of [ α0 ]) in
            std.io.stdio._print α1 in
          Pure tt in
        let* _ :=
          let* α0 := i.["add"] 1 in
          assign optional (core.option.Option.Some α0) in
        Pure tt
    else
      let* _ := Break in
      Pure tt).
