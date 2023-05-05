(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Module ParseIntError := std.num.ParseIntError.
Definition ParseIntError := ParseIntError.t.

Definition double_first (vec : Vec (ref str)) :=
  ltac:(function (
    let opt :=
      (vec.["first"](||)).["map"](|
        fun first =>
          (first.["parse"](||)).["map"](| fun n => 2.["mul"](| n |) |)
      |) in
    opt.["map_or"](| Ok None, fun r => r.["map"](| Some |) |)
    : Result (Option i32) ParseIntError)).

Definition main :=
  ltac:(function (
    let numbers :=
      Slice::["into_vec"](| _crate.boxed.Box::["new"](| [ "42"; "93"; "18" ] |)
      |) in
    let empty := _crate.vec.Vec::["new"](||) in
    let strings :=
      Slice::["into_vec"](|
        _crate.boxed.Box::["new"](| [ "tofu"; "93"; "18" ] |)
      |) in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "The first doubled is "; "
" ],
            [ format_argument::["new_debug"](| double_first(| numbers |) |) ]
          |)
        |) in
      tt in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "The first doubled is "; "
" ],
            [ format_argument::["new_debug"](| double_first(| empty |) |) ]
          |)
        |) in
      tt in
    let '_ :=
      let '_ :=
        _crate.io._print(|
          format_arguments::["new_v1"](|
            [ "The first doubled is "; "
" ],
            [ format_argument::["new_debug"](| double_first(| strings |) |) ]
          |)
        |) in
      tt in
    tt
    : unit)).
