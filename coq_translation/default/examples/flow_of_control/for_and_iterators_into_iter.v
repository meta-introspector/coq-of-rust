(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H : State.Trait} : M (H := H) unit :=
  let* names :=
    let* α0 := alloc.boxed.Box::["new"] [ "Bob"; "Frank"; "Ferris" ] in
    Slice::["into_vec"] α0 in
  let* α0 := names.["into_iter"] in
  let* α1 := α0.["into_iter"] in
  match α1 with
  | iter =>
    loop
      (let* _ :=
        let* α0 := (addr_of iter).["next"] in
        match α0 with
        | core.option.Option.None  => Break
        | core.option.Option.Some name =>
          match name with
          | "Ferris" =>
            let* _ :=
              let* α0 :=
                format_arguments::["new_const"]
                  (addr_of [ "There is a rustacean among us!
" ]) in
              std.io.stdio._print α0 in
            Pure tt
          | _ =>
            let* _ :=
              let* α0 := format_argument::["new_display"] (addr_of name) in
              let* α1 :=
                format_arguments::["new_v1"]
                  (addr_of [ "Hello "; "
" ])
                  (addr_of [ α0 ]) in
              std.io.stdio._print α1 in
            Pure tt
          end
        end in
      Pure tt)
  end.
