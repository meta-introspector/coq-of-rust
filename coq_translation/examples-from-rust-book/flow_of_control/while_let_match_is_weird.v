(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition main (_ : unit) : unit :=
  let optional := Some 0 in
  loop
    match optional with
    | 'Some.Build_t i =>
      if (i.["gt"] 9 : bool) then
        _crate.io._print
          (_crate.fmt.Arguments::["new_v1"]
            [ "Greater than 9, quit!\n" ]
            [  ]) ;;
        tt ;;
        assign optional None ;;
        tt
      else
        _crate.io._print
          (_crate.fmt.Arguments::["new_v1"]
            [ "`i` is `"; "`. Try again.\n" ]
            [ _crate.fmt.ArgumentV1::["new_debug"] i ]) ;;
        tt ;;
        assign optional (Some (i.["add"] 1)) ;;
        tt
    | _ =>
      Break ;;
      tt
    end
    from
    loop.
