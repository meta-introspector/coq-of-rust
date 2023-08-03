(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

(* #[allow(dead_code)] - function was ignored by the compiler *)
Definition main `{H : State.Trait} : M (H := H) unit :=
  let number := core.option.Option.Some 7 in
  let letter : core.option.Option i32 := core.option.Option.None in
  let emoticon : core.option.Option i32 := core.option.Option.None in
  let* _ :=
    match number with
    | core.option.Option.Some i =>
      let* _ :=
        let* _ :=
          let* α0 := format_argument::["new_debug"] (addr_of i) in
          let* α1 :=
            format_arguments::["new_v1"]
              (addr_of [ "Matched "; "!
" ])
              (addr_of [ α0 ]) in
          std.io.stdio._print α1 in
        Pure tt in
      Pure tt
    | _ => Pure tt
    end in
  let* _ :=
    match letter with
    | core.option.Option.Some i =>
      let* _ :=
        let* _ :=
          let* α0 := format_argument::["new_debug"] (addr_of i) in
          let* α1 :=
            format_arguments::["new_v1"]
              (addr_of [ "Matched "; "!
" ])
              (addr_of [ α0 ]) in
          std.io.stdio._print α1 in
        Pure tt in
      Pure tt
    | _ =>
      let* _ :=
        let* _ :=
          let* α0 :=
            format_arguments::["new_const"]
              (addr_of [ "Didn't match a number. Let's go with a letter!
" ]) in
          std.io.stdio._print α0 in
        Pure tt in
      Pure tt
    end in
  let i_like_letters := false in
  match emoticon with
  | core.option.Option.Some i =>
    let* _ :=
      let* _ :=
        let* α0 := format_argument::["new_debug"] (addr_of i) in
        let* α1 :=
          format_arguments::["new_v1"]
            (addr_of [ "Matched "; "!
" ])
            (addr_of [ α0 ]) in
        std.io.stdio._print α1 in
      Pure tt in
    Pure tt
  | _ =>
    if (i_like_letters : bool) then
      let* _ :=
        let* _ :=
          let* α0 :=
            format_arguments::["new_const"]
              (addr_of [ "Didn't match a number. Let's go with a letter!
" ]) in
          std.io.stdio._print α0 in
        Pure tt in
      Pure tt
    else
      let* _ :=
        let* _ :=
          let* α0 :=
            format_arguments::["new_const"]
              (addr_of
                [ "I don't like letters. Let's go with an emoticon :)!
" ]) in
          std.io.stdio._print α0 in
        Pure tt in
      Pure tt
  end.
