(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition main :=
  ltac:(function (
    let optional := Some 0 in
    loop
      match optional with
      | Some i =>
        if (i.["gt"](| 9 |) : bool) then
          let '_ :=
            let '_ :=
              _crate.io._print(|
                format_arguments::["new_const"](| [ "Greater than 9, quit!
" ]
                |)
              |) in
            tt in
          let '_ := assign optional None in
          tt
        else
          let '_ :=
            let '_ :=
              _crate.io._print(|
                format_arguments::["new_v1"](|
                  [ "`i` is `"; "`. Try again.
" ],
                  [ format_argument::["new_debug"](| i |) ]
                |)
              |) in
            tt in
          let '_ := assign optional (Some (i.["add"](| 1 |))) in
          tt
      | _ =>
        let '_ := Break in
        tt
      end
      from
      loop
    : unit)).
