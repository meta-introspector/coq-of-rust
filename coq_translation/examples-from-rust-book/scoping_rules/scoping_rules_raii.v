(* Generated by coq-of-rust *)
Require Import CoqOfRust.CoqOfRust.

Import Root.std.prelude.rust_2015.

Definition create_box :=
  let return_type := unit in
  ltac:(function (
    let _box1 := Box::["new"](| 3 |) in
    tt
  : return_type)).

Definition main :=
  let return_type := unit in
  ltac:(function (
    let _box2 := Box::["new"](| 5 |) in
    let '_ :=
      let _box3 := Box::["new"](| 4 |) in
      tt in
    match LangItem(| Range {| Range.start := 0; Range.end := 1000; |} |) with
    | iter =>
      loop
        let '_ :=
          match LangItem(| iter |) with
          | None => M.Break
          | Some {| Some.0 := _; |} =>
            let '_ := create_box(||) in
            tt
          end in
        tt
        from
        for
    end
  : return_type)).
