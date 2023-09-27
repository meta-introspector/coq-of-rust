(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H' : State.Trait} : M (H := H') unit :=
  let* names :=
    let* α0 :=
      (alloc.boxed.Box _ alloc.boxed.Box.Default.A)::["new"]
        [ "Bob"; "Frank"; "Ferris" ] in
    (Slice _)::["into_vec"] α0 in
  let* _ :=
    let* α0 := names.["iter_mut"] in
    let* α1 := α0.["into_iter"] in
    match α1 with
    | iter =>
      loop
        (let* _ :=
          let* α0 := (addr_of iter).["next"] in
          match α0 with
          | core.option.Option.None  => Break
          | core.option.Option.Some name =>
            let* α0 := name.["deref"] in
            let* α1 :=
              match name with
              | "Ferris" => Pure "There is a rustacean among us!"
              | _ => Pure "Hello"
              end in
            assign α0 α1
          end in
        Pure tt)
    end in
  let* _ :=
    let* _ :=
      let* α0 := format_argument::["new_debug"] (addr_of names) in
      let* α1 :=
        format_arguments::["new_v1"]
          (addr_of [ "names: "; "
" ])
          (addr_of [ α0 ]) in
      std.io.stdio._print α1 in
    Pure tt in
  Pure tt.
